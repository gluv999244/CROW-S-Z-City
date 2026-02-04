SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "AR18"
SWEP.Author = "Armalite"
SWEP.Instructions = "Automatic rifle chambered in 5.56x45 mm\n\nIN YOUR HEAD IN YOUR HEEAAAAAAD\n\nZOMBIE ZOMBIE ZOMBIE IE IE\n\nWHAT'S IN YOUR HEAD IN YOUR HEAAAD\n\nZOMBIE ZOMBIE ZOMBIE IE IE IE OH"
SWEP.Category = "Weapons - Assault Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_ar18_assassin.mdl"
SWEP.weaponInvCategory = 1
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56x45 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 36
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 36
SWEP.ShockMultiplier = 2.90
SWEP.Primary.Sound = {"zcitysnd/sound/weapons/m16a4/m16a4_fp.wav", 75, 90, 100, 2}
SWEP.DistSound = "zcitysnd/sound/weapons/m16a4/m16a4_dist.wav"
SWEP.Primary.Wait = 0.070

SWEP.CustomShell = "556x45"
SWEP.EjectPos = Vector(2,6,6)
SWEP.EjectAng = Angle(-45,0,0)
SWEP.ScrappersSlot = "Primary"
SWEP.WepSelectIcon2 = Material("vgui/hud/tfa_dmi_ar18_assault")
SWEP.IconOverride = "vgui/hud/tfa_dmi_ar18_assault"

SWEP.LocalMuzzlePos = Vector(30,0.3,5)
SWEP.LocalMuzzleAng = Angle(-0.,-0.3,0)
SWEP.WeaponEyeAngles = Angle(0,0,0.002)

SWEP.weight = 3


SWEP.ReloadTime = 5.5
SWEP.ReloadSoundes = {
	"none",
	"none",
	"none",
	"zcitysnd/sound/weapons/m16a4/handling/m16_magout.wav",
	"none",
	"none",
	"zcitysnd/sound/weapons/m16a4/handling/m16_magin.wav",
	"none",
	"none",
	"zcitysnd/sound/weapons/m16a4/handling/m16_boltback.wav",
	"zcitysnd/sound/weapons/m16a4/handling/m16_boltrelease.wav",
	"none",
	"none",
	"none",
	"none"
}

SWEP.PPSMuzzleEffect = "pcf_jack_mf_mrifle2" -- shared in sh_effects.lua


SWEP.BodyGroups = "001"


SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-9, 0.5, 7.2)
SWEP.RHandPos = Vector(-4, 0, -5)
SWEP.LHandPos = Vector(5, -2, -0)
SWEP.AimHands = Vector(-3, 0, -4.8)
SWEP.attPos = Vector(3, 0.5, 0)
SWEP.attAng = Angle(0, 0, 0)

SWEP.cameraShakeMul = 1

SWEP.rotatehuy = 0

SWEP.Ergonomics = 1
SWEP.Penetration = 13
SWEP.WorldPos = Vector(2.7, -1, -0.5)
SWEP.WorldAng = Angle(0,0,0)
SWEP.UseCustomWorldModel = true
SWEP.handsAng = Angle(0, 0, 0)
SWEP.handsAng2 = Angle(0, 180, 0)

--local to head
SWEP.RHPos = Vector(4,-7,3.5)
SWEP.RHAng = Angle(0,-15,90)
--local to rh
SWEP.LHPos = Vector(15,2,-3.9)
SWEP.LHAng = Angle(-110,-165,0)

local finger1 = Angle(15, -15, 0)
local finger2 = Angle(-40, 20, 40)


SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(-0, 7.5, -4)
SWEP.holsteredAng = Angle(-30, 180, 0)

function SWEP:DrawPost()
end

local ang1 = Angle(-20, 5, 0)
local ang2 = Angle(0, 0, 0)

function SWEP:AnimHoldPost()
	self:BoneSet("l_finger0", vector_origin, ang1)
	self:BoneSet("l_finger02", vector_origin, ang2)
end

function SWEP:DrawHUDAdd()
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