--[[ Seated State ]]--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Seated = baseState:extend()
Seated.name = script.Name
Seated.humanoidState = Enum.HumanoidStateType.Seated 

function Seated:OnExit(stateMachine)
	local humanoid = stateMachine.context.humanoid
	humanoid.Sit = false
--	humanoid.SeatPart = nil
	-- done sitting signal
end

return Seated
