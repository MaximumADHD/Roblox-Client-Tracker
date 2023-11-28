--[[ Tipped Transition ]]
--
local baseTransition = require(
    script.Parent.Parent.Parent
        :WaitForChild("BaseStateMachine")
        :WaitForChild("BaseTransitionModule")
)

local Tipped = baseTransition:inherit()
Tipped.name = script.Name
Tipped.destinationName = "FallingDown"
Tipped.sourceName = "Landed, Running"
Tipped.priority = 3
Tipped.tiltThreshhold = 0.7

function Tipped:Test(stateMachine)
    local rootPart = stateMachine.context.rootPart
    if rootPart then
        local upVec = rootPart.CFrame.upVector
        return upVec.y < Tipped.tiltThreshhold -- TODO: and not just get out of water?
    else
        return true
    end
end

return Tipped
