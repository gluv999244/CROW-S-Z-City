--ents.Reg(nil,"weapon_m4super")
SWEP.Base = "weapon_m4super"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "TOZ"
SWEP.Author = "TOZ"
SWEP.Instructions = "TOZ"
SWEP.Category = "Weapons - Shotguns"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/tfa_ins2_wpns/tozshotgun/w_toz.mdl"

SWEP.WepSelectIcon2 = Material("vgui/tfa_ins2_wpns_icons/tfa_ins2_wpn_tozshotgun")
SWEP.IconOverride = "vgui/tfa_ins2_wpns_icons/tfa_ins2_wpn_tozshotgun"

SWEP.CustomShell = "12x70"
--SWEP.EjectPos = Vector(0,-20,5)
--SWEP.EjectAng = Angle(0,90,0)
SWEP.ReloadSound = "weapons/tfa_ins2/m1014/toz_shell_insert_2.wav"
SWEP.CockSound = "pwb2/weapons/ithaca37stakeout/pump.wav"
SWEP.weight = 4
SWEP.ScrappersSlot = "Primary"
SWEP.weaponInvCategory = 1
SWEP.ShellEject = "ShotgunShellEject"
SWEP.AutomaticDraw = false
SWEP.UseCustomWorldModel = false
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12/70 gauge"
SWEP.Primary.Cone = 0
SWEP.Primary.Spread = Vector(0.01, 0.01, 0.01)
SWEP.NumBullet = 8
SWEP.Primary.Sound = {"toz_shotgun/toz_fp.wav", 80, 90, 100}
SWEP.Primary.Wait = 0.25
SWEP.AnimShootHandMul = 10
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-26, 0.4, 2.5)
SWEP.RHandPos = Vector(-14, 0, 4)
SWEP.LHandPos = Vector(7, 0, -2)
SWEP.Ergonomics = 0.9
SWEP.DeploySnd = {"homigrad/weapons/draw_hmg.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/hmg_holster.mp3", 55, 100, 110}
SWEP.Penetration = 7
SWEP.WorldPos = Vector(6, -1, -3)
SWEP.WorldAng = Angle(0.8, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.attPos = Vector(0, 0, 0)
SWEP.attAng = Angle(-0.05, -0.8, 0)
SWEP.lengthSub = 9
SWEP.handsAng = Angle(-1, -0.5, 0)

SWEP.LocalMuzzlePos = Vector(28,0.4,1)
SWEP.LocalMuzzleAng = Angle(0.8,0,0)
SWEP.WeaponEyeAngles = Angle(-0.8,0,0)

SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(2, 8, -12)
SWEP.holsteredAng = Angle(210, 0, 180)

SWEP.availableAttachments = {
	barrel = {
		[1] = {"supressor1", Vector(0,0,0), {}},
		[2] = {"supressor6", Vector(3,0,0), {}},
		["mount"] = Vector(-0.5,0.6,0),
	},
	sight = {
		["mountType"] = {"picatinny", "dovetail"},
		["mount"] = {["dovetail"] = Vector(-25, 1, 0),["picatinny"] = Vector(-25, 1, 0)},
	},
	mount = {
		["picatinny"] = {
			"mount3",
			Vector(-25, 0, 0),
			{},
			["mountType"] = "picatinny",
		},
		["dovetail"] = {
			"empty",
			Vector(0, 0, 0),
			{},
			["mountType"] = "dovetail",
		},
	},
}

--local to head
SWEP.RHPos = Vector(2,-5.1,3.5)
SWEP.RHAng = Angle(0,-10,90)
--local to rh
SWEP.LHPos = Vector(18,0,-4)
SWEP.LHAng = Angle(-90,-90,-90)

local ang1 = Angle(-5, -22, 0)

function SWEP:AnimationPost()
	self:BoneSet("l_finger0", vector_origin, fingerhuy1)
	self:BoneSet("l_finger02", vector_origin, fingerhuy2)
	--self:BoneSet("r_finger0", vector_origin, fingerhuy4)

	local animpos = math.Clamp(self:GetAnimPos_Draw(CurTime()),0,1)
	local sin = 1 - animpos
	if sin >= 0.5 then
		sin = 1 - sin
	else
		sin = sin * 1
	end
	sin = sin * 2
	sin = math.ease.InOutSine(sin)
	self.LHPos[1] = 19 - sin * 5
	self.RHPos[1] = 0 - sin * 2

	self.RHPos[1] = 1 - sin * 4

	local wep = self:GetWeaponEntity()
	if CLIENT and IsValid(wep) then
		wep:ManipulateBonePosition(2,Vector(0,sin * 5,0),false)
	end
end

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
	Angle(-5,15,5),
	Angle(-6,15,14),
	Angle(-7,15,16),
	Angle(-8,16,15),
	Angle(-7,17,16),
	Angle(-10,15,-15),
	Angle(-2,22,-15),
	Angle(0,15,-32),
	Angle(0,14,-45),
	Angle(0,12,-55),
	Angle(0,10,-54),
	Angle(0,0,0)
}