SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "KAR-40"
SWEP.Author = "ВС США 2025"
SWEP.Instructions = "ПЕРЕИГРАЙ ТУ САМУЮ МИССИЮ ГДЕ ЕСТЬ КЛУБ"
SWEP.Category = "Weapons - Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_bo2_kard.mdl"

SWEP.WepSelectIcon2 = Material("entities/mac_bo2_kard.png")
SWEP.IconOverride = "entities/mac_bo2_kard.png"

SWEP.weaponInvCategory = 2
SWEP.CustomShell = "9x19"
SWEP.EjectPos = Vector(0,3,2)
SWEP.EjectAng = Angle(-80,-90,0)

SWEP.IsPistol = true
SWEP.podkid = 0.5

SWEP.ScrappersSlot = "Secondary"

SWEP.Primary.ClipSize = 15
SWEP.Primary.DefaultClip = 15
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9x19 mm Parabellum"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 10
SWEP.Primary.Sound = {"weapons/bo2_kard.wav", 75, 90, 100}
SWEP.Primary.SoundEmpty = {"weapons/tfa_ins2/m1911/m1911_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.SupressedSound = {"weapons/mac_bo2_pistol/sil.wav", 55, 90, 100}
SWEP.Primary.Force = 25
SWEP.Primary.Wait = 0.060
SWEP.ReloadTime = 4.5
SWEP.ReloadSoundes = {
	"none",
	"none",
	"weapons/mac_bo2_pistol/out.wav",
	"none",
	"none",
	"weapons/mac_bo2_pistol/in.wav",
	"weapons/tfa_ins2/browninghp/maghit.wav",
	"weapons/tfa_ins2/browninghp/boltback.wav",
	"none",
	"none",
	"weapons/mac_bo2_pistol/release.wav",
	"none",
	"none",
	"none",
	"none"
}

SWEP.DeploySnd = {"weapons/mac_bo2_pistol/deploy.wav", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/holster_pistol.mp3", 55, 100, 110}
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, 0, 4.5)
SWEP.RHandPos = Vector(-5, -0.5, -1)
SWEP.LHandPos = false
SWEP.SprayRand = {Angle(-0.05, -0.05, 0), Angle(-0.07, 0.07, 0)}
SWEP.Ergonomics = 0.7
SWEP.Penetration = 6
SWEP.WorldPos = Vector(-17, -1.5, -2)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.lengthSub = 25
SWEP.DistSound = "m9/m9_dist.wav"
SWEP.shouldntDrawHolstered = true
SWEP.weight = 0.85

SWEP.LocalMuzzlePos = Vector(29,0.15,3)
SWEP.LocalMuzzleAng = Angle(1.5,0.002,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

--local to head
SWEP.RHPos = Vector(8,-5,3)
SWEP.RHAng = Angle(0,-2,90)
--local to rh
SWEP.LHPos = Vector(1,-1.4,-2.5)
SWEP.LHAng = Angle(6,9,-100)

SWEP.availableAttachments = {
	sight = {
		["mountType"] = {"picatinny","pistolmount"},
		["mount"] = {["pistolmount"] = Vector(-4, 0.2, 0.1)},
		["mountAngle"] = Angle(0,0,0),
	},
	underbarrel = {
		["mount"] = Vector(12, -3, -1),
		["mountAngle"] = Angle(0, 0, 90),
		["mountType"] = "picatinny_small"
	},
}

local finger1 = Angle(-20, 40, 10)
local finger2 = Angle(10, -15, 10)
local finger3 = Angle(10, -70, 10)
local finger4 = Angle(-10, -10, 30)
local finger5 = Angle(10, -30, 10)
local finger6 = Angle(-20, 0, -10)

function SWEP:AnimHoldPost(model)

end

--RELOAD ANIMS PISTOL

SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(-3,-1,-5),
	Vector(-12,1,-22),
	Vector(-12,1,-22),
	Vector(-12,1,-22),
	Vector(-12,1,-22),
	Vector(-2,-1,-3),
	"fastreload",
	Vector(0,0,0),
	"reloadend",
	"reloadend",
}
SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(30,-10,0),
	Angle(60,-20,0),
	Angle(70,-40,0),
	Angle(90,-30,0),
	Angle(40,-20,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
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
	Vector(-2,0,0),
	Vector(-1,0,0),
	Vector(0,0,0)
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
	Angle(0,0,0),
	Angle(15,2,20),
	Angle(15,2,20),
	Angle(0,0,0)
}
SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(5,15,15),
	Angle(-5,21,14),
	Angle(-5,21,14),
	Angle(5,20,13),
	Angle(5,22,13),
	Angle(1,22,13),
	Angle(1,21,13),
	Angle(2,22,12),
	Angle(-5,21,16),
	Angle(-5,22,14),
	Angle(-4,23,13),
	Angle(7,22,8),
	Angle(7,12,3),
	Angle(2,6,1),
	Angle(0,0,0)
}

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
	Angle(6,0,5),
	Angle(15,0,14),
	Angle(16,0,16),
	Angle(4,0,12),
	Angle(-6,0,-2),
	Angle(-15,7,-15),
	Angle(-16,18,-35),
	Angle(-17,17,-42),
	Angle(-18,16,-44),
	Angle(-14,10,-46),
	Angle(-2,2,-4),
	Angle(0,0,0)
}