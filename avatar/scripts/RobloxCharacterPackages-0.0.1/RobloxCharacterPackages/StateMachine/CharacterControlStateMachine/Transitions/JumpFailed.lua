--[[ Finished Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)
local offFloorGrace = require(script.Parent.OffFloorGrace)
local jumping = require(script.Parent.Parent.States.Jumping)

local JumpFailed = baseTransition:inherit()
JumpFailed.name = script.Name
JumpFailed.destinationName = "Landed"
JumpFailed.sourceName = "Jumping"
JumpFailed.priority = 3

function JumpFailed:Test(stateMachine)
    local groundSensor = stateMachine.context.humanoid.Parent.HumanoidRootPart.GroundSensor
    if not groundSensor then
        return false
    end

    local offFloorGraceDelay = offFloorGrace.delay
    -- Character is still in Jumping State but on ground after offFloorGraceDelay, then jump failed
    return stateMachine.context.timer <= jumping.timerCount - offFloorGraceDelay
end

return JumpFailed
