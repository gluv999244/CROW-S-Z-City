if SERVER then AddCSLuaFile() end
SWEP.Base = "weapon_hg_grenade"
SWEP.PrintName = "Holy Grenade"
SWEP.Instructions = "Халилуя"
SWEP.Category = "Weapons - Explosive"
SWEP.Spawnable = true
SWEP.HoldType = "grenade"
SWEP.ViewModel = ""
SWEP.WorldModel = "models/freeman/holyhandgrenade.mdl"
if CLIENT then
    SWEP.WepSelectIcon = Material("entities/holygrenade.png")
    SWEP.IconOverride = "entities/holygrenade.png"
    SWEP.BounceWeaponIcon = false
end

SWEP.AutoSwitchTo = false
SWEP.AutoSwitchFrom = false
SWEP.Slot = 4
SWEP.SlotPos = 10
SWEP.ENT = "ent_hg_holy_grenade_worms"

SWEP.offsetVec = Vector(3.5, -2, 0)
SWEP.offsetAng = Angle(180, 0, 0)

function SWEP:PickupFunc(ply)
    local wep = ply:GetWeapon(self:GetClass())
    if IsValid(wep) and wep.count < 5 then
        
        wep.count = wep.count + self.count
        self:Remove()
        
        return true
    end
    return false
end