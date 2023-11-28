--[[ NoHealth Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local NoHealth = baseTransition:inherit()
NoHealth.name = script.Name
NoHealth.destinationName = "Dead"
NoHealth.sourceName =
    "Climbing, FallingDown, Freefall, GettingUp, Jumping, Landed, Physics, PlatformStanding, Ragdoll, Running, Seated, Swimming"
NoHealth.priority = 3

function NoHealth:Test(stateMachine)
    return stateMachine.context.humanoid.Health <= 0 and stateMachine.context.hadHealth
end

return NoHealth
