SWEP.Base = "homigrad_base"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "AMT Hardballer"
SWEP.Author = "Arcadia Machine & Tool "
SWEP.Instructions = "Semi-automatic pistol chambered in .45 ACP cartridges."
SWEP.Category = "Weapons - Pistols"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/tacint_shark/w_hardballer.mdl"

SWEP.WepSelectIcon2 = Material("vgui/gfx/vgui/deserteagle")
SWEP.IconOverride = "vgui/gfx/vgui/deserteagle"

SWEP.CustomShell = "45acp"
SWEP.EjectPos = Vector(0,5,4)
SWEP.EjectAng = Angle(-70,-85,0)
SWEP.punchmul = 2
SWEP.punchspeed = 1
SWEP.weight = 1.3

SWEP.ScrappersSlot = "Secondary"

SWEP.weaponInvCategory = 2
SWEP.ShellEject = "EjectBrass_9mm"
SWEP.Primary.ClipSize = 9
SWEP.Primary.DefaultClip = 9
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = ".45 ACP"
SWEP.Primary.Cone = 0
SWEP.Primary.Damage = 35
SWEP.Primary.Sound = {"weapons/silverballer/deagle-1.wav", 75, 90, 100}
SWEP.SupressedSound = {"weapons/silverballer/deagle_sil-1.wav", 55, 90, 100}
SWEP.Primary.SoundEmpty = {"zcitysnd/sound/weapons/m1911/handling/m1911_empty.wav", 75, 100, 105, CHAN_WEAPON, 2}
SWEP.Primary.Force = 35
SWEP.Primary.Wait = PISTOLS_WAIT
SWEP.ReloadTime = 4
SWEP.ReloadSoundes = {
	"none",
	"weapons/silverballer/clip_out.wav",
	"weapons/silverballer/clip_in.wav",
	"weapons/tfa_ins2/browninghp/boltrelease.wav",
	"none",
	"none"
}
SWEP.DeploySnd = {"weapons/silverballer/deploy.wav", 55, 100, 110}
SWEP.HolsterSnd = {"weapons/silverballer/foley.wav", 55, 100, 110}
SWEP.HoldType = "revolver"
SWEP.ZoomPos = Vector(0, -0.019, 3.7)
SWEP.SprayRand = {Angle(-0.03, -0.03, 0), Angle(-0.05, 0.03, 0)}
SWEP.Ergonomics = 0.9
SWEP.Penetration = 11
SWEP.WorldPos = Vector(3, -1.3, -2)
SWEP.WorldAng = Angle(0, 0, 0)

SWEP.LocalMuzzlePos = Vector(6,0,3)
SWEP.LocalMuzzleAng = Angle(0.05,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.handsAng = Angle(-1, 10, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(-0.125, -0.1, 0)
SWEP.lengthSub = 6
SWEP.DistSound = "m9/m9_dist.wav"
SWEP.holsteredBone = "ValveBiped.Bip01_R_Thigh"
SWEP.holsteredPos = Vector(0, -2, 0)
SWEP.holsteredAng = Angle(0, 20, 30)
SWEP.shouldntDrawHolstered = true
SWEP.availableAttachments = {
	barrel = {
		[1] = {"supressor6", Vector(0,0,0), {}},
		[2] = {"supressor4", Vector(0,0,0), {}},
		["mount"] = Vector(2.5,0.4,0.03),
	},
		sight = {
		["mountType"] = {"picatinny","pistolmount"},
		["mount"] = {["picatinny"] = Vector(-3.8, 1, 0), ["pistolmount"] = Vector(-6.2, -0.5, 0.025)},
		["mountAngle"] = Angle(0,0,0),
	},
	underbarrel = {
		["mount"] = Vector(15, -1.5, -1),
		["mountAngle"] = Angle(0, 0, 90),
		["mountType"] = "picatinny_small"
	},
	mount = {
		["picatinny"] = {
			"mount4",
			Vector(-1.5, -1.3, 0),
			{},
			["mountType"] = "picatinny",
		}
	}, 
}

SWEP.RHandPos = Vector(3, -1, 0)
SWEP.LHandPos = false

--local to head
SWEP.RHPos = Vector(10,-4.5,3)
SWEP.RHAng = Angle(0,-5,90)
--local to rh
SWEP.LHPos = Vector(-1.2,-1.4,-2.5)
SWEP.LHAng = Angle(5,9,-100)

local finger1 = Angle(-25,10,25)
local finger2 = Angle(0,25,0)
local finger3 = Angle(31,1,-25)
local finger4 = Angle(-10,-5,-5)
local finger5 = Angle(0,-65,-15)
local finger6 = Angle(15,-5,-15)

function SWEP:AnimHoldPost()
	--self:BoneSet("r_finger0", vector_zero, finger6)
	--self:BoneSet("l_finger0", vector_zero, finger1)
    --self:BoneSet("l_finger02", vector_zero, finger2)
	--self:BoneSet("l_finger1", vector_zero, finger3)
	--self:BoneSet("r_finger1", vector_zero, finger4)
	--self:BoneSet("r_finger11", vector_zero, finger5)
end
SWEP.ShootAnimMul = 4

local mat = "pwb/models/weapons/v_tmp/bullet"
function SWEP:ModelCreated(model)
	local wep = self:GetWeaponEntity()
	self:SetSubMaterial(1, mat)
	wep:SetSubMaterial(1, mat)
end

function SWEP:DrawPost()
	local wep = self:GetWeaponEntity()
	if CLIENT and IsValid(wep) then
		self.shooanim = LerpFT(0.4,self.shooanim or 0,self:Clip1() > 0 and 0 or 1.8)
		wep:ManipulateBonePosition(4,Vector(-0.8*self.shooanim,-0.09*self.shooanim,0),false)
	end
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