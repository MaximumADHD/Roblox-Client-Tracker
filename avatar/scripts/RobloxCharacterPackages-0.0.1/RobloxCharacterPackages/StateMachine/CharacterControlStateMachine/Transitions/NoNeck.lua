--[[ NoNeck Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local NoNeck = baseTransition:inherit()
NoNeck.name = script.Name
NoNeck.destinationName = "Dead"
NoNeck.sourceName =
    "Climbing, FallingDown, Freefall, GettingUp, Jumping, Landed, Physics, PlatformStanding, Ragdoll, Running, Seated, Swimming"
NoNeck.priority = 3

function NoNeck:Test(stateMachine)
    local hadNeck = stateMachine.context.hadNeck
    if not stateMachine.context.requiresNeck then
        return false
    end

    local humanoid = stateMachine.context.humanoid
    if not humanoid then
        return hadNeck
    end

    local head = humanoid.parent:FindFirstChild("Head")
    local torso = humanoid.parent:FindFirstChild("UpperTorso")

    if not head then
        return hadNeck
    end

    local neck = head:FindFirstChild("Neck")
    if not neck then
        return hadNeck
    end

    if not torso then
        return hadNeck
    end

    if
        not (
            neck.Part0 == head and neck.Part1 == torso
            or neck.Part0 == torso and neck.Part1 == head
        )
    then
        return hadNeck
    end
    stateMachine.context.hadNeck = true
    return false
end

return NoNeck
