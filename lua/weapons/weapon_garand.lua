SWEP.Base = "weapon_m4super"
SWEP.Spawnable = true
SWEP.AdminOnly = false
SWEP.PrintName = "M1 Garand"
SWEP.Author = "John Garand"
SWEP.Instructions = "высотка в нормандии "
SWEP.Category = "Weapons - Sniper Rifles"
SWEP.Slot = 2
SWEP.SlotPos = 10
SWEP.ViewModel = ""
SWEP.WorldModel = "models/weapons/tfa_doi/w_doi_garand.mdl"
SWEP.ScrappersSlot = "Primary"
SWEP.WepSelectIcon2 = Material("vgui/hud/tfa_doi_garand")
SWEP.WepSelectIcon2box = false
SWEP.IconOverride = "vgui/hud/tfa_doi_garand"
SWEP.weight = 4
SWEP.weaponInvCategory = 1
SWEP.CustomShell = "762x51"
--SWEP.EjectPos = Vector(0,5,5)
--SWEP.EjectAng = Angle(-5,180,0)
SWEP.AutomaticDraw = true
SWEP.UseCustomWorldModel = false
SWEP.Primary.ClipSize = 8
SWEP.Primary.DefaultClip = 8
SWEP.Primary.Automatic = false
SWEP.Primary.Ammo = "7.62x51 mm"
SWEP.Primary.Cone = 0
SWEP.Primary.Spread = 0
SWEP.Primary.Damage = 55
SWEP.Primary.Force = 40
SWEP.Primary.Sound = {"weapons/tfa_doi/garand/garand_fp.wav", 65, 90, 100}
SWEP.SupressedSound = {"weapons/tfa_ins2/ak103/ak103_suppressed_fp.wav", 65, 90, 100}

SWEP.addSprayMul = 1
SWEP.cameraShakeMul = 2

SWEP.PPSMuzzleEffect = "muzzleflash_m14" -- shared in sh_effects.lua

SWEP.punchmul = 1
SWEP.punchspeed = 1

SWEP.ShockMultiplier = 2

SWEP.handsAng = Angle(0, 0, 0)
SWEP.handsAng2 = Angle(-3, -2, 0)

SWEP.Primary.Wait = 0.15
SWEP.NumBullet = 1
SWEP.AnimShootMul = 1
SWEP.AnimShootHandMul = 5
SWEP.ReloadTime = 1

SWEP.addSprayMul = 1

SWEP.LocalMuzzlePos = Vector(30.901,-2.5,-2.4)
SWEP.LocalMuzzleAng = Angle(0.003,0,0)
SWEP.WeaponEyeAngles = Angle(0,0,0)

SWEP.CockSound = "snd_jack_hmcd_boltcycle.wav"
SWEP.ReloadSound = "weapons/mosin/round-insert01.wav"
-- RELOAD ANIM AKM
SWEP.ReloadAnimLH = {
	Vector(0,0,0),
	Vector(-2,11,-15),
	Vector(-2,11,-10),
	Vector(-1,-2,-7),
	Vector(-1,-2,-7),
	Vector(-1,-1,-7),
	Vector(-1,-1,-7),
	Vector(-1,-3,-3),
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

SWEP.DeploySnd = {"homigrad/weapons/draw_hmg.mp3", 55, 100, 110}
SWEP.HolsterSnd = {"homigrad/weapons/hmg_holster.mp3", 55, 100, 110}
SWEP.HoldType = "rpg"
SWEP.ZoomPos = Vector(-3, -2.7, -1.2)
SWEP.RHandPos = Vector(-8, -2, 6)
SWEP.LHandPos = Vector(6, -6, 1)
SWEP.AimHands = Vector(-10, 1.8, -6.1)
SWEP.SprayRand = {Angle(0.01, -0.01, 0), Angle(-0.01, 0.01, 0)}
SWEP.Ergonomics = 0.7
SWEP.Penetration = 14
SWEP.ZoomFOV = 20
SWEP.WorldPos = Vector(-3, -4, -7)
SWEP.WorldAng = Angle(0, 0, 0)
SWEP.UseCustomWorldModel = true
SWEP.handsAng = Angle(-6, -1, 0)
SWEP.scopemat = Material("decals/scope.png")
SWEP.perekrestie = Material("decals/perekrestie8.png", "smooth")
SWEP.localScopePos = Vector(-21, 3.95, -0.2)
SWEP.scope_blackout = 400
SWEP.maxzoom = 3.5
SWEP.rot = 37
SWEP.FOVMin = 3.5
SWEP.FOVMax = 10
SWEP.huyRotate = 25
SWEP.FOVScoped = 40

SWEP.DistSound = "weapons/tfa_ins2/sks/sks_dist.wav"

SWEP.lengthSub = 15
--SWEP.Supressor = false
--SWEP.SetSupressor = true

--local to head
SWEP.RHPos = Vector(1,-5,3.5)
SWEP.RHAng = Angle(0,-15,90)
--local to rh
SWEP.LHPos = Vector(17,0.5,-3.7)
SWEP.LHAng = Angle(-100,-90,-90)

local lfang02 = Angle(-0, -0, 0)
local lfang0 = Angle(-10, -16, 0)

function SWEP:AnimHoldPost()
	self:BoneSet("l_finger0", vector_origin, lfang0)
	self:BoneSet("l_finger02", vector_origin, lfang02)
end

local anims = {
	Vector(0,0,0),
	Vector(1,0,1),
	Vector(2,1,2),
	Vector(3,2,0),
	Vector(4,3,0),
	Vector(4,4,-1),
}

function SWEP:AnimationPost()

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