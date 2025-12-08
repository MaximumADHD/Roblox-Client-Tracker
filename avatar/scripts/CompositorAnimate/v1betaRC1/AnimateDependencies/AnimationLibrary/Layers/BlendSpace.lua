local Workspace = script.Parent.Parent

local BlendSpace = require(Workspace.BlendSpace)
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Matching = require(Workspace.Base.Matching)
local MultiBlender = require(Workspace.Util.MultiBlender)
local Types = require(Workspace.Base.types)

export type LinkData = {
    position: Vector2,
}

type BlendSpacePosition = BlendSpace.BlendSpacePosition

type BlendSpaceLayerInternal = Types.ExtendFiniteLayer<{
    __blendSpace: BlendSpace.BlendSpace?,
    __fractionalSpeed: number,
    __phasePosition: number,
    __previousPos: BlendSpacePosition,
    __currentPos: BlendSpacePosition,
    __activeLayers: { BlendSpace.LayerWeightPair },
    __multiBlender: MultiBlender.MultiBlender,
}>

local BlendSpaceLayer = FiniteLayer:extend("BlendSpace") :: BlendSpaceLayerInternal

BlendSpaceLayer.defaultProps = {
    blendSpaceType = BlendSpace.Type.Scalar,
    speed = 1,
    targetPosition = 0,
    positionSmoothingTime = 0.0, -- Uses exponential smoothing currently
    lowLodThreshold = 2,
}

function BlendSpaceLayer:onInit()
    self.__fractionalSpeed = 0
    self.__phasePosition = 0
    self.__currentPos = self.props.targetPosition
    self.__activeLayers = {}
    self.__multiBlender = MultiBlender.new()

    self.__blendSpace = BlendSpace.new(self.props.blendSpaceType, self.children)
end

function BlendSpaceLayer:getDuration()
    if self.__fractionalSpeed == 0 then
        return 0
    end
    return 1 / (self.__fractionalSpeed * self.props.speed)
end

function BlendSpaceLayer:getTimePositionNormalized(): number
    return self.__phasePosition
end

function calculateFractionalSpeed(layerWeightPairs: { BlendSpace.LayerWeightPair })
    local fractionalSpeed = 0
    for i, layerWeight in layerWeightPairs do
        local duration = layerWeight.layer:getDuration()
        if duration == 0 then
            return 0
        end
        fractionalSpeed += layerWeight.weight / duration
    end

    return fractionalSpeed
end

local function smoothPosExponential(
    currentPosition: BlendSpacePosition,
    targetPosition: BlendSpacePosition,
    smoothingTime: number,
    dt: number
): BlendSpacePosition
    assert(smoothingTime >= 0 and dt >= 0, "positionSmoothingTime must be positive")
    -- With exponential decay a rate of 1/smothingTime only gets you 40% of the way to your target
    -- after smoothingTime has elapsed.  So the time to reach the target is actually significantly
    -- longer than smoothingTime.  This instead uses a rate of 3/smoothingTime, which gets you ~95%
    -- of the way to the target in smoothingTime
    local exponent = 3 / smoothingTime * dt
    if exponent > 36.7368 then -- ln(2^-53)
        return targetPosition
    end
    local decay: number = math.exp(-exponent)
    -- Casting to any to suppress type errors.
    local delta = (currentPosition - targetPosition :: any)
    local newPosition = (decay * delta + targetPosition)
    return newPosition
end

function BlendSpaceLayer:onUpdate(dt: number, phaseState: Types.PhaseState?)
    if self.__blendSpace == nil then
        return nil
    end
    assert(self.__blendSpace ~= nil)

    self.__currentPos = smoothPosExponential(
        self.__currentPos,
        self.props.targetPosition,
        self.props.positionSmoothingTime,
        dt
    )

    local isLowLod = self.context.lod >= self.props.lowLodThreshold
    self.__activeLayers = self.__blendSpace:sample(self.__currentPos, isLowLod)
    self.__fractionalSpeed = calculateFractionalSpeed(self.__activeLayers)
    self.__phasePosition += (self.__fractionalSpeed * dt * self.props.speed) % 1

    local childrenPhaseState = Matching.createPhaseStateForBlendSpace(self.__phasePosition)
    for _, layerWeight in self.__activeLayers do
        layerWeight.layer:update(dt, childrenPhaseState)
    end
    return nil
end

function BlendSpaceLayer:onEvaluate(mask)
    for _, layerWeight in self.__activeLayers do
        self.__multiBlender:addPose(layerWeight.layer:evaluate(mask), layerWeight.weight)
    end
    return self.__multiBlender:blend(mask)
end

function BlendSpaceLayer:onReset()
    self.__phasePosition = 0
    self.__currentPos = self.props.targetPosition
    self.__activeLayers = {}
end

function BlendSpaceLayer:getChildDebugData(index: number, child: Types.Layer): Types.Map?
    local debugData = {
        weight = 0,
        index = index,
        linkData = {
            position = (child.linkData :: LinkData).position,
        },
    }

    for _, layerWeightPair in self.__activeLayers do
        if layerWeightPair.layer == child then
            debugData.weight = layerWeightPair.weight
        end
    end
    return debugData
end

return BlendSpaceLayer :: Types.FiniteLayer
