HumanoidSpeedMonitor = {
    humanoidSpeed = 0,
    humanoid = nil,
}

function HumanoidSpeedMonitor:Init(humanoid: Humanoid)
    self.humanoid = humanoid
    humanoid.Running:Connect(function(speed)
        self.humanoidSpeed = speed
    end)

    humanoid.Swimming:Connect(function(speed)
        self.humanoidSpeed = speed
    end)

    humanoid.Climbing:Connect(function(speed)
        self.humanoidSpeed = speed
    end)
end

function HumanoidSpeedMonitor:GetSpeed()
    if
        table.find({
            Enum.HumanoidStateType.Running,
            Enum.HumanoidStateType.Swimming,
            Enum.HumanoidStateType.Climbing,
        }, self.humanoid:GetState())
    then
        return self.humanoidSpeed
    else
        return 0
    end
end

return {
    new = function(humanoid: Humanoid)
        local newMonitor = table.clone(HumanoidSpeedMonitor)
        newMonitor:Init(humanoid)
        return newMonitor
    end,
}
