local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

export type AdditiveLayer = Types.ExtendLayer<{}>

local AdditiveLayer = Layer:extend("AdditiveLayer")

AdditiveLayer.defaultProps = {}

function AdditiveLayer:onInit()
    self.state = {}
end

function AdditiveLayer:onUpdate(deltaTime: number)
    -- update all children
    for i = 1, #self.children do
        self.children[i]:update(deltaTime)
    end
end

function AdditiveLayer:onEvaluate(mask: AnimationMask)
    -- two or three children need to be specifid
    assert(
        #self.children == 2 or #self.children == 3,
        "Two or three children are required (pose, additivePose, optional:additive base)"
    )

    -- Child order is important, the first is the pose we wish to modify.
    -- The second is the additive pose that is applied to the first.
    -- The third additive base pose is optional, it is used to calculate the delta of the additive pose,
    -- 		A base pose can make it easier to author additive animation, for example, having a sitting pose as the base makes it way
    --		easier to author additive animations for seated content.
    -- 		if the base pose is not specified then we use the bind pose to calculate the deltas.
    local pose = self.children[1]:evaluate(mask)
    local additivePose = self.children[2]:evaluate(mask)
    local additiveBasePose = if #self.children == 3
        then self.children[3]:evaluate(mask)
        else AnimationPose.createRest(mask)

    -- subtract the additve base pose from the additive pose to get the delta
    additivePose:Subtract(additiveBasePose, 1.0)

    -- apply additive pose to source pose
    pose:Add(additivePose, self.props.weight)

    return pose
end

function AdditiveLayer:onReset() end

return AdditiveLayer
