local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

type HeadRotate = Types.ExtendLayer<{ __accumulatedTime: number }>

local HeadRotate: HeadRotate = Layer:extend("HeadRotate")

function HeadRotate:onInit()
    self.__accumulatedTime = 0
end

function HeadRotate:onUpdate(dt: number, phaseState: Types.PhaseState?)
    self.__accumulatedTime += dt
    if #self.children == 1 then
        self.children[1]:update(dt, phaseState)
    end

    return nil
end

function HeadRotate:onEvaluate(mask)
    local pose = if #self.children == 1
        then self.children[1]:evaluate(mask)
        else AnimationPose.createRest(mask)

    local head = (pose :: any):GetArticulatedJoint("Head", mask)
    if head == nil then
        return pose
    end
    head.LocalCFrame *= CFrame.fromAxisAngle(Vector3.yAxis, math.sin(self.__accumulatedTime * 2))

    return pose
end

function HeadRotate:onReset()
    self.__accumulatedTime = 0
end

return HeadRotate :: Types.Layer
