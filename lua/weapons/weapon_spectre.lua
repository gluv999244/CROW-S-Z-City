SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Spectre"
SWEP.Author = "италия"
SWEP.Instructions = "очень хорошо хуячит террористов"
SWEP.Category = "Weapons - Machine-Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_bo1_spectre.mdl"
SWEP.punchmul = 1.5
SWEP.punchspeed = 3
SWEP.WepSelectIcon2 = Material("entities/robotnik_bo1_spc.png")
SWEP.IconOverride = "entities/robotnik_bo1_spc.png"
SWEP.weight = 1.5
SWEP.ScrappersSlot = "Primary"
SWEP.weaponInvCategory = 1
SWEP.CustomShell = "9x19"
--SWEP.EjectPos = Vector(-5,0,10)
--SWEP.EjectAng = Angle(-80,-90,0)
SWEP.Primary.ClipSize = 32
SWEP.Primary.DefaultClip = 32
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "9x19 mm Parabellum"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 13
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 13
SWEP.animposmul = 2
SWEP.Primary.Sound = {"weapons/robotnik_bo1_mpl/fire.wav", 75, 120, 130}
SWEP.Primary.Wait = 0.08
SWEP.ReloadTime = 4.2
SWEP.ReloadSoundes = {
	"none",
	"none",
	"weapons/robotnik_bo1_mpl/out.wav",
	"none",
	"none",
	"weapons/robotnik_bo1_mpl/in1.wav",
	"none",
	"none",
	"weapons/robotnik_bo1_mpl/pull.wav",
	"weapons/robotnik_bo1_mpl/release.wav",
	"none",
	"none",
	"none",
	"none"
}

SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, 0.1, 6)
SWEP.RHandPos = Vector(-15, 0, 3)
SWEP.LHandPos = false
SWEP.Spray = {}
for i = 1, 32 do
	SWEP.Spray[i] = Angle(-0.01 - math.cos(i) * 0.01, math.cos(i * 8) * 0.01, 0) * 1
end

SWEP.LocalMuzzlePos = Vector(12,0.2,4)
SWEP.LocalMuzzleAng = Angle(-0.1,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.Ergonomics = 1.3
SWEP.OpenBolt = true
SWEP.Penetration = 6
SWEP.WorldPos = Vector(3, -1.2, -1.5)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(4, 0.9, -0.2)
SWEP.attAng = Angle(0, 0, 0)
SWEP.lengthSub = 25
SWEP.DistSound = "mp5k/mp5k_dist.wav"
SWEP.AnimShootMul = 0.5
SWEP.AnimShootHandMul = 0.01

SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(4, 8, -4)
SWEP.holsteredAng = Angle(210, 0, 180)

--local to head
SWEP.RHPos = Vector(5,-6.5,3.5)
SWEP.RHAng = Angle(0,0,90)
--local to rh
SWEP.LHPos = Vector(16,1,-3.5)
SWEP.LHAng = Angle(-110,0,-90)



SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(0,-2,-2),
	Vector(-15,5,-7),
	Vector(-15,5,-15),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(0,0,0),
	Vector(5,0,5),
	Vector(-2,1,1),
	Vector(-2,1,1),
	Vector(-2,1,1),
	Vector(0,0,0),
	Vector(0,0,0)
}
SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(0,0,0),
	Angle(-35,0,0),
	Angle(-55,0,0),
	Angle(-75,0,0),
	Angle(-75,0,0),
	Angle(-75,0,0),
	Angle(-25,0,0),
	Angle(0,0,0),
}

SWEP.ReloadAnimRH = {
	Vector(0,0,0)
}
SWEP.ReloadAnimRHAng = {
	Angle(0,0,0)
}
SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(0,25,45),
	Angle(15,25,45),
	Angle(-15,25,45),
	Angle(0,0,-25),
	Angle(0,0,-45),
	Angle(-35,0,-25),
	Angle(-35,2,-24),
	Angle(-15,0,-45),
	Angle(0,0,0)
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