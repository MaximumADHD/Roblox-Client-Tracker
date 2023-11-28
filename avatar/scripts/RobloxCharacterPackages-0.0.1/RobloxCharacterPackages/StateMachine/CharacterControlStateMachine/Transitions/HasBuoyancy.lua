--[[ HasBuoyancy Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local HasBuoyancy = baseTransition:inherit()
HasBuoyancy.name = script.Name
HasBuoyancy.destinationName = "Swimming"
HasBuoyancy.sourceName = "FallingDown, GettingUp, Freefall, Landed, Running, Climbing"
HasBuoyancy.priority = 3

function HasBuoyancy:Test(stateMachine)
    local visibleTorso = stateMachine.context.humanoid.Parent:FindFirstChild("UpperTorso")
    if not visibleTorso then
        return false
    end
    local BuoyancySensor = visibleTorso:FindFirstChild("BuoyancySensor")
    return BuoyancySensor and (BuoyancySensor.FullySubmerged or BuoyancySensor.TouchingSurface)
end

return HasBuoyancy
