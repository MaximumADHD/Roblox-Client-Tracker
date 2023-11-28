local Compositor = game.ReplicatedStorage.RobloxCharacterPackages.MotionCompositor
local Layer = require(Compositor.Base.Layer)
local Types = require(Compositor.Base.types)

type TurnLayer = Types.Layer<{ gt: number }>
local TurnLayer = Layer:extend("TurnLayer")

TurnLayer.defaultProps = {
    targetFacingDir = Vector3.zero,
    hrpCF = Vector3.zero,
}
TurnLayer.defaultLinkData = {}

function TurnLayer:update(dt)
    for _, layer in self.children do
        layer:update(dt)
    end
end

function TurnLayer:evaluate(mask)   
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else mask:CreateEmptyPose()
    
    -- XXX: Shouldn't need this, but this prop is nil for the first few frames.
    --      Anim.createCompositor() should have initialized a default value.
    if self.props.targetFacingDir == nil then
        return mask:CreateEmptyPose()
    end
        
    -- Rotate the root to match the desired facing direction.
    -- Expressed as a delta, so subtract the target facing direction with our
    -- current facing direction.
    local lookAt = CFrame.lookAt(Vector3.zero, self.props.targetFacingDir)
    
    local _, curAngle = self.props.hrpCF:ToAxisAngle()
    local targetAxis, targetAngle = lookAt:ToAxisAngle()
    
    local delta = targetAngle - curAngle
    local newCF = CFrame.fromAxisAngle(targetAxis, delta)
    
    pose:SetRotation("RootMotionDelta", newCF)

    return pose
end

return TurnLayer