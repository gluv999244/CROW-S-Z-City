SWEP.Base = "weapon_m4super"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Intervention"
SWEP.Instructions = "360 НОУСКОП"
SWEP.Category = "Weapons - Sniper Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_iw4_intervention.mdl"

SWEP.WepSelectIcon2 = Material("vgui/hud/iw4_cheytac")
SWEP.IconOverride = "vgui/hud/iw4_cheytac"

SWEP.CustomShell = ".338Lapua"
SWEP.EjectPos = Vector(0,2,4)
SWEP.EjectAng = Angle(-70,-85,0)
SWEP.punchmul = 2
SWEP.punchspeed = 0.5
SWEP.weight = 6

SWEP.ShockMultiplier = 1

SWEP.ScrappersSlot = "Primary"
SWEP.AutomaticDraw = false

SWEP.weaponInvCategory = 1
SWEP.ShellEject = "RifleShellEject"
SWEP.NumBullet = 8
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".408 Cheyenne Tactical"
SWEP.Primary.Cone = 0
SWEP.Penetration = 40
SWEP.Primary.Damage = 190
SWEP.Primary.Sound = {"weapons/iw4/cheytac/fire.wav", 75, 90, 100}
SWEP.SupressedSound = {"weapons/iw4/common/silencer/sniper.wav", 70, 110, 100}
SWEP.Primary.SoundEmpty = {"zcitysnd/sound/weapons/makarov/handling/makarov_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Force = 70
SWEP.Primary.Wait = 0.35
SWEP.ReloadTime = 6
SWEP.CockSound = "pwb/weapons/cz75/slideback.wav"
SWEP.ReloadSoundes = {
	"none",
	"weapons/iw4/cheytac/out.wav",
	"weapons/iw4/cheytac/in.wav",
	"weapons/iw4/cheytac/close.wav",
	"none",
	"none"
}

SWEP.FakeReloadSounds = {
	[0.35] = "zcitysnd/sound/weapons/m9/handling/m9_magout.wav",
	--[0.34] = "weapons/ak74/ak74_magout_rattle.wav",
	[0.70] = "zcitysnd/sound/weapons/m9/handling/m9_magin.wav",
	[0.9] = "zcitysnd/sound/weapons/m9/handling/m9_maghit.wav",
	--[0.95] = "weapons/ak74/ak74_boltback.wav"
}


SWEP.FakeEmptyReloadSounds = {
	[0.35] = "zcitysnd/sound/weapons/m9/handling/m9_magout.wav",
	--[0.34] = "weapons/ak74/ak74_magout_rattle.wav",
	[0.70] = "zcitysnd/sound/weapons/m9/handling/m9_magin.wav",
	[0.9] = "zcitysnd/sound/weapons/m9/handling/m9_maghit.wav",
	[1.05] = "zcitysnd/sound/weapons/m9/handling/m9_boltrelease.wav",
}


SWEP.lmagpos = Vector(0,0,0)
SWEP.lmagang = Angle(0,0,0)
SWEP.lmagpos2 = Vector(0,-1,0)
SWEP.lmagang2 = Angle(0,0,0)

SWEP.DeploySnd = {"homigrad/weapons/draw_pistol.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/holster_pistol.mp3", 55, 100, 110}
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-26, -0.0054, 5)
SWEP.SprayRand = {Angle(-0.03, -0.03, 0), Angle(-0.05, 0.03, 0)}
SWEP.Ergonomics = 0.7
SWEP.Penetration = 45
SWEP.WorldPos = Vector(-1, -1.2, -0.8)
SWEP.WorldAng = Angle(0, 0, 0)

SWEP.LocalMuzzlePos = Vector(45,0,3.2)
SWEP.LocalMuzzleAng = Angle(0,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)
SWEP.OpenBolt = true
SWEP.DontOnReloadSnd = true

