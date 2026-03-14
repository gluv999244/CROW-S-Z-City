if SERVER then AddCSLuaFile() end
SWEP.Base = "weapon_tpik_base"
SWEP.PrintName = "Beer"
SWEP.Instructions = "Hold LMB to drink."
SWEP.Category = "ZCity Anims items"
SWEP.Spawnable = true
SWEP.AdminOnly = false

SWEP.Primary.ClipSize = -1
SWEP.Primary.DefaultClip = -1
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "none"

SWEP.Secondary.ClipSize = -1
SWEP.Secondary.DefaultClip = -1
SWEP.Secondary.Automatic = false
SWEP.Secondary.Ammo = "none"

SWEP.HoldType = "normal"
SWEP.ViewModel = ""
SWEP.WorldModel = "models/props_junk/glassbottle01a.mdl"
SWEP.WorldModelReal = "models/weapons/tfa_nmrih/v_me_hatchet.mdl"
SWEP.WorldModelExchange = "models/props_junk/glassbottle01a.mdl"

SWEP.weaponPos = Vector(-0.3, 0.6, 0)
SWEP.weaponAng = Angle(0, 0, -5)
SWEP.basebone = 94
SWEP.modelscale = 0.80
SWEP.modelscale2 = 0.85

if CLIENT then
	SWEP.WepSelectIcon = Material("vgui/icons/ico_botle.png")
	SWEP.IconOverride = "vgui/icons/ico_botle.png"
	SWEP.BounceWeaponIcon = false
end

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Slot = 3
SWEP.SlotPos = 1
SWEP.WorkWithFake = true

SWEP.HoldPos = Vector(-11, 1, 5)
SWEP.HoldAng = Angle(5, 0, -2)
SWEP.BaseHoldPos = Vector(-2, 1, 5)
SWEP.BaseHoldAng = Angle(5, 0, -2)
SWEP.DrinkHoldPos = Vector(-2, -6, -21.5)
SWEP.DrinkHoldAng = Angle(-70, 0, 0)
SWEP.DrinkTime = 0.2
SWEP.DisorientationAdd = 4

function SWEP:SetupDataTables()
	self:NetworkVar("Float", 0, "Holding")
	self:NetworkVar("Float", 1, "DrinkProgress")
end

function SWEP:InitAdd()
	self:SetHold(self.HoldType)
	self:SetDrinkProgress(0)
end

function SWEP:ThinkAdd()
	local owner = self:GetOwner()
	if not IsValid(owner) then return end
	local drinking = owner:KeyDown(IN_ATTACK) and not owner:InVehicle()
	if drinking then
		local add = (100 / self.DrinkTime) * FrameTime()
		self:SetHolding(math.min(self:GetHolding() + add, 100))
		if SERVER then
			local delta = FrameTime() / self.DrinkTime
			self:SetDrinkProgress(math.min(self:GetDrinkProgress() + delta, 1))
			local org = owner.organism
			if org then
				org.disorientation = (org.disorientation or 0) + self.DisorientationAdd * delta
			end
			if (self.nextDrinkSound or 0) <= CurTime() then
				self.nextDrinkSound = CurTime() + 0.8
				owner:EmitSound("snd_jack_hmcd_drink"..math.random(1,3)..".wav", 60, math.random(95, 105))
			end
		end
	else
		local sub = (100 / self.DrinkTime) * FrameTime() * 0.6
		self:SetHolding(math.max(self:GetHolding() - sub, 0))
	end

	local target = self:GetHolding() / 100
	self.drinkLerp = Lerp(FrameTime() * 6, self.drinkLerp or 0, target)
	self.HoldPos = LerpVector(self.drinkLerp, self.BaseHoldPos, self.DrinkHoldPos)
	self.HoldAng = LerpAngle(self.drinkLerp, self.BaseHoldAng, self.DrinkHoldAng)

	if SERVER and (self:GetDrinkProgress() or 0) >= 1 then
		self:DrinkFinish()
	end
end

function SWEP:PrimaryAttack()
	self:SetNextPrimaryFire(CurTime() + 0.1)
end

function SWEP:DrinkFinish()
	local owner = self:GetOwner()
	if not IsValid(owner) then return end
	owner:SelectWeapon("weapon_hands_sh")
	self:Remove()
end
