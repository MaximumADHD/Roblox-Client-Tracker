--[[ Climbing State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Climbing = baseState:inherit()
Climbing.name = script.Name
Climbing.humanoidState = Enum.HumanoidStateType.Climbing
Climbing.activeController = "ClimbController"
Climbing.isEnabled = true

function Climbing:OnStepped(stateMachine, dt)
    baseState.OnStepped(self, stateMachine, dt)
end

return Climbing
