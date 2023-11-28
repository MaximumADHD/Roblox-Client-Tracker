local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Controller = {}
Controller.__index = Controller

function Controller.new(player : Player)
    local self = setmetatable({}, Controller)
    self.playerCharRemovingConn = player.CharacterRemoving:Connect(function()
        self:Destroy()
    end)

    self.char = player.Character or player.CharacterAdded:Wait()
    self.config = require(self.char.ConfigData).Swim

    return self
end

function Controller:Destroy()
    if self.playerCharRemovingConn then
        self.playerCharRemovingConn:Disconnect()
        self.playerCharRemovingConn = nil
    end
end

function Controller:Update(data)
    local newState = data.state
    local activeMoving = data.params.inputDir.Magnitude > self.config.IdleSpeedThreshold

    if newState ~= "Swimming" then
        return
    end

    -- TODO: move to fsm
    if newState == "Swimming" and not activeMoving then
        return {
            state = "SwimIdle"
        }
    end

    return {
        state = newState
    }
end

return Controller