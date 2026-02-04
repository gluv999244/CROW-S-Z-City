SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Panzershrek"
SWEP.Author = "немцы"
SWEP.Instructions = "МАРТИН ВЗОРВИ ЭТИ ЧЁРТОВЫ ТАНКИ"
SWEP.Category = "Weapons - Grenade Launchers"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/panzerschrek/w_wrb_panzerschrek.mdl"
SWEP.WorldModelFake = "models/weapons/panzerschrek/c_wrb_panzerschrek.mdl" -- МОДЕЛЬ ГОВНА, НАЙТИ НОРМАЛЬНЫЙ КАЛАШ
--PrintBones(Entity(1):GetActiveWeapon():GetWM())
--uncomment for funny
SWEP.FakePos = Vector(-11, -3, 5.3)
SWEP.FakeAng = Angle(-1, 0.3, 5.5)
SWEP.AttachmentPos = Vector(3.8,2.1,-27.8)
SWEP.AttachmentAng = Angle(0,0,0)
SWEP.FakeAttachment = "1"
SWEP.FakeBodyGroups = "00900080302"
SWEP.ZoomPos = Vector(0, 1.200, 3.6866)

SWEP.GunCamPos = Vector(4,-15,-6)
SWEP.GunCamAng = Angle(190,-5,-100)

SWEP.FakeEjectBrassATT = "2"
//SWEP.MagIndex = 57
//MagazineSwap
--Entity(1):GetActiveWeapon():GetWM():AddLayeredSequence(Entity(1):GetActiveWeapon():GetWM():LookupSequence("delta_foregrip"),1)
SWEP.FakeViewBobBone = "CAM_Homefield"
SWEP.FakeReloadSounds = {
	[0.22] = "weapons/universal/uni_crawl_l_03.wav",
	[0.34] = "weapons/panzerschrek/reolads/cloth.wav",
	--[0.38] = "weapons/ak74/ak74_magout_rattle.wav",
	--[0.51] = "weapons/universal/uni_crawl_l_02.wav",
	[0.62] = "weapons/panzerschrek/reolads/in.wav",
	[0.81] = "weapons/universal/uni_crawl_l_03.wav",
	[0.99] = "weapons/universal/uni_crawl_l_04.wav",
	--[0.95] = "weapons/ak74/ak74_boltback.wav"
}

SWEP.FakeEmptyReloadSounds = {
	--[0.22] = "weapons/ak74/ak74_magrelease.wav",
	[0.22] = "weapons/universal/uni_crawl_l_03.wav",
	[0.34] = "weapons/panzerschrek/reolads/cloth.wav",
	--[0.4] = "weapons/ak74/ak74_magout_rattle.wav",
	[0.62] = "weapons/panzerschrek/reolads/in.wav",
	--[0.75] = "weapons/universal/uni_crawl_l_05.wav",
	--[0.95] = "weapons/ak74/ak74_boltback.wav",
	--[0.83] = "weapons/ak74/ak74_boltback.wav",
	--[0.86] = "weapons/ak74/ak74_boltrelease.wav",
	[1.01] = "weapons/universal/uni_crawl_l_04.wav",
}

SWEP.FakeViewBobBone = "ValveBiped.Bip01_R_Hand"
SWEP.FakeViewBobBaseBone = "ValveBiped.Bip01_L_UpperArm"
SWEP.ViewPunchDiv = 70

SWEP.FakeMagDropBone = 57

SWEP.lmagpos = Vector(0,0,1)
SWEP.lmagang = Angle(0,90,-30)
SWEP.lmagpos2 = Vector(0,-2,0.4)
SWEP.lmagang2 = Angle(-90,0,-90)

SWEP.AnimList = {
	["idle"] = "idle",
	["reload"] = "reload_tac",
	["reload_empty"] = "reload_tac",
}

function SWEP:ModelCreated(model)
	if CLIENT and self:GetWM() and not isbool(self:GetWM()) and isstring(self.FakeBodyGroups) then
		self:GetWM():ManipulateBoneScale(57, vector_origin)
		self:GetWM():ManipulateBoneScale(58, vector_origin)
		self:GetWM():SetBodyGroups(self.FakeBodyGroups)
	end
end

SWEP.ReloadHold = nil
SWEP.FakeVPShouldUseHand = false


SWEP.weaponInvCategory = 1
SWEP.CustomEjectAngle = Angle(0, 0, 90)
SWEP.Primary.ClipSize = 1
SWEP.Primary.DefaultClip = 1
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "RPG-7 Projectile"

