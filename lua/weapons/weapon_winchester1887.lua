SWEP.Base = "weapon_m4super"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "Winchester Model 1887"
SWEP.Author = "Winchester"
SWEP.Instructions = "Амакавбой"
SWEP.Category = "Weapons - Shotguns"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/w_iw4_1887.mdl"

SWEP.WepSelectIcon2 = Material("vgui/hud/iw4_1887")
SWEP.IconOverride = "vgui/hud/iw4_1887"

SWEP.CustomShell = "12x70"
SWEP.EjectPos = Vector(0,15,2)
SWEP.EjectAng = Angle(0,-90,0)

SWEP.weight = 3
SWEP.ScrappersSlot = "Primary"
SWEP.weaponInvCategory = 1
SWEP.ShellEject = "ShotgunShellEject"
SWEP.AutomaticDraw = false
SWEP.UseCustomWorldModel = false
SWEP.Primary.ClipSize = 6
SWEP.Primary.DefaultClip = 6
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "12/70 gauge"
SWEP.Primary.Cone = 0
SWEP.Primary.Spread = Vector(0.02, 0.02, 0.02)
SWEP.Primary.Damage = 18
SWEP.Primary.Force = 13
SWEP.Primary.Sound = {"weapons/iw4/1887/fire.wav", 80, 90, 100}




SWEP.CanSuicide = true

SWEP.ReloadHold = "pistol"

SWEP.LocalMuzzlePos = Vector(36,0,4.2)
SWEP.LocalMuzzleAng = Angle(0.1,0,0)
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
SWEP.AnimInsert = 0.3
SWEP.AnimDraw = 0.4

SWEP.CockSound = "snds_jack_gmod/ez_weapons/ssr/open.wav"
SWEP.ReloadSound = "weapons/tfa_ins2/winchester_1894/winchester_round_insert_2.wav"

SWEP.Primary.Wait = 0.25
SWEP.NumBullet = 1
SWEP.addSprayMul = 1
SWEP.ReloadTime = 1
SWEP.DeploySnd = {"homigrad/weapons/draw_hmg.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/hmg_holster.mp3", 55, 100, 110}
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, 0, 5.5)
SWEP.RHandPos = Vector(-12, -2, 4)
SWEP.LHandPos = Vector(15, 1, -2)
SWEP.AimHands = Vector(-3, 1.95, -4.2)
SWEP.SprayRand = {Angle(-0.6, -0.1, 0), Angle(-0.7, 0.2, 0)}
SWEP.Ergonomics = 0.75
SWEP.Penetration = 15
SWEP.WorldPos = Vector (0, -1, -1)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.handsAng = Angle(-1, 1, 0)


SWEP.attPos = Vector(8,0.4,0)
SWEP.attAng = Angle(-0.1,0.3,0)

if CLIENT then
	function SWEP:DrawHUDAdd()
	end
end

SWEP.lengthSub = 5

local anims = {
	Vector(0,0,0),
	Vector(-1,0,1),
	Vector(-1,0,1),
	Vector(-0.5,0,1.2),
	Vector(0,0,2),
	Vector(4,0,2),
}

function SWEP:AnimationPost()
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
		
		self.inanim = true
		self.RHPosOffset = Lerp(lerp,anims[math.Clamp(lohsin,1,#anims)],anims[math.Clamp(lohsin+1,1,#anims)])
	else
		self.inanim = nil
		self.RHPosOffset[1] = 0
		self.RHPosOffset[2] = 0
		self.RHPosOffset[3] = 0
	end
	if CLIENT and IsValid(wep) then
		wep:ManipulateBonePosition(4,Vector(0*sin , 0, -4.5*sin ),false)
		wep:ManipulateBoneAngles(5,Angle(0 , -40*math.min(sin*2,1), 0),false)
	end
end

SWEP.holsteredBone = "ValveBiped.Bip01_Spine2"
SWEP.holsteredPos = Vector(5, 9.8, -4)
SWEP.holsteredAng = Angle(-30, 180, 0)

SWEP.DistSound = "mosin/mosin_dist.wav"
SWEP.bipodAvailable = true

--local to head
SWEP.RHPos = Vector(3,-6,3)
SWEP.RHAng = Angle(-8,0,65)

--local to rh
SWEP.LHPos = Vector(16,1,-3)
SWEP.LHAng = Angle(-90,-10,-180)

local finger1 = Angle(-0, -30, 0)
local finger2 = Angle(-0, 20, 0)
local finger3 = Angle(0, -25, 0)
local finger4 = Angle(0, -10, 0)

function SWEP:AnimHoldPost(model)
	self:BoneSet("l_finger0", vector_zero, finger1)
	self:BoneSet("l_finger02", vector_zero, finger2)
	self:BoneSet("l_finger1", vector_zero, finger3)
	self:BoneSet("l_finger11", vector_zero, finger4)
	self:BoneSet("l_finger2", vector_zero, finger3)
	self:BoneSet("l_finger21", vector_zero, finger4)
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