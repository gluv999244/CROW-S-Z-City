SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "M1 Carbine"
SWEP.Author = "американец по имени м1 карабин"
SWEP.Instructions = "высотка в нормандии."
SWEP.Category = "Weapons - Assault Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/m1_w.mdl"

SWEP.WepSelectIcon2 = Material("vgui/hud/tfa_ww2_m1_carbine_mlg")
SWEP.IconOverride = "vgui/hud/tfa_ww2_m1_carbine_mlg"

SWEP.CustomShell = "9x19"
SWEP.EjectPos = Vector(0,5,4)
SWEP.EjectAng = Angle(-70,-85,0)
SWEP.punchmul = 2
SWEP.punchspeed = 0.5
SWEP.weight = 3

SWEP.MagModel = "models/weapons/upgrades/w_ww2_m1a1_mag_30.mdl"

SWEP.ScrappersSlot = "Primary"

SWEP.weaponInvCategory = 1
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".30 Carbine"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 60
SWEP.Primary.Sound = {"weapons/tfa_ww2_m1_carbine/m1carbine-1.wav", 75, 90, 100}
SWEP.SupressedSound = {"weapons/tfa_ins2/usp_tactical/fp_suppressed1.wav", 55, 90, 100}
SWEP.Primary.SoundEmpty = {"zcitysnd/sound/weapons/m1911/handling/m1911_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Force = 40
SWEP.Primary.Wait = 0.15
SWEP.ReloadTime = 4
SWEP.ReloadSoundes = {
	"weapons/tfa_ww2_m1_carbine/m1carbine_magout.wav",
	"weapons/tfa_ww2_m1_carbine/m1carbine_magin.wav",
	"weapons/tfa_ww2_m1_carbine/m1carbine_boltback.wav",
	"weapons/tfa_ww2_m1_carbine/m1carbine_boltrelease.wav",
	"none"
}
SWEP.DeploySnd = {"homigrad/weapons/draw_hmg.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/hmg_holster.mp3", 55, 100, 110}
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, -0.019, 3.6)
SWEP.SprayRand = {Angle(-0.03, -0.03, 0), Angle(-0.05, 0.03, 0)}
SWEP.Ergonomics = 0.7
SWEP.Penetration = 14
SWEP.WorldPos = Vector(10, -1, -3)
SWEP.WorldAng = Angle(0, 0, 0)

SWEP.LocalMuzzlePos = Vector(20,0,2.1)
SWEP.LocalMuzzleAng = Angle(0.05,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.handsAng = Angle(-1, 10, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(-0.125, -0.1, 0)
SWEP.lengthSub = 20
SWEP.DistSound = "m9/m9_dist.wav"
SWEP.holsteredBone = "ValveBiped.Bip01_R_Thigh"
SWEP.holsteredPos = Vector(0, -2, 0)
SWEP.holsteredAng = Angle(0, 20, 30)
SWEP.shouldntDrawHolstered = true

SWEP.RHandPos = Vector(3, -1, 0)
SWEP.LHandPos = Vector(6, -6, 1)

--local to head
SWEP.RHPos = Vector(2,-7,3.5)
SWEP.RHAng = Angle(0,-15,90)
--local to rh
SWEP.LHPos = Vector(17,0.5,-3.7)
SWEP.LHAng = Angle(-100,-90,-90)


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
	Vector(-2,7,-1),
	"fastreload",
	Vector(-1,5,-1),
	Vector(-2,2,-2),
	Vector(-2,2,-2),
	Vector(-2,2,-2),
	Vector(-2,2,-15),
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