SWEP.CustomShell = ""
--SWEP.EjectPos = Vector(1,5,3.5)
--SWEP.EjectAng = Angle(0,-90,0)

SWEP.UsePhysBullets = false

SWEP.ScrappersSlot = "Primary"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 1
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 35
SWEP.Primary.Sound = {"weapons/panzerschrek/fire/panzerfaust_fire.wav", 75, 90, 100}
SWEP.Primary.SoundEmpty = {"zcitysnd/sound/weapons/ak74/handling/ak74_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Wait = 1
SWEP.ReloadTime = 5


SWEP.PPSMuzzleEffect = "pcf_jack_mf_mrifle1" -- shared in sh_effects.lua

SWEP.LocalMuzzlePos = Vector(27.985,-0.25,2.295)
SWEP.LocalMuzzleAng = Angle(-0.2,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.HoldType = "rpg"

function SWEP:Shoot(override)
	if not self:CanPrimaryAttack() then return false end
	if not self:CanUse() then return false end
	if self:Clip1() == 0 then return end
	local primary = self.Primary
	if not self.drawBullet then
		self.LastPrimaryDryFire = CurTime()
		self:PrimaryShootEmpty()
		primary.Automatic = false
		return false
	end

	if primary.Next > CurTime() then return false end
	if (primary.NextFire or 0) > CurTime() then return false end
	primary.Next = CurTime() + primary.Wait
	self:SetLastShootTime(CurTime())
	primary.Automatic = weapons.Get(self:GetClass()).Primary.Automatic
	
    local gun = self:GetWeaponEntity()
	local tr, pos, ang = self:GetTrace(true)
	--self:GetOwner():Kick("lol")
	self:TakePrimaryAmmo(1)
	if SERVER then
		local projectile = ents.Create("rpg_projectile")
		projectile.owner = self:GetOwner()
		projectile:SetPos(pos + ang:Right() * -6)
		projectile:SetAngles(ang)
		projectile:SetOwner(self:GetOwner():InVehicle() and self:GetOwner():GetVehicle() or self:GetOwner())
		projectile:Spawn()
		projectile.Penetration = -(-self.Penetration)

		local phys = projectile:GetPhysicsObject()
		if IsValid(phys) then
			phys:SetVelocity(self:GetOwner():GetVelocity() + ang:Forward() * 200)
		end
		for i,ent in pairs(ents.FindInCone(pos, -ang:Forward(), 128, 0.8)) do
			if not ent:IsPlayer() then continue end
			if ent == hg.GetCurrentCharacter( self:GetOwner() ) then return end
			local d = DamageInfo()
			d:SetDamage( 400 )
			d:SetAttacker( self:GetOwner() )
			d:SetDamageType( DMG_BURN ) 

			ent:TakeDamageInfo( d )
		end
	end

	self:EmitShoot()
	self:PrimarySpread()
	self:GetWeaponEntity():SetBodygroup(1,1)
	self:SetBodygroup(1,1)
end

if CLIENT then
	function SWEP:ReloadStart()
		if not self or not IsValid(self:GetOwner()) then return end
		hook.Run("HGReloading", self)
		self:SetHold(self.ReloadHold or self.HoldType)
		self:GetOwner():SetAnimation(PLAYER_RELOAD)
		if self.ReloadSound then self:GetOwner():EmitSound(self.ReloadSound, 60, 100, 0.8, CHAN_AUTO) end
	end

	function SWEP:ReloadEnd()
		self:GetWeaponEntity():SetBodygroup(1,0)
		self:SetBodygroup(1,0)

		self:InsertAmmo(1)
		self.ReloadNext = CurTime() + self.ReloadCooldown
		self:Draw()
	end

	function SWEP:Unload()
		if SERVER then return end
		
		self:GetWeaponEntity():SetBodygroup(1,1)
		self:SetBodygroup(1,1)
	end

	function SWEP:ModelCreated(model)
		self:GetWeaponEntity():SetBodygroup(1,self:Clip1() == 1 and 0 or 1)
		self:SetBodygroup(1,self:Clip1() == 1 and 0 or 1)
	end

	function SWEP:OwnerChanged()
		self:GetWeaponEntity():SetBodygroup(1,self:Clip1() == 1 and 0 or 1)
		self:SetBodygroup(1,self:Clip1() == 1 and 0 or 1)
	end
end

SWEP.RHandPos = Vector(-12, -1, 4)
SWEP.LHandPos = Vector(7, -2, -2)
SWEP.Penetration = 11
SWEP.Spray = {}
for i = 1, 30 do
	SWEP.Spray[i] = Angle(-0.01 - math.cos(i) * 0.02, math.cos(i * i) * 0.02, 0) * 0.5
end

SWEP.WepSelectIcon2 = Material("vgui/entities/tfa_cod2_panzerschrek")
SWEP.WepSelectIcon2box = true
SWEP.IconOverride = "vgui/entities/tfa_cod2_panzerschrek"

SWEP.Ergonomics = 1
SWEP.WorldPos = Vector(5, -0.8, -1.1)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0.25, -2.1, 28)
SWEP.attAng = Angle(0, 0.4, 0)
SWEP.lengthSub = 25
SWEP.handsAng = Angle(1, -1.5, 0)
SWEP.DistSound = "ak74/ak74_dist.wav"

SWEP.weight = 3

--local to head
SWEP.RHPos = Vector(3,-6,3.5)
SWEP.RHAng = Angle(0,-12,90)
--local to rh
SWEP.LHPos = Vector(15,1,-3.3)
SWEP.LHAng = Angle(-110,-180,0)

local finger1 = Angle(25,0, 40)

SWEP.ShootAnimMul = 3
function SWEP:DrawPost()
	local wep = self:GetWeaponEntity()
	self.vec = self.vec or Vector(0,0,0)
	local vec = self.vec
	if CLIENT and IsValid(wep) then
		self.shooanim = LerpFT(0.4,self.shooanim or 0,self.ReloadSlideOffset)
		vec[1] = 0
		vec[2] = 1*self.shooanim
		vec[3] = 0
		wep:ManipulateBonePosition(7,vec,false)
		--self:GetWM():SetBodyGroups(self.FakeBodyGroups)
	end
end

local lfang2 = Angle(0, -15, -1)
local lfang1 = Angle(-5, -5, -5)
local lfang0 = Angle(-12, -16, 20)
local vec_zero = Vector(0,0,0)
local ang_zero = Angle(0,0,0)
function SWEP:AnimHoldPost()

end
-- RELOAD ANIM AKM
SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(-1.5,1.5,-8),
	Vector(-1.5,1.5,-8),
	Vector(-1.5,1.5,-8),
	Vector(-1,7,-3),
	Vector(-7,15,-15),
	Vector(-7,15,-15),
	Vector(-1,7,-3),
	Vector(-1.5,1.5,-8),
	Vector(-1.5,1.5,-8),
	Vector(-1.5,1.5,-8),
	"fastreload",
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
}

