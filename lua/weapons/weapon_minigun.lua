SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = true
SWEP.PrintName = "M134 Minigun"
SWEP.Author = "General Electric Company"
SWEP.Instructions = "Machine gun chambered in 7.62x51\n\nRate of fire 850 rounds per minute"
SWEP.Category = "Weapons - Machineguns"
SWEP.Primary.ClipSize = 150
SWEP.Primary.DefaultClip = 300
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "7.62x51 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 25
SWEP.Primary.Spread = Vector(0.02, 0.02, 0.02)
SWEP.Primary.Force = 20
SWEP.Primary.Sound = {"homigrad/weapons/rifle/loud_awp3.wav", 75, 100, 110}
SWEP.Primary.SoundEmpty = {"zcitysnd/sound/weapons/fnfal/handling/fnfal_empty.wav", 75, 95, 100, CHAN_WEAPON, 2}
SWEP.Primary.Wait = 0.063
SWEP.ReloadTime = 6
SWEP.ReloadSound = "weapons/ar2/ar2_reload.wav"
SWEP.DeploySnd = {"homigrad/weapons/draw_hmg.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/hmg_holster.mp3", 55, 100, 110}
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/arccw/w_minigun.mdl"
SWEP.ScrappersSlot = "Primary"
SWEP.weight = 26

SWEP.CanSuicide = false

SWEP.WepSelectIcon2 = Material("pwb2/vgui/weapons/pkm.png")
SWEP.IconOverride = "entities/weapon_pwb2_pkm.png"

SWEP.CustomShell = "762x51"
SWEP.EjectPos = Vector(0,-20,5)
SWEP.EjectAng = Angle(0,90,0)

SWEP.weaponInvCategory = 1
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-9, 2, 6.2041)
SWEP.RHandPos = Vector(6, -2, 0)
SWEP.LHandPos = Vector(7, -2, -2)
SWEP.ShellEject = "EjectBrass_762Nato"
SWEP.SprayRand = {Angle(-0.3, -0.9, 0), Angle(-0.3, 0.9, 0)}

SWEP.LocalMuzzlePos = Vector(33,2.5,-1)
SWEP.LocalMuzzleAng = Angle(-0.2,0.1,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.Ergonomics = 0.3
SWEP.OpenBolt = true
SWEP.Penetration = 16
SWEP.WorldPos = Vector(15, 0, 2)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(-0.3,-0.04,090)
SWEP.AimHands = Vector(0, 1, -3.5)
SWEP.lengthSub = 15
SWEP.DistSound = "m249/m249_dist.wav"
SWEP.bipodAvailable = true

SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(-13, -4, -10)
SWEP.holsteredAng = Angle(320, 0, 0)

--local to head
SWEP.RHPos = Vector(0,-8,4)
SWEP.RHAng = Angle(-7,-12,90)
--local to rh
SWEP.LHPos = Vector(20,2,-4)
SWEP.LHAng = Angle(5,9,0)

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