--[[ NoBuoyancy Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local NoBuoyancy = baseTransition:inherit()
NoBuoyancy.name = script.Name
NoBuoyancy.destinationName = "GettingUp"
NoBuoyancy.sourceName = "Swimming"
NoBuoyancy.priority = 3

function NoBuoyancy:Test(stateMachine)
    local visibleTorso = stateMachine.context.humanoid.Parent:FindFirstChild("UpperTorso")
    if not visibleTorso then
        return true
    end
    local BuoyancySensor = visibleTorso:FindFirstChild("BuoyancySensor")
    return not BuoyancySensor
        or (not BuoyancySensor.FullySubmerged and not BuoyancySensor.TouchingSurface)
end

return NoBuoyancy
