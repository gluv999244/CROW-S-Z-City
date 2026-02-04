SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Bizon"
SWEP.Author = "Ижевский машиностроительный завод"
SWEP.Instructions = "Submachine gun chambered in 9x19 ACP"
SWEP.Category = "Weapons - Machine-Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_fas2_bizon.mdl"

SWEP.WepSelectIcon2 = Material("vgui/hud/tfa_fas2_ppbizon")
SWEP.IconOverride = "vgui/hud/tfa_fas2_ppbizon"
SWEP.weight = 3.1
SWEP.weaponInvCategory = 1
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9x19 mm Parabellum"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 37
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 37
SWEP.ShockMultiplier = 1
SWEP.Primary.Sound = {"weapons/fas2_ppbizon/bizon_fire1.wav", 85, 80, 90}
SWEP.Primary.SoundEmpty = {"weapons/fal/fnfal_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.SupressedSound = {"weapons/fas2_ppbizon/bizon_suppressed_fire1.wav", 65, 90, 100}
SWEP.DistSound = "weapons/fas2_ppbizon/bizon_distance_fire1.wav"
SWEP.Primary.Wait = 0.09
SWEP.ReloadTime = 5.7
SWEP.ReloadSoundes = {
	"none",
	"none",
	"weapons/fas2_ppbizon/bizon_magout.wav",
	"none",
	"none",
	"weapons/fas2_ppbizon/bizon_magin.wav",
	"none",
	"none",
	"none",
	"weapons/fal/fnfal_boltback.wav",
	"none",
	"weapons/fal/fnfal_boltrelease.wav",
	"none",
	"none",
	"none",
	"none"
}
	
SWEP.PPSMuzzleEffect = "pcf_jack_mf_mrifle1" -- shared in sh_effects.lua

SWEP.LocalMuzzlePos = Vector(26,0.4,4.9)
SWEP.LocalMuzzleAng = Angle(0,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(-2, 8, -11)
SWEP.holsteredAng = Angle(210, 0, 180)

SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(0, 0.4, 6.9)
SWEP.ZoomAng = Angle(0, 0, 0)
SWEP.RHandPos = Vector(-12, -1, 4)
SWEP.LHandPos = Vector(7, -2, -2)
SWEP.Spray = {}
for i = 1, 30 do
	SWEP.Spray[i] = Angle(-0.02 - math.cos(i) * 0.01, math.cos(i * i) * 0.04, 0) * 1
end

SWEP.ShockMultiplier = 3

SWEP.ScrappersSlot = "Primary"

SWEP.CustomShell = "9x19"
--SWEP.EjectPos = Vector(0,5,5)
SWEP.EjectAng = Angle(-5,0,0)

SWEP.availableAttachments = {
	barrel = {
		[1] = {"supressor4", Vector(0,0,0), {}},
		[2] = {"supressor6", Vector(4.2,0,0), {}},
		["mount"] = Vector(-0.5,0.5,0),
	},
	sight = {
		["mountType"] = {"picatinny","pistolmount"},
		["mount"] = {["picatinny"] = Vector(-2, 2.15, 0),
		["mountAngle"] = Angle(0,0,0),
	},
	mount = {
		["picatinny"] = {
			"mount4",
			Vector(-1.5, -.1, 0),
			{},
			["mountType"] = "picatinny",
		}
	},
}
}

SWEP.Ergonomics = 1.2
SWEP.Penetration = 12
SWEP.WorldPos = Vector(-5, -1, 1)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0,0,0)
SWEP.attAng = Angle(0, 0.2, 0)
SWEP.AimHands = Vector(0, 2, -3)
SWEP.lengthSub = 25
SWEP.handsAng = Angle(3, -0.5, 0)

--local to head
SWEP.RHPos = Vector(4,-7,4)
SWEP.RHAng = Angle(0,-8,90)
--local to rh
SWEP.LHPos = Vector(14,-1,-3.7)
SWEP.LHAng = Angle(-110,-180,0)

function SWEP:AnimationPost()
	
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

SWEP.ReloadAnimRH = {
	Vector(0,0,0)
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

SWEP.ReloadAnimRHAng = {
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