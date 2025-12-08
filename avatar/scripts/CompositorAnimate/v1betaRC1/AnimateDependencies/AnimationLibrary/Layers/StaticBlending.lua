local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)

type StaticBlendingInternal = Types.ExtendLayer<{
    __staticPose: AnimationPose?,
    __previousPose: AnimationPose?,
    __currentDeltaSeconds: number,
    __requestedBlendDurationSeconds: number?,
    __currentBlendDurationSeconds: number,
    __currentTimeSeconds: number,
} & Types.BlendHandlerT<StaticBlendingInternal>>

local StaticBlendingLayer = Layer:extend("StaticBlendingLayer") :: StaticBlendingInternal

function StaticBlendingLayer:onInit()
    self.__staticPose = nil
    self.__previousPose = nil
    self.__currentDeltaSeconds = 0.0
    self.__requestedBlendDurationSeconds = nil
    self.__currentBlendDurationSeconds = 0.0
    self.__currentTimeSeconds = 0.0
end

function StaticBlendingLayer:onUpdate(deltaTimeSeconds: number, phaseState: Types.PhaseState?)
    assert(#self.children == 1)

    -- set self as the blender in the context
    local previousBlender = self.context.blendHandler
    self.context.blendHandler = self
    local updateResult = self.children[1]:update(deltaTimeSeconds, phaseState)
    self.context.blendHandler = previousBlender -- reset

    self.__currentDeltaSeconds = deltaTimeSeconds
    self.__currentTimeSeconds += deltaTimeSeconds
    return updateResult
end

function StaticBlendingLayer:onEvaluate(mask: AnimationMask)
    -- get the desired child pose
    local pose = self.children[1]:evaluate(mask)

    -- if a blend request has come in setup the transition data we need
    if self.__requestedBlendDurationSeconds ~= nil then
        if self.__previousPose ~= nil then -- if there is no prev pose we don't need to blend
            self.__currentBlendDurationSeconds = self.__requestedBlendDurationSeconds
            self.__currentTimeSeconds = self.__currentDeltaSeconds
            self.__staticPose = self.__previousPose
        end

        self.__requestedBlendDurationSeconds = nil -- clear request
    end

    -- transition between poses
    if
        self.__currentTimeSeconds < self.__currentBlendDurationSeconds
        and self.__staticPose ~= nil
    then
        local t = 1.0 - (self.__currentTimeSeconds / self.__currentBlendDurationSeconds)
        pose:Blend(self.__staticPose, t)
    else
        self.__staticPose = nil
    end

    -- cache the current pose
    self.__previousPose = pose:Clone()
    return pose
end

function StaticBlendingLayer:onReset()
    self.__staticPose = nil
    self.__previousPose = nil
    self.__currentDeltaSeconds = 0.0
    self.__currentBlendDurationSeconds = 0.0
    self.__currentTimeSeconds = 0.0
end

function StaticBlendingLayer:requestBlend(durationSeconds: number)
    -- handle multiple requests by keeping the smallest duration
    if
        self.__requestedBlendDurationSeconds == nil
        or self.__requestedBlendDurationSeconds > durationSeconds
    then
        self.__requestedBlendDurationSeconds = durationSeconds
    end
end

return StaticBlendingLayer
