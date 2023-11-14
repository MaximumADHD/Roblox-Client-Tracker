local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Controller = {}
Controller.__index = Controller

local Config = require(script.Parent.Config)

function Controller.new(player : Player)
    local self = setmetatable({}, Controller)
    self.playerCharRemovingConn = player.CharacterRemoving:Connect(function()
        self:Destroy()
    end)

    self.char = player.Character or player.CharacterAdded:Wait()
    
    return self
end

function Controller:Destroy()
    if self.playerCharRemovingConn then
        self.playerCharRemovingConn:Disconnect()
        self.playerCharRemovingConn = nil
    end
end

function Controller:Update(data)
    local notMoving = data.params.inputDir.Magnitude <= Config.IdleSpeedThreshold
    data.character.CharacterController:SetAttribute("Idle", notMoving)
end

return Controller