SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "MSMC"
SWEP.Author = "India"
SWEP.Instructions = "Saar this page do not have virus, you are going to do the downloading of all files on this page into your computer. 5.56×30mm btw"
SWEP.Category = "Weapons - Machine-Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_bo2_msmc.mdl"
SWEP.punchmul = 1.5
SWEP.punchspeed = 3
SWEP.WepSelectIcon2 = Material("pwb/sprites/uzi.png")
SWEP.IconOverride = "entities/weapon_pwb_uzi.png"
SWEP.weight = 1.5
SWEP.ScrappersSlot = "Primary"
SWEP.weaponInvCategory = 1
SWEP.CustomShell = "556x45"
--SWEP.EjectPos = Vector(-5,0,10)
--SWEP.EjectAng = Angle(-80,-90,0)
SWEP.Primary.ClipSize = 32
SWEP.Primary.DefaultClip = 32
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56×30mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 36
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 30
SWEP.animposmul = 2
SWEP.Primary.Sound = {"weapons/bo2_msmc.wav", 75, 120, 130}
SWEP.Primary.Wait = 0.1
SWEP.ReloadTime = 4.2
SWEP.ReloadSoundes = {
	"none",
	"none",
	"pwb/weapons/uzi/clipout.wav",
	"none",
	"none",
	"pwb/weapons/uzi/clipin.wav",
	"none",
	"none",
	"weapons/tfa_ins2/mp7/boltback.wav",
	"pwb2/weapons/vectorsmg/boltrelease.wav",
	"none",
	"none",
	"none",
	"none"
}

SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, 0, 5.0661)
SWEP.RHandPos = Vector(-15, 0, 3)
SWEP.LHandPos = false
SWEP.Spray = {}
for i = 1, 32 do
	SWEP.Spray[i] = Angle(-0.01 - math.cos(i) * 0.01, math.cos(i * 8) * 0.01, 0) * 1
end

SWEP.LocalMuzzlePos = Vector(28,0,2.5)
SWEP.LocalMuzzleAng = Angle(0.5,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.Ergonomics = 1.3
SWEP.OpenBolt = true
SWEP.Penetration = 17
SWEP.WorldPos = Vector(-11, -1.2, -1.5)
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
SWEP.RHPos = Vector(10,-6.5,3.5)
SWEP.RHAng = Angle(0,0,90)
--local to rh
SWEP.LHPos = Vector(8,-0.1,-3.5)
SWEP.LHAng = Angle(-110,-90,-90)

function SWEP:AnimHoldPost(model)
	self:BoneSet("l_finger0", Vector(0, 0, 0), Angle(10, -12, 0))
    --self:BoneSet("l_finger02", Vector(0, 0, 0), Angle(0, -10, 0))
end

--RELOAD ANIMS SMG????

SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(0,5,-5),
	Vector(-4,10,-5),
	Vector(-15,15,-25),
	Vector(-4,10,-5),
	Vector(0,5,-5),
	"fastreload",
	Vector(-1,-5,4),
	Vector(-1,-5,-5),
	Vector(-3,0,0),
	"reloadend",
}
SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(0,0,90),
	Angle(0,0,90),
	Angle(0,0,90),
	Angle(0,0,90),
	Angle(0,0,90),
	Angle(0,0,90),
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
	Angle(0,0,45),
	Angle(15,0,45),
	Angle(0,5,45),
	Angle(0,2,42),
	Angle(-5,0,15),
	Angle(10,0,-15),
	Angle(-15,0,-10),
	Angle(5,0,-0),
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