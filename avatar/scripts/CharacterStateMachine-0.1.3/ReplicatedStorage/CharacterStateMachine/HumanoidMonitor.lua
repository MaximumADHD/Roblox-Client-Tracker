--! strict
local HumanoidMonitor = {}

local stateChangeConnection

function HumanoidMonitor.MonitorHumanoidPropertyChange(humanoid : Humanoid, CCSM : any)
	stateChangeConnection = humanoid.StateChanged:Connect(function(_oldState, newState)
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

	humanoid:GetPropertyChangedSignal("WalkSpeed"):Connect(function(dt)
		if CCSM.context.controllerManager ~= nil then
			CCSM.context.controllerManager.BaseMoveSpeed = CCSM.context.humanoid.WalkSpeed
		end
	end)
end

return HumanoidMonitor