SWEP.ReloadAnimRH = {
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,2),
	Vector(8,1,2),
	Vector(8,2.5,-2),
	Vector(7,2.5,-2),
	Vector(6,2.5,-2),
	Vector(3,2.5,-2),
	Vector(3,2.5,-1),
	Vector(0,4,-1),
	"reloadend",
	Vector(0,5,0),
	Vector(-2,2,1),
	Vector(0,0,0),
}

SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-80,0,110),
	Angle(-20,0,110),
	Angle(-30,0,110),
	Angle(-20,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-20,0,45),
	Angle(-2,0,-3),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
}

SWEP.ReloadAnimRHAng = {
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(20,-10,-20),
	Angle(20,0,-20),
	Angle(20,0,-20),
	Angle(0,0,0),
}

SWEP.ReloadSlideAnim = {
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	0,
	3,
	3,
	0,
	0,
	0,
	0
}

SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(-15,15,-17),
	Angle(-14,14,-22),
	Angle(-10,15,-24),
	Angle(12,14,-23),
	Angle(11,15,-20),
	Angle(12,14,-19),
	Angle(11,14,-20),
	Angle(7,17,-22),
	Angle(0,14,-21),
	Angle(0,15,-22),
	Angle(0,24,-23),
	Angle(0,25,-22),
	Angle(-15,24,-25),
	Angle(-15,25,-23),
	Angle(5,0,2),
	Angle(0,0,0),
}

-- Inspect Assault

SWEP.InspectAnimLH = {
	Vector(0,0,0)
}
SWEP.InspectAnimLHAng = {
	Angle(0,0,0)
}
SWEP.InspectAnimRH = {
	Vector(0,0,0)
}
SWEP.InspectAnimRHAng = {
	Angle(0,0,0)
}
SWEP.InspectAnimWepAng = {
	Angle(0,0,0),
	Angle(15,15,15),
	Angle(15,15,24),
	Angle(15,15,24),
	Angle(15,15,24),
	Angle(15,7,24),
	Angle(10,3,-5),
	Angle(2,3,-15),
	Angle(0,4,-22),
	Angle(0,3,-45),
	Angle(0,3,-45),
	Angle(0,-2,-2),
	Angle(0,0,0)
}