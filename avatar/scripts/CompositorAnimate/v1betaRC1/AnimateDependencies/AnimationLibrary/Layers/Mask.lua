local Workspace = script.Parent.Parent
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Types = require(Workspace.Base.types)

export type MaskLayer = Types.ExtendFiniteLayer<{
    modifier: AnimationMaskModifier,
}>

local MaskLayer = FiniteLayer:extend("MaskLayer") :: MaskLayer

MaskLayer.defaultProps = {
    maskedJoints = {},
}

function MaskLayer:getDuration()
    if #self.children == 1 then
        return self.children[1]:getDuration()
    else
        return 0
    end
end

function MaskLayer:onInit()
    self.modifier = AnimationMaskModifier.new()
        :DisableArticulatedJoints(table.unpack(self.props.maskedJoints))
end

function MaskLayer:onUpdate(dt: number, phaseState: Types.PhaseState?)
    return self.children[1]:update(dt, phaseState)
end

function MaskLayer:onEvaluate(mask): AnimationPose
    if #self.children < 1 then
        return AnimationPose.createRest(mask)
    end

    assert(#self.children <= 1, "Mask layer expects at most one child.")
    local newMask = self.modifier:ApplyTo(mask)
    local pose = self.children[1]:evaluate(newMask)

    return pose
end

return MaskLayer
