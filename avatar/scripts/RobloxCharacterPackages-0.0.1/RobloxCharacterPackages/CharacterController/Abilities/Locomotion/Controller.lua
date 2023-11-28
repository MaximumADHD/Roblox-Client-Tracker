local Controller = {}
Controller.__index = Controller

function updateControllerManagerConfig(controllerManager, config)
    controllerManager.BaseMoveSpeed = config.BaseMoveSpeed
    controllerManager.BaseTurnSpeed = config.BaseTurnSpeed
end

function updateRunningControllerConfig(runningController, config)
    runningController.AccelerationTime = config.RunningAccelerationTime
    runningController.DecelerationTime = config.RunningDecelerationTime
end

function Controller.new(player : Player)
    local self = setmetatable({}, Controller)
    self.connections = {}
    self.connections.playerCharRemovingConn = player.CharacterRemoving:Connect(function()
        self:Destroy()
    end)

    self.char = player.Character or player.CharacterAdded:Wait()
    self.config = require(self.char.ConfigData).Locomotion
    self.controllerManager = self.char:FindFirstChild("ControllerManager")

    if self.controllerManager then
        updateControllerManagerConfig(self.controllerManager, self.config)

        self.runningController = self.controllerManager:FindFirstChild("RunningController")
        if self.runningController then
            updateRunningControllerConfig(self.runningController, self.config)
        end
    end

    self.connections.charDescendantAddedConn = self.char.DescendantAdded:Connect(function(descendant)
        if descendant.Name == "ControllerManager" then
            self.controllerManager = descendant
            updateControllerManagerConfig(self.controllerManager, self.config)
        end

        if descendant.Name == "RunningController" and descendant.Parent.Name == "ControllerManager" then
            self.runningController = descendant
            updateRunningControllerConfig(self.runningController, self.config)
        end
    end)

    self.connections.charDescendantRemovingConn = self.char.DescendantRemoving:Connect(function(descendant)
        if descendant.Name == "ControllerManager" then
            self.controllerManager = nil
        end

        if descendant.Name == "RunningController" and descendant.Parent.Name == "ControllerManager" then
            self.runningController = nil
        end
    end)

    function self.updateControllerManagerWhenConfigChanged(key)
        self.connections[key] = self.config:GetConfigChangedSignal(key):Connect(function()
            updateControllerManagerConfig(self.controllerManager, self.config)
            updateRunningControllerConfig(self.runningController, self.config)
        end)
    end
    
    self.updateControllerManagerWhenConfigChanged("RunningAccelerationTime")
    self.updateControllerManagerWhenConfigChanged("RunningDecelerationTime")
    self.updateControllerManagerWhenConfigChanged("BaseMoveSpeed")
    self.updateControllerManagerWhenConfigChanged("BaseTurnSpeed")

    return self
end

function Controller:Destroy()
    for _, connection in self.connections do
        if connection then
            connection:Disconnect()
        end
    end

    table.clear(self.connections)
end

function Controller:Update(data)
end

return Controller