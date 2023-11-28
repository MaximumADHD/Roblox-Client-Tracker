local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Controller = {}
Controller.__index = Controller

function Controller.new(player : Player)
    local self = setmetatable({}, Controller)
    self.playerCharRemovingConn = player.CharacterRemoving:Connect(function()
        self:Destroy()
    end)

    self.char = player.Character or player.CharacterAdded:Wait()
    self.config = require(self.char.ConfigData).LocomotionRM

    return self
end

function Controller:Destroy()
    if self.playerCharRemovingConn then
        self.playerCharRemovingConn:Disconnect()
        self.playerCharRemovingConn = nil
    end
end

function Controller:Update(data)
    local notMoving = data.params.inputDir.Magnitude <= self.config.IdleSpeedThreshold
    data.character.CharacterController:SetAttribute("Idle", notMoving)
end

return Controller