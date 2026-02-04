if SERVER then AddCSLuaFile() end

ENT.Base = "ent_hg_grenade"
ENT.Spawnable = false
ENT.Model = "models/freeman/holyhandgrenade.mdl"
ENT.timeToBoom = 3
ENT.Fragmentation = 1000 * 2
ENT.BlastDis = 15
ENT.Penetration = 20
ENT.TickSound = "weapons/grenade/tick1.wav"            -- звук тика
ENT.PreExplosionSound = "weapons/svn/holyhandgrenade/holyexplodeworms.wav" -- звук, который проигрывается перед взрывом
ENT.TrailSprite = "sprites/light_glow02_add_noz"


if SERVER then
    function ENT:InitAdd()
        -- вычисляем общее время до взрыва (база использует self.timeToBoom для проверки взрыва)
        self.timeToBoom = (self.SoundDelay or 3) + (self.AfterSoundDelay or 3)

        -- состояние
        self.SoundPlayed = false
        self.Exploded = false

        -- создаём визуальный след (совместимый с базой)
        if util.IsValidModel(self:GetModel()) then
            util.SpriteTrail(self, 0, Color(255, 255, 180), true, 6, 1, 0.5, 1 / (6 + 1) * 0.5, self.TrailSprite)
        end
    end

    function ENT:AddThink()
        -- если таймер не выставлен (ещё не армирована) — ничего не делаем
        if not self.timer then return end

        self.nextthink = self.nextthink or CurTime()
        if self.nextthink > CurTime() then return end

        local elapsed = CurTime() - (self.timer or CurTime())
        local total = self.timeToBoom or (self.SoundDelay + self.AfterSoundDelay)
        local timeToSound = self.SoundDelay or 3
        local timeLeftTotal = total - elapsed

        -- Подстраиваем частоту тиков: быстрее когда осталось меньше времени (плавно)
        self.nextthink = CurTime() + 0.5 * math.max(timeLeftTotal / (total * 0.75), 0.25)

        -- Пока главный звук не сыгран — проигрываем тики
        if not self.SoundPlayed then
            -- если наступило время проиграть главный звук
            if elapsed >= timeToSound then
                -- Проиграть один раз "предвзрывной" звук
                if IsValid(self) then
                    self:EmitSound(self.PreExplosionSound, 100, 100)
                end

                self.SoundPlayed = true
                self.SoundTime = CurTime()

                -- не вызываем тут Explode — базовый Think вызовет Explode когда пройдет полный self.timeToBoom
            else
                -- обычный тик
                if IsValid(self) then
                    self:EmitSound(self.TickSound, 65, 100)
                end
                -- извещаем ИИ (если у тебя есть hg.EmitAISound как в базе)
                if hg and hg.EmitAISound then
                    hg.EmitAISound(self:GetPos(), 256, 2, 8)
                end
            end
        end

        -- NOTE: не вызываем Explode() здесь — базовый Think проверит (CurTime() - self.timer) > self.timeToBoom и вызовет Explode()
    end
end

if CLIENT then
    function ENT:Draw()
        self:DrawModel()
        -- можно добавить визуал обратного отсчёта/мигание тут если нужно
    end
end
