SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Stoner 63"
SWEP.Author = "Stoner Eugene"
SWEP.Instructions = "Привет ребатке это я юджин стоунер зацените мой ствол который я споял, правда классный?"
SWEP.Category = "Weapons - Assault Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_bo1_stoner63.mdl"
SWEP.weaponInvCategory = 1
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56x45 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 40
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 40
SWEP.ShockMultiplier = 2.85
SWEP.Primary.Sound = {"weapons/robotnik_bo1_stoner/fire.wav", 75, 90, 100, 2}
SWEP.DistSound = "zcitysnd/sound/weapons/m16a4/m16a4_dist.wav"
SWEP.Primary.Wait = 0.075

SWEP.CustomShell = "556x45"
SWEP.EjectPos = Vector(0,9,3)
SWEP.EjectAng = Angle(-45,-90,0)
SWEP.ScrappersSlot = "Primary"
SWEP.WepSelectIcon2 = Material("entities/robotnik_bo1_stn.png")
SWEP.IconOverride = "entities/robotnik_bo1_stn.png"

SWEP.LocalMuzzlePos = Vector(37,0,5.5)
SWEP.LocalMuzzleAng = Angle(-0.,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0.002)

SWEP.weight = 3

SWEP.availableAttachments = {
	--[[barrel = {
		[1] = {"supressor2", Vector(0,0,0), {}},
		[2] = {"supressor6", Vector(0,0,-0.1), {}},
		["mount"] = Vector(-2,1 - 0.5,0),
	},
	sight = {
		["empty"] = {
			"empty",
			{
				[2] = "models/drgordon/weapons/colt/m4/m4_sights",
			},
		},
		["ironsight2"] = {
			"ironsight2",
			{
				[2] = "models/drgordon/weapons/colt/m4/m4_sights",
			},
		},
		["mountType"] = {"picatinny","ironsight"},
		["mount"] = {ironsight = Vector(-13 - 4.5, 1.8 - 0.4, -0.1), picatinny = Vector(-13 - 6, 1.8 - 0.45, -0.15)},
		["mountAngle"] = Angle(0,0,1),
		["removehuy"] = {
			[2] = "null"
		},
	},
	grip = {
		["mount"] = Vector(2 + 8.6 - 6, -0.7 + 1, -0.1),
		["mountType"] = "picatinny"
	},
	underbarrel = {
		["mount"] = {["picatinny_small"] = Vector(3, -0.03, -2.5),["picatinny"] = Vector(5,0,0)},
		["mountAngle"] = {["picatinny_small"] = Angle(0, 0, -180),["picatinny"] = Angle(0, 0, 0)},
		["mountType"] = {"picatinny_small","picatinny"},
		["removehuy"] = {
		["picatinny"] = {
			},
			["picatinny_small"] = {
			}
		}
	}]]
}

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

SWEP.BurstNum = 0


SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-9, 0, 7.6)
SWEP.RHandPos = Vector(-4, 0, -5)
SWEP.LHandPos = Vector(5, -2, -0)
SWEP.AimHands = Vector(-3, 0, -4.8)
SWEP.attPos = Vector(3, 0.5, 0)
SWEP.attAng = Angle(0, 0, 0)

SWEP.cameraShakeMul = 1

SWEP.rotatehuy = 0

SWEP.Ergonomics = 1
SWEP.Penetration = 13
SWEP.WorldPos = Vector(2, -1, -0.5)
SWEP.WorldAng = Angle(0, 0, 0.5)
SWEP.UseCustomWorldModel = true
SWEP.handsAng = Angle(0, 0, 0)
SWEP.handsAng2 = Angle(0, 180, 0)

--local to head
SWEP.RHPos = Vector(3.5,-8,3.5)
SWEP.RHAng = Angle(0,-15,90)
--local to rh
SWEP.LHPos = Vector(15,0.8,-3.9)
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

-- RELOAD ANIM AKM
SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(0,1,-2),
	Vector(0,2,-2),
	Vector(0,3,-2),
	Vector(0,3,-8),
	Vector(-8,15,-15),
	Vector(-15,20,-25),
	Vector(-13,12,-5),
	Vector(-6,6,-3),
	Vector(-2,5,-1),
	Vector(-2,1,-1),
	"fastreload",
	Vector(-1,5,-1),
	Vector(-2,-2,-2),
	Vector(-2,-2,-2),
	Vector(-2,-2,-2),
	Vector(-2,-2,-15),
	Vector(-2,-2,-5),
	"reloadend",
	Vector(0,0,0),
}


SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,110),
	Angle(0,0,95),
	Angle(0,0,60),
	Angle(0,0,30),
	Angle(0,0,2),
	Angle(0,0,0),
}



SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(-15,15,-5),
	Angle(-15,15,-15),
	Angle(-10,15,-15),
	Angle(15,0,-15),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,-5),
	Angle(0,5,15),
	Angle(0,5,20),
	Angle(0,5,15),
	Angle(0,5,-15),
	Angle(0,0,2),
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