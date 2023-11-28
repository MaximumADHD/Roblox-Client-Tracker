--[[ Seated State ]]
--
local baseState = require(script.Parent.Parent:WaitForChild("CharacterControlBaseStateModule"))

local Seated = baseState:inherit()
Seated.name = script.Name
Seated.humanoidState = Enum.HumanoidStateType.Seated
Seated.activeController = ""
Seated.isEnabled = true

function Seated:OnExit(stateMachine)
    local humanoid = stateMachine.context.humanoid
    humanoid.Sit = false
    --	humanoid.SeatPart = nil
    -- done sitting signal
end

return Seated
