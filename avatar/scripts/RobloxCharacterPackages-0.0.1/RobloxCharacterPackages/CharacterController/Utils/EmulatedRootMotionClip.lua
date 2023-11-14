-- THIS SHOULD BE USED FOR TESTING
-- If something needs RM, just export it with the animation
local Layer = require(game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor.Base.Layer)

-- Emulates linear constant root motion when defined in config
local EmulatedRootMotionClip = Layer:extend("EmulatedRootMotionClip")

EmulatedRootMotionClip.defaultProps = {
    speed = 0,
    dt = 0,
}

function EmulatedRootMotionClip:update(dt)
    for _, layer in self.children do
        layer:update(dt)
    end
end

function EmulatedRootMotionClip:getDuration(): number
    if #self.children == 1 then
        return self.children[1]:getDuration()
    end
    return 0
end

function EmulatedRootMotionClip:updateToPhase(phase: number)
    if #self.children == 1 then
        self.children[1]:updateToPhase(phase)
    end
end

function EmulatedRootMotionClip:evaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateEmptyPose()

    -- The dir vector is just taken as character space forward hence (0, 0, -1)
    pose:SetTranslation("RootMotionDelta", Vector3.new(0, 0, -1) * self.props.speed * self.props.dt)

    return pose
end

return EmulatedRootMotionClip