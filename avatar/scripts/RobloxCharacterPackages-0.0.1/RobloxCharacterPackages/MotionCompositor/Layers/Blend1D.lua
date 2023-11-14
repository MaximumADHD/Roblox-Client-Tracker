local Workspace = script.Parent.Parent
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Matching = require(Workspace.Base.Matching)
local Types = require(Workspace.Base.types)

type Blend1DInternal = Types.ExtendFiniteLayer<{
    __phasePosition: number,
    __fractionalSpeed: number,
    __blendChildren: { Types.FiniteLayer },
    __alpha: number,
    __currentPos: number?,
    __lastTargetChangeDistance: number,
    __findBlendChildren: (Blend1DInternal, number) -> { Types.FiniteLayer },
    __calculateFractionalSpeed: (Blend1DInternal) -> number,
}>

export type LinkData = {
    position: number,
}

local Blend1D: Blend1DInternal = FiniteLayer:extend("Blend1D")

Blend1D.defaultProps = {
    targetPosition = 0,
    positionSmoothingTime = 0,
    speed = 1,
}

Blend1D.defaultLinkData = {
    position = 0,
}

function Blend1D:init()
    self.__fractionalSpeed = 1
    table.sort(self.children, function(a, b)
        local linkDataA = a.linkData :: Types.Map
        local linkDataB = b.linkData :: Types.Map
        return linkDataA.position < linkDataB.position
    end)
    self:__resetInternal()
end

function Blend1D:__resetInternal()
    self.__phasePosition = 0
    self.__currentPos = nil
    self.__lastTargetChangeDistance = 0
end

function Blend1D:getDuration()
    if self.__fractionalSpeed == 0 then
        return 0
    end
    return 1 / self.__fractionalSpeed
end

function Blend1D:update(dt: number, phaseState: Types.PhaseState?)
    local targetPos = self.props.targetPosition
    local positionSmoothingTime = self.props.positionSmoothingTime
    if positionSmoothingTime > 0 and self.__currentPos ~= nil then
        -- if target changes, update our smoothing.  We could store speed here instead, but storing the distance makes it so dynamically changing props.smoothTime works correctly
        if targetPos ~= self.__currentPos then
            self.__lastTargetChangeDistance = math.abs(targetPos - self.__currentPos)
        end
        local maxSpeed = self.__lastTargetChangeDistance / positionSmoothingTime
        local maxDelta = dt * maxSpeed
        local posDelta = math.clamp(targetPos - self.__currentPos, -maxDelta, maxDelta)
        self.__currentPos += posDelta
    else
        self.__currentPos = targetPos
    end
    local currentPos = self.__currentPos :: number
    local blendChildren = self:__findBlendChildren(currentPos)
    if #blendChildren == 2 then
        local pos1 = (blendChildren[1].linkData :: LinkData).position
        local pos2 = (blendChildren[2].linkData :: LinkData).position
        local distance = pos2 - pos1
        self.__alpha = (currentPos - pos1) / distance
    end
    self.__blendChildren = blendChildren
    self.__fractionalSpeed = self:__calculateFractionalSpeed()
    self.__phasePosition += self.__fractionalSpeed * dt * self.props.speed
    self.__phasePosition %= 1

    local childrenPhaseState = Matching.createPhaseStateForBlendSpace(self.__phasePosition)
    for _, child in self.children do
        child:update(self.__phasePosition, childrenPhaseState)
    end

    return nil
end

function Blend1D:evaluate(mask)
    local pose = nil
    if #self.__blendChildren == 1 then
        pose = self.__blendChildren[1]:evaluate(mask)
    elseif #self.__blendChildren == 2 then
        local pose1 = self.__blendChildren[1]:evaluate(mask)
        pose1:Blend(self.__blendChildren[2]:evaluate(mask), self.__alpha)
        pose = pose1
    else
        pose = mask:CreateRestPose()
    end
    return pose
end

function Blend1D:__findBlendChildren(currentPos)
    local prevChild = nil
    for _, child in self.children do
        if currentPos < (child.linkData :: Types.Map).position then
            if prevChild ~= nil then
                return { prevChild, child }
            else
                return { child }
            end
        end
        prevChild = child
    end
    return { prevChild }
end

function Blend1D:__calculateFractionalSpeed(): number
    if #self.__blendChildren == 1 then
        local duration = self.__blendChildren[1]:getDuration()
        if duration == 0 then
            return 0
        end
        return 1 / duration
    elseif #self.__blendChildren == 2 then
        local duration1 = self.__blendChildren[1]:getDuration()
        local duration2 = self.__blendChildren[2]:getDuration()
        if duration1 == 0 or duration2 == 0 then
            return 0
        end
        local weight1, weight2 = 1 - self.__alpha, self.__alpha
        return weight1 / duration1 + weight2 / duration2
    end

    return 0
end

function Blend1D:getChildDebugData(index: number, child: Types.Layer): Types.Map?
    local debugData = {
        weight = 0,
        index = index,
        linkData = {
            position = (child.linkData :: LinkData).position,
        },
    }

    if self.__blendChildren then
        if #self.__blendChildren == 2 then
            if child == self.__blendChildren[1] then
                debugData.weight = 1 - self.__alpha
            elseif child == self.__blendChildren[2] then
                debugData.weight = self.__alpha
            end
        elseif child == self.__blendChildren[1] then
            debugData.weight = 1
        end
    end

    return debugData
end

return Blend1D :: Types.FiniteLayer