SWEP.handsAng = Angle(-1, 10, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(-0.125, -0.1, 0)
SWEP.lengthSub = 5
SWEP.DistSound = "m9/m9_dist.wav"
SWEP.availableAttachments = {
	sight = {
		["empty"] = {
			"empty",
			{
				[1] = "null",
				[2] = "null"
			}
		},
		["mountType"] = "picatinny",
		["mount"] = Vector(-37, -1.6, 3),
		["mountAngle"] = Angle(0,0,90),
		["removehuy"] = {
			[1] = "null",
			[2] = "null"
		}
	},
		barrel = {
		[1] = {"supressor1", Vector(0,0.6,0.1), {}},
		[2] = {"supressor8", Vector(0,0,0), {}},
		["mount"] = Vector(-1.6,0.1,-0.2),
	},
		underbarrel = {
		["mount"] = {["picatinny_small"] = Vector(3, -0.03, -1.5),["picatinny"] = Vector(5,0,0)},
		["mountAngle"] = {["picatinny_small"] = Angle(-1, -0.3, -180),["picatinny"] = Angle(0, 0, 0)},
		["mountType"] = {"picatinny_small","picatinny"},
		["removehuy"] = {
		["picatinny"] = {
			},
			["picatinny_small"] = {
			}
		}
	}
}




SWEP.RHandPos = Vector(-12, -2, 4)
SWEP.LHandPos = Vector(15, -6, -2)

--local to head
SWEP.RHPos = Vector(4,-7,4)
SWEP.RHAng = Angle(0,-5,90)
--local to rh
SWEP.LHPos = Vector (17,-2,-2.8)
SWEP.LHAng = Angle(-90,-90,-90)

local lfang2 = Angle(0, -15, -1)
local lfang1 = Angle(-5, -5, -5)
local lfang0 = Angle(-12, -16, 20)

local weapons_Get = weapons.Get
function SWEP:Shoot(override)
	--self:GetWeaponEntity():ResetSequenceInfo()
	--self:GetWeaponEntity():SetSequence(1)
	if self:GetOwner():IsNPC() then self.drawBullet = true end
	if not self:CanPrimaryAttack() then return false end
	if not self:CanUse() then return false end
	if CLIENT and self:GetOwner() != LocalPlayer() and not override then return false end
	local primary = self.Primary
	if override then self.drawBullet = override end

	if not self.drawBullet or (self:Clip1() == 0 and not override) then
		self.LastPrimaryDryFire = CurTime()
		self:PrimaryShootEmpty()
		primary.Automatic = false
		return false
	end

	if not self:GetOwner():IsNPC() and primary.Next > CurTime() then return false end
	if not self:GetOwner():IsNPC() and (primary.NextFire or 0) > CurTime() then return false end

	primary.Next = CurTime() + primary.Wait
	primary.RealAutomatic = primary.RealAutomatic or weapons_Get(self:GetClass()).Primary.Automatic
	primary.Automatic = primary.RealAutomatic
	self:PrimaryShoot()
	self:PrimaryShootPost()
end


local vector_zero = Vector(0,0,0)
SWEP.ShootAnimMul = 4

local mat = "models/weapons/arccw/ur_m1911/m45_glow"
local mat2 = "models/weapons/tfa_ins2/nova/weapon_m590a1_dm" -- я незнаю как но это выглядит круто
function SWEP:ModelCreated(model)
	local wep = self:GetWeaponEntity()
        model:SetBodygroup(0, 1)
        model:SetBodygroup(1, 1)
        wep:SetBodygroup(0, 1)
        wep:SetBodygroup(1, 1)
end

local vector_one = Vector(1,1,1)

function SWEP:AnimationPost()
	local animpos = math.Clamp(self:GetAnimPos_Draw(CurTime()),0,1)
	self.sin = 1 - animpos
	if self.sin >= 0.5 then
		self.sin = 1 - self.sin
	else
		self.sin = self.sin * 1
	end
	if self.sin > 0 then
		self.sin = self.sin * 2
		self.sin = math.ease.InOutSine(self.sin)

		local lohsin = math.floor(self.sin * (#anims))
		local lerp = self.sin * (#anims) - lohsin
		self.RHPosOffset = Lerp(lerp,anims[math.Clamp(lohsin,1,#anims)],anims[math.Clamp(lohsin+1,1,#anims)])
		self.inanim = true
	else
		self.inanim = nil
		self.RHPosOffset[1] = 0
		self.RHPosOffset[2] = 0
		self.RHPosOffset[3] = 0
	end

	local wep = self:GetWeaponEntity()
	if CLIENT and IsValid(wep) then
		wep:ManipulateBonePosition(3, Vector(0, 0, -3 * self.sin), false)
		wep:ManipulateBonePosition(8, Vector(0, 0, -3 * self.sin), false)
	end
end

local anims = {
	Vector(1,0,0),
	Vector(2,1,-2),
	Vector(6,1,-2),
	Vector(8,1,-2),
	Vector(8,1,-2),
	Vector(6,1,-2),
	Vector(2,1,-2),
	Vector(1,1,-2),
}

function SWEP:ReloadEnd()
	self:InsertAmmo(self:GetMaxClip1() - self:Clip1() + (self.drawBullet ~= nil and not self.OpenBolt and 1 or 0))
	self.ReloadNext = CurTime() + self.ReloadCooldown --я хуй знает чо это
	self:Draw()
end

-- RELOAD ANIM SR25/AR15
SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(-2,1,-8),
	Vector(-2,2,-9),
	Vector(-2,2,-9),
	Vector(-2,7,-10),
	Vector(-15,5,-25),
	Vector(-15,15,-25),
	Vector(-5,15,-25),
	Vector(-2,4,-10),
	Vector(-2,2,-10),
	Vector(-2,2,-10),
	Vector(0,0,0),
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
	"fastreload",
	Vector(-3,1,-3),
	Vector(-3,2,-3),
	Vector(-3,3,-3),
	Vector(-9,3,-3),
	Vector(-9,3,-3),
	Vector(0,3,-3),
	"reloadend",
	Vector(0,0,0),
	Vector(0,0,0),
}

SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(-60,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(0,0,95),
	Angle(0,0,60),
	Angle(0,0,30),
	Angle(0,0,2),
	Angle(0,0,0),
}

SWEP.ReloadAnimRHAng = {
	Angle(0,0,0),
}

SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(-15,25,-15),
	Angle(-15,25,-25),
	Angle(5,28,-25),
	Angle(5,25,-25),
	Angle(1,24,-22),
	Angle(2,25,-21),
	Angle(-5,24,-22),
	Angle(1,25,-21),
	Angle(0,24,-22),
	Angle(1,25,-32),
	Angle(-5,24,-25),
	Angle(0,25,-26),
	Angle(0,0,2),
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
	4,
	4,
	4,
	0,
	0,
	0,
	0
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
	Angle(-15,25,5),
	Angle(-15,25,24),
	Angle(-15,24,26),
	Angle(-16,26,25),
	Angle(-15,24,26),
	Angle(-10,25,-15),
	Angle(-2,22,-15),
	Angle(0,25,-22),
	Angle(0,24,-45),
	Angle(0,22,-45),
	Angle(0,20,-35),
	Angle(0,0,0)
}