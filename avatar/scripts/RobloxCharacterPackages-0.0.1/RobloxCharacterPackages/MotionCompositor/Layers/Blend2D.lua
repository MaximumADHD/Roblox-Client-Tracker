local Workspace = script.Parent.Parent
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Matching = require(Workspace.Base.Matching)
local MultiBlender = require(Workspace.Util.MultiBlender)
local Types = require(Workspace.Base.types)

export type LinkData = {
    position: Vector2,
}

type FeatureSpacePos = {
    direction: Vector2,
    speed: number,
}

type Blend2DInternal =
    Types.ExtendFiniteLayer<{
        __fractionalSpeed: number,
        __childPositions: { FeatureSpacePos },
        __phasePosition: number,
        __weights: { number },
        __currentPos: Vector2,
        __calculateWeights: (Blend2DInternal) -> { number },
        __calculateInfluence: (Blend2DInternal, FeatureSpacePos, FeatureSpacePos, FeatureSpacePos) -> number,
        __calculateFractionalSpeed: (Blend2DInternal) -> number,
    }>

local Blend2D: Blend2DInternal = FiniteLayer:extend("Blend2D")

Blend2D.defaultProps = {
    speed = 1,
    targetPosition = Vector2.zero,
    weightAdjustTime = 0.0, -- Linear smoothing
    positionSmoothingTime = 0.0, -- Uses exponential smoothing currently
}
Blend2D.defaultLinkData = {
    position = Vector2.new(0, 1),
}

local function smoothPosExponential(
    currentPosition: Vector2,
    targetPosition: Vector2,
    smoothingTime: number,
    dt: number
)
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
    local delta = currentPosition - targetPosition
    local newPosition = decay * delta + targetPosition
    return newPosition
end

function Blend2D:init()
    self.__fractionalSpeed = 0
    self.__phasePosition = 0
    self.__childPositions = {}
    self.__currentPos = Vector2.zero
    self.__weights = {}
    for _, child in self.children do
        table.insert(self.__childPositions, {
            direction = (child.linkData :: LinkData).position.Unit,
            speed = (child.linkData :: LinkData).position.Magnitude,
        })
    end
end

local function smoothWeights(
    inOutWeights: { number },
    targetWeights: { number },
    smoothingTime: number,
    dt: number
)
    local maxWeightAdjust = if smoothingTime > 0 then dt / smoothingTime else math.huge

    for i, targetWeight in ipairs(targetWeights) do
        local currentWeight = inOutWeights[i]
        local weightAdjust =
            math.clamp(targetWeight - currentWeight, -maxWeightAdjust, maxWeightAdjust)
        inOutWeights[i] = currentWeight + weightAdjust
    end
end

function Blend2D:getDuration()
    if self.__fractionalSpeed == 0 then
        return 0
    end
    return 1 / self.__fractionalSpeed
end

function Blend2D:update(dt: number, phaseState: Types.PhaseState?)
    self.__currentPos = smoothPosExponential(
        self.__currentPos,
        self.props.targetPosition,
        self.props.positionSmoothingTime,
        dt
    )
    local desiredWeights = self:__calculateWeights()
    if #self.__weights == #self.children then
        smoothWeights(self.__weights, desiredWeights, self.props.weightAdjustTime, dt)
    else
        self.__weights = desiredWeights
    end

    self.__fractionalSpeed = self:__calculateFractionalSpeed()
    self.__phasePosition += self.__fractionalSpeed * dt * self.props.speed
    if self.__phasePosition > 1 then
        self.__phasePosition -= 1
    end

    local childrenPhaseState = Matching.createPhaseStateForBlendSpace(self.__phasePosition)
    for i, child in self.children do
        child:update(self.__phasePosition, childrenPhaseState)
    end

    return nil
end

function Blend2D:evaluate(mask)
    local multiBlender = MultiBlender.new(mask)
    for i, weight in self.__weights do
        if weight > 0 then
            multiBlender:addPose(self.children[i]:evaluate(mask), weight)
        end
    end

    return multiBlender:blend()
end

function Blend2D:__resetInternal()
    self.__phasePosition = 0
    self.__weights = {}
    self.__currentPos = Vector2.zero
end

function Blend2D:__calculateWeights()
    local influences = {}
    local sumInfluences = 0
    for i = 1, #self.children do
        influences[i] = math.huge
    end

    local currentPosVector = self.__currentPos
    local magnitude = currentPosVector.Magnitude
    local currentPos: FeatureSpacePos = {
        direction = if magnitude < 0.01 then Vector2.zero else currentPosVector.Unit,
        speed = magnitude,
    }
    for i, child in self.children do
        local child1Pos = self.__childPositions[i]
        for j, otherChild in self.children do
            if i ~= j then
                local child2Pos = self.__childPositions[j]
                influences[i] = math.min(
                    influences[i],
                    self:__calculateInfluence(currentPos, child1Pos, child2Pos)
                )
            end
        end

        sumInfluences += influences[i]
    end

    -- Normalize influeces to get weights
    local weights = {}
    for i, child in self.children do
        weights[i] = math.floor(influences[i] / sumInfluences * 1e4) * 1e-4
    end

    return weights
end

local function signedAngle(a: Vector2, b: Vector2)
    return -math.atan2(a.X * b.Y - a.Y * b.X, a.X * b.X + a.Y * b.Y)
end

function Blend2D:__calculateInfluence(currentPos, child1Pos, child2Pos)
    local ANGLE_WEIGHT = 2.0

    local avgLength = 0.5 * (child1Pos.speed + child2Pos.speed)

    local p1ToP2 = Vector2.new(
        (child2Pos.speed - child1Pos.speed) / avgLength,
        ANGLE_WEIGHT * signedAngle(child2Pos.direction, child1Pos.direction)
    )
    local p1ToSamplePos = Vector2.new(
        (currentPos.speed - child1Pos.speed) / avgLength,
        ANGLE_WEIGHT * signedAngle(currentPos.direction, child1Pos.direction)
    )

    local res = 1.0 - p1ToSamplePos:Dot(p1ToP2) / (p1ToP2.X * p1ToP2.X + p1ToP2.Y * p1ToP2.Y)
    return math.clamp(res, 0, 1)
end

function Blend2D:__calculateFractionalSpeed()
    local fractionalSpeed = 0
    for i, child in self.children do
        local weight = self.__weights[i]
        local duration = child:getDuration()
        if duration == 0 then
            return 0
        end
        fractionalSpeed += weight / duration
    end

    return fractionalSpeed
end

function Blend2D:getChildDebugData(index: number, child: Types.Layer): Types.Map?
    local debugData = {
        weight = 0,
        index = index,
        linkData = {
            position = (child.linkData :: LinkData).position,
        },
    }

    if self.__weights then
        for i, weight in self.__weights do
            if self.children[i] == child then
                debugData.weight = weight
                break
            end
        end
    end
    return debugData
end

return Blend2D
