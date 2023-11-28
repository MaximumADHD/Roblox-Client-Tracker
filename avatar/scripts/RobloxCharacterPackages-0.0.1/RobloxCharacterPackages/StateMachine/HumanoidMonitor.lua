--! strict
local HumanoidMonitor = {}

local humaoidConnections = {}

function HumanoidMonitor.MonitorHumanoidPropertyChange(humanoid: Humanoid, CCSM: any)
    HumanoidMonitor.StopMonitor(humanoid)
    local stateChangeConnection = humanoid.StateChanged:Connect(function(_oldState, newState)
        local newCurrentState = CCSM:GetCurrentStateName()
        if newState.Name ~= newCurrentState then
            CCSM:SetState(newState.Name)
        end
    end)

    local stateEnabledConnection = humanoid.StateEnabledChanged:Connect(function(state, value)
        local ccsmState = CCSM:GetStateByName(state.Name)
        if ccsmState ~= nil then
            ccsmState.isEnabled = value
        end
    end)

    local walkspeedConnect = humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function(dt)
        if CCSM.context.controllerManager ~= nil then
            CCSM.context.controllerManager.BaseMoveSpeed = CCSM.context.humanoid.WalkSpeed
        end
    end)

    local connections = {}
    table.insert(connections, stateChangeConnection)
    table.insert(connections, stateEnabledConnection)
    table.insert(connections, walkspeedConnect)
    humaoidConnections[humanoid] = connections
end

function HumanoidMonitor.StopMonitor(humanoid: Humanoid)
    local connections = humaoidConnections[humanoid]
    if not connections then
        return
    end

    for _, conn in connections do
        conn:Disconnect()
    end
    humaoidConnections[humanoid] = nil
end

return HumanoidMonitor
