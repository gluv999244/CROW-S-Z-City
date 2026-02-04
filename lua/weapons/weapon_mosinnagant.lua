SWEP.Base = "weapon_m4super"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Mosin-Nagant"
SWEP.Author = "Mosin"
SWEP.Instructions = "Sniper rifle chambered in 7.62x51"
SWEP.Category = "Weapons - Sniper Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_ins2_mosin_nagant.mdl"

SWEP.WepSelectIcon2 = Material("vgui/hud/tfa_ins2_mosin_nagant")
SWEP.IconOverride = "vgui/hud/tfa_ins2_mosin_nagant"

SWEP.CustomShell = "762x54"
SWEP.EjectPos = Vector(0,15,2)
SWEP.EjectAng = Angle(0,-90,0)

SWEP.weight = 3
SWEP.addweight = 3
SWEP.podkid = 0.2
SWEP.animposmul = 1.5

SWEP.ScrappersSlot = "Primary"
SWEP.weaponInvCategory = 1
SWEP.ShellEject = "RifleShellEject"
SWEP.AutomaticDraw = false
SWEP.UseCustomWorldModel = false
SWEP.Primary.ClipSize = 5
SWEP.Primary.DefaultClip = 5
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "7.62x54 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Spread = 0
SWEP.Primary.Damage = 65
SWEP.Primary.Force = 125
SWEP.Primary.Sound = {"weapons/mosin_nagant/mosin_fire.wav", 80, 90, 100}
SWEP.availableAttachments = {
	barrel = {
		[1] = {"supressor1", Vector(0,0,0), {}},
		[2] = {"supressor6", Vector(0,0,0), {}},
		["mount"] = Vector(-6,0.2,0),
		["mountAngle"] = Angle(0,0,0)
	},
	sight = {
		["mountType"] = {"picatinny", "dovetail"},
		["mount"] = {["dovetail"] = Vector(-25, 1.6, -0.1),["picatinny"] = Vector(-24.5, 0, -0.22)},
	},
	mount = {
		["picatinny"] = {
			"mount3",
			Vector(-22.5, 0, -1.26),
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
	underbarrel = {
		["mountType"] = "picatinny",
		["mount"] = Vector(-7,1.4,-0.2),
		["mountAngle"] = Angle(0, 0, 0),
	},
}

SWEP.CanSuicide = true

SWEP.ReloadHold = "pistol"

SWEP.LocalMuzzlePos = Vector(37,0.19,2.5)
SWEP.LocalMuzzleAng = Angle(-0.2,-0.104,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.AnimShootMul = 1
SWEP.AnimShootHandMul = 1

SWEP.ReloadDrawTime = 0.2
SWEP.ReloadDrawCooldown = 0.3
SWEP.ReloadInsertTime = 0.1
SWEP.ReloadInsertCooldown = 0.1
SWEP.ReloadInsertCooldownFire = 0.1

SWEP.AnimStart_Draw = 0
SWEP.AnimStart_Insert = 0
SWEP.AnimInsert = 0.6
SWEP.AnimDraw = 0.8

SWEP.CockSound = "snd_jack_hmcd_boltcycle.wav"
SWEP.ReloadSound = "weapons/mosin/round-insert01.wav"

SWEP.Primary.Wait = 0.25
SWEP.NumBullet = 1
SWEP.addSprayMul = 1
SWEP.ReloadTime = 1
SWEP.DeploySnd = {"homigrad/weapons/draw_hmg.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/hmg_holster.mp3", 55, 100, 110}
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-9, 0, 3.5399)
SWEP.RHandPos = Vector(-12, -2, 4)
SWEP.LHandPos = Vector(15, 1, -2)
SWEP.AimHands = Vector(-3, 1.95, -4.2)
SWEP.SprayRand = {Angle(-0.3, -0.1, 0), Angle(-0.3, 0.1, 0)}
SWEP.Ergonomics = 0.85
SWEP.Penetration = 15
SWEP.ZoomFOV = 20
SWEP.WorldPos = Vector(3, -1.5, -2)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.handsAng = Angle(-1, 1, 0)
SWEP.scopemat = Material("decals/scope.png")
SWEP.perekrestie = Material("decals/perekrestie6.png")
SWEP.localScopePos = Vector(-27.5, 5.575, -0.09)
SWEP.scope_blackout = 400
SWEP.rot = 191
SWEP.FOVMin = 2
SWEP.FOVMax = 10
SWEP.FOVScoped = 40
SWEP.blackoutsize = 2500
SWEP.sizeperekrestie = 2048
SWEP.ShockMultiplier = 2

SWEP.attPos = Vector(0,0,0)
SWEP.attAng = Angle(-0.1,0.3,0)

if CLIENT then
	function SWEP:DrawHUDAdd()
	end
end

SWEP.lengthSub = 5

local anims = {
	Vector(0,0,0),
	Vector(1,2,-1),
	Vector(1,2,-1),
	Vector(0,2,-1),
	Vector(-1,2,-1),
	Vector(-2,2,-1),
}

function SWEP:AnimationPostPost()
	local wep = self:GetWeaponEntity()
	local animpos = math.Clamp(self:GetAnimPos_Draw(CurTime()),0,1)
	local sin = 1 - animpos
	if sin >= 0.5 then
		sin = 1 - sin
	else
		sin = sin * 1
	end
	if sin > 0 then
		sin = sin * 2
		sin = math.ease.InOutSine(sin)

		local lohsin = math.floor(sin * (#anims))
		local lerp = sin * (#anims) - lohsin
		
		self.RHPosOffset = Lerp(lerp,anims[math.Clamp(lohsin,1,#anims)],anims[math.Clamp(lohsin+1,1,#anims)])
		self.RHPos[1] = 3 - sin * 1
		self.RHPos[2] = -4.8
	else
		self.RHPosOffset[1] = 0
		self.RHPosOffset[2] = 0
		self.RHPosOffset[3] = 0
	end
	if CLIENT and IsValid(wep) then
		wep:ManipulateBonePosition(4,Vector(0*sin , 0, -4.5*sin ),false)
		wep:ManipulateBoneAngles(5,Angle(0 , -40*math.min(sin*2,1), 0),false)
	end
end

SWEP.DistSound = "mosin/mosin_dist.wav"
SWEP.bipodAvailable = true

--local to head
SWEP.RHPos = Vector(2,-4.8,3)
SWEP.RHAng = Angle(0,0,90)

--local to rh
SWEP.LHPos = Vector(17,0.3,-4.2)
SWEP.LHAng = Angle(-90,-90,-90)

local finger1 = Angle(0, -20, 0)
local finger2 = Angle(0, 0, 0)
local finger3 = Angle(0, -20, 0)

function SWEP:AnimHoldPost(model)
	self:BoneSet("l_finger0", vector_zero, finger1)
	self:BoneSet("l_finger02", vector_zero, finger2)

end

-- RELOAD ANIM AKM
SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(-2,11,-15),
	Vector(-2,11,-10),
	Vector(-1,-2,-7),
	Vector(-1,-2,-7),
	Vector(-1,-1,-7),
	Vector(-1,-1,-7),
	"reloadend",
	Vector(0,0,0),
}

SWEP.ReloadAnimRH = {
	Vector(0,0,0)
}

SWEP.ReloadAnimLHAng = {
	Angle(0,0,0),
	Angle(0,-25,170),
	Angle(0,-25,170),
	Angle(0,-25,170),
	Angle(0,-25,170),
	Angle(0,0,0)
}

SWEP.ReloadAnimRHAng = {
	Angle(0,0,0),
}

SWEP.ReloadAnimWepAng = {
	Angle(0,0,0),
	Angle(0,5,25),
	Angle(0,5,25),
	Angle(5,5,25),
	Angle(3,5,25),
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