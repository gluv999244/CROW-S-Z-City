SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "TAR-21"
SWEP.Author = "	Israel Weapon Industries"
SWEP.Instructions = "JEW (5,56×45MM)"
SWEP.Category = "Weapons - Assault Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_iw4_tavor.mdl"
SWEP.weaponInvCategory = 1
SWEP.CustomEjectAngle = Angle(0, 0, 90)
SWEP.Primary.ClipSize = 30
SWEP.Primary.DefaultClip = 30
SWEP.Primary.Automatic = true
SWEP.Primary.Ammo = "5.56x45 mm"

SWEP.CustomShell = "556x45"
SWEP.EjectPos = Vector(0,0,3.5)
SWEP.EjectAng = Angle(0,0,0)

SWEP.ScrappersSlot = "Primary"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 35
SWEP.Primary.Spread = 0
SWEP.Primary.Force = 55
SWEP.Primary.Sound = {"weapons/iw4/tavor/fire.wav", 85, 100, 110}
SWEP.Primary.SoundEmpty = {"weapons/tfa_ins2/famas/famas_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Wait = 0.085
SWEP.ReloadTime = 5.5
SWEP.ReloadSoundes = {
	"none",
	"none",
	"weapons/iw4/tavor/out.wav",
	"none",
	"weapons/iw4/tavor/in.wav",
	"weapons/tfa_ins2/famas/famas_boltback.wav",
	"weapons/tfa_ins2/famas/famas_boltrelease.wav",
	"none",
	"none"
}

SWEP.PPSMuzzleEffect = "pcf_jack_mf_mrifle2" -- shared in sh_effects.lua

SWEP.LocalMuzzlePos = Vector(19,0,2.5)
SWEP.LocalMuzzleAng = Angle(0,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(0, 0.0054, 7.2)
SWEP.RHandPos = Vector(-32, -111, 14)
SWEP.LHandPos = Vector(37, -2, -2)
SWEP.Penetration = 11
SWEP.Spray = {}
for i = 1, 30 do
    if i <= 15 then
        SWEP.Spray[i] = Angle(-0.2, 0, 0)
    else
        SWEP.Spray[i] = Angle(0, 0.2, 0)
    end
end

SWEP.WepSelectIcon2 = Material("vgui/hud/iw4_tavor")
SWEP.IconOverride = "vgui/hud/iw4_tavor"

SWEP.Ergonomics = 0.8
SWEP.WorldPos = Vector(0, -1, -2)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(0, 0, 0)
SWEP.lengthSub = 25
SWEP.handsAng = Angle(1, -1.5, 0)
SWEP.DistSound = "ak74/ak74_dist.wav"

SWEP.weight = 3

SWEP.availableAttachments = {
	sight = {
		["mountType"] = {"picatinny", "ironsight"},
		["mount"] = {ironsight = Vector(-22, 0, 2), picatinny = Vector(-12, -1.5, 3.4)},
		["mountAngle"] = Angle(0,0,90)
	},
	barrel = {
		[1] = {"supressor7", Vector(-5, 0, 0), {}},
	},
	grip = {
		["mount"] = Vector(0,0.5,0),
		["mountType"] = "picatinny"
	},
}

SWEP.StartAtt = {"ironsight1"}


--local to head
SWEP.RHPos = Vector(6,-8,4)
SWEP.RHAng = Angle(-7,-12,90)
--local to rh
SWEP.LHPos = Vector(10,0.8,-3.7)
SWEP.LHAng = Angle(-120,180,0)

local finger1 = Angle(25,0, 40)

SWEP.ShootAnimMul = 3
function SWEP:DrawPost()
	local wep = self:GetWeaponEntity()
	self.vec = self.vec or Vector(0,0,0)
	local vec = self.vec
	
	if CLIENT and IsValid(wep) then
		self.LHPos = LerpVectorFT(0.2,self.LHPos, self.reload and Vector(0,0.8,-4.7) or Vector(10,0.8,-3.7) )
		self.shooanim = LerpFT(0.4,self.shooanim or 0,self.ReloadSlideOffset)
		vec[1] = -2.1*self.shooanim
		vec[2] = 0.2*self.shooanim
		vec[3] = -0.1*self.shooanim
		wep:ManipulateBonePosition(6,vec,false)
	end
end

local lfang2 = Angle(12, -15, -1)
local lfang1 = Angle(25, 0, -5)
local lfang0 = Angle(-7,15, -30)
local vec_zero = Vector(0,0,0)
local ang_zero = Angle(0,0,0)
function SWEP:AnimHoldPost()
	self:BoneSet("l_finger0", vec_zero, lfang0)
	self:BoneSet("l_finger02", vec_zero, ang_zero)
	self:BoneSet("l_finger1", vec_zero, lfang1)
	self:BoneSet("l_finger2", vec_zero, lfang2)
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