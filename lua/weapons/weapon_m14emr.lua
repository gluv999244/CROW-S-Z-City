SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "M14 EBR"
SWEP.Author = "Smith Enterprises Inc"
SWEP.Instructions = "American military designated marksman rifle and a modernized/tactical chassis-based variant of the select-fire M14 battle rifle chambered for the 7.62×51mm NATO cartridge,. "
SWEP.Category = "Weapons - Sniper Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_iw4_m14ebr.mdl"

SWEP.WepSelectIcon2 = Material("vgui/hud/iw4_m14ebr")
SWEP.IconOverride = "vgui/hud/iw4_m14ebr"
SWEP.weight = 3
SWEP.weaponInvCategory = 1
SWEP.Primary.ClipSize = 20
SWEP.Primary.DefaultClip = 20
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "7.62x51 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 55
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 45
SWEP.Primary.Sound = {"weapons/iw4/m14/fire.wav", 85, 80, 90}
SWEP.SupressedSound = {"weapons/iw4/common/silencer/sniper.wav", 70, 110, 100}
SWEP.Primary.Wait = 0.07
SWEP.ReloadTime = 5.7
SWEP.ReloadSoundes = {
	"none",
	"none",
	"weapons/iw4/m14/out.wav",
	"none",
	"none",
	"weapons/iw4/m14/in.wav",
	"none",
	"none",
	"none",
	"weapons/iw4/wa2000/chamber.wav",
	"none",
	"none",
	"none",
	"none",
	"none",
	"none"
}

SWEP.PPSMuzzleEffect = "pcf_jack_mf_mrifle1" -- shared in sh_effects.lua

SWEP.LocalMuzzlePos = Vector(30,-0.005,3.4)
SWEP.LocalMuzzleAng = Angle(2,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(-2, 8, -11)
SWEP.holsteredAng = Angle(210, 0, 180)

SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, 0, 5)
SWEP.ZoomAng = Angle(0, 0, 0)
SWEP.RHandPos = Vector(-12, -1, 4)
SWEP.LHandPos = Vector(7, -2, -2)
SWEP.EjectAng = Angle(180, 0, 0)
SWEP.Spray = {}
for i = 1, 30 do
	SWEP.Spray[i] = Angle(-0.02 - math.cos(i) * 0.01, math.cos(i * i) * 0.04, 0) * 1
end

SWEP.ShockMultiplier = 3

SWEP.ScrappersSlot = "Primary"

SWEP.CustomShell = "762x51"
--SWEP.EjectPos = Vector(0,5,5)
SWEP.EjectAng = Angle(-5,180,0)

SWEP.Ergonomics = 0.9
SWEP.Penetration = 17
SWEP.WorldPos = Vector(0, -2, -1)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, -0.5, 0)
SWEP.attAng = Angle(0, 0.2, 0)
SWEP.AimHands = Vector(0, 2, -3)
SWEP.lengthSub = 25
SWEP.handsAng = Angle(3, -0.5, 0)
SWEP.availableAttachments = {
	barrel = {
		[1] = {"supressor1", Vector(0,0.6,0.1), {}},
		[2] = {"supressor8", Vector(0,0,0), {}},
		["mount"] = Vector(-1.6,0.1,-0.2),
	},
	sight = {
		["mountType"] = "picatinny",
		["mount"] = Vector(-22, -1.5, 3),
		["mountAngle"] = Angle(0,0,90),
	},
}




--local to head
SWEP.RHPos = Vector(4,-7,4)
SWEP.RHAng = Angle(0,-8,90)
--local to rh
SWEP.LHPos = Vector(14,1,-3.7)
SWEP.LHAng = Angle(-110,-180,0)

function SWEP:AnimationPost()
	
end

function SWEP:ModelCreated(model)
	local wep = self:GetWeaponEntity()
        model:SetBodygroup(0, 1)
        model:SetBodygroup(1, 1)
        wep:SetBodygroup(0, 1)
        wep:SetBodygroup(1, 1)
end
-- RELOAD ANIM AKM
SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(-1.5,1.5,-9),
	Vector(-1.5,1.5,-9),
	Vector(-1.5,1.5,-9),
	Vector(-6,7,-9),
	Vector(-15,7,-15),
	Vector(-15,6,-15),
	Vector(-13,5,-5),
	Vector(-1.5,1.5,-9),
	Vector(-1.5,1.5,-9),
	Vector(-1.5,1.5,-9),
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
	Vector(0,0,1),
	Vector(8,1,2),
	Vector(9,4,-4),
	Vector(9,5,-4),
	Vector(8,5,-4),
	Vector(1,5,-3),
	Vector(1,5,-2),
	Vector(0,4,-1),
	Vector(0,5,0),
	"reloadend",
	Vector(-2,2,1),
	Vector(0,0,0),
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


SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-70,0,110),
	Angle(-50,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-90,0,110),
	Angle(-60,0,95),
	Angle(0,0,60),
	Angle(0,0,30),
	Angle(0,0,2),
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
	Angle(15,0,-50),
	Angle(15,0,-50),
	Angle(15,0,-50),
	Angle(0,0,0),
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