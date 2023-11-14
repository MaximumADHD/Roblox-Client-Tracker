local Workspace = script.Parent.Parent

local AnimationClipProvider = game:GetService("AnimationClipProvider")
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Matching = require(Workspace.Base.Matching)
local Types = require(Workspace.Base.types)

export type ClipLayer = Types.ExtendFiniteLayer<ClipLayerPublic>

-- Represents an event that fires on a given time position on a clip.
export type TimePositionEvent = {
    -- The name of the event.
    name: string,
    -- The time position of the event. If negative, the time-position wraps to the end of the clip.
    timePosition: number,
    -- Data to send along with the event name.
    data: any?,
    -- Callback to determine whether the event should be fired. The callback accepts the current
    -- layer as a parameter.
    shouldFireFn: ShouldFireFn?,
}
type ShouldFireFn = (layer: ClipLayer) -> ()

type ClipLayerPublic = {
    hasLooped: boolean,
}

type ClipLayerInternal = Types.ExtendFiniteLayer<
    ClipLayerPublic
    & {
        state: {
            __evaluator: ClipEvaluator?,
            currentAnimationId: string,
            loadingState: string,
            timePosition: number,
            clipIsLooping: boolean,
            markerEvents: { TimePositionEvent },
            prevTimePosition: number?,
        },

        __loadAnimation: (self: ClipLayerInternal) -> (),
        __updateLoadedAnimation: (self: ClipLayerInternal) -> (),
        __fireTimePositionEvents: (
            self: ClipLayerInternal,
            eventPositions: { TimePositionEvent },
            prevTime: number,
            adjustTimeWithSpeed: boolean
        ) -> (),
        __extractMarkerEvents: (self: ClipLayerInternal, sequence: KeyframeSequence) -> (),
        __getIsTimePointWithinClipSegment: (
            self: ClipLayerInternal,
            time: number,
            startTime: number,
            endTimes: number
        ) -> boolean,
        __getStartTime: (self: ClipLayerInternal) -> number,
        __getEndTime: (self: ClipLayerInternal) -> number,
    }
>

local ClipLayer: ClipLayerInternal = FiniteLayer:extend("ClipLayer")

ClipLayer.defaultProps = {
    animationId = "",
    speed = 1,
    preload = true,
    didLoopEventName = "",
    timePositionEvents = {},
    markerEvents = {},
    startTime = 0,
    endTime = math.huge,
}

function ClipLayer:init()
    self.state = {
        __evaluator = nil,
        currentAnimationId = self.props.animationId,
        loadingState = "Unloaded",
        timePosition = self:__getStartTime(),
        clipIsLooping = false,
        timePositionEvents = {},
        markerEvents = {},
    }
    self.hasLooped = false
    self.state.prevTimePosition = nil
    if self.props.preload then
        self:__updateLoadedAnimation()
    end

    self.context:exposeEvent(self.props.didLoopEventName)

    for _, timePositionEvent: TimePositionEvent in self.props.timePositionEvents do
        self.context:exposeEvent(timePositionEvent.name)
    end

    for markerName, eventName in self.props.markerEvents do
        self.context:exposeEvent(eventName)
    end

    if self.props.startTime > self.props.endTime then
        warn(
            string.format(
                "Animation clip %s initialized with endTime(%f) before startTime(%f)",
                self.props.animationId,
                self.props.endTime,
                self.props.startTime
            )
        )
    end
end

function ClipLayer:getDuration()
    if self.state.__evaluator == nil then
        return 0
    end
    assert(self.state.__evaluator ~= nil)

    local duration = self:__getEndTime() - self:__getStartTime()

    if self.props.speed == 0 then
        return duration
    end

    return math.abs(duration / self.props.speed)
end

function ClipLayer:update(deltaTime: number, phaseState: Types.PhaseState?)
    self:__updateLoadedAnimation()

    local evaluator = self.state.__evaluator
    if evaluator == nil then
        return
    end
    assert(evaluator ~= nil)

    local startTime = self:__getStartTime()
    local endTime = self:__getEndTime()
    local timeRange = endTime - startTime

    local prevTimePosition = self.state.timePosition
    if phaseState ~= nil then
        local normalizedTimePosition = Matching.matchPhasesToState(phaseState, nil)
        self.state.timePosition = startTime + normalizedTimePosition * timeRange
    else
        self.state.timePosition += deltaTime * self.props.speed
    end
    if startTime > self.state.timePosition or self.state.timePosition > endTime then
        if self.state.clipIsLooping then
            self.state.timePosition = ((self.state.timePosition - startTime) % timeRange)
                + startTime
        else
            self.state.timePosition = math.clamp(self.state.timePosition, startTime, endTime)
        end
        self.hasLooped = true
    else
        self.hasLooped = false
    end

    if self.hasLooped then
        self.context:fireEvent(self.props.didLoopEventName, nil)
    end

    self:__fireTimePositionEvents(self.props.timePositionEvents, prevTimePosition, true)
    self:__fireTimePositionEvents(self.state.markerEvents, prevTimePosition, false)

    return nil
end

function ClipLayer:evaluate(mask: AnimationMask)
    if self.state.__evaluator == nil then
        return mask:CreateRestPose()
    end
    assert(self.state.__evaluator ~= nil)

    -- Support Root Motion
    local prevTimePosition = self.state.prevTimePosition or self.state.timePosition
    self.state.prevTimePosition = self.state.timePosition
    return self.state.__evaluator:Evaluate(mask, self.state.timePosition, prevTimePosition)
end

function ClipLayer:__resetInternal()
    self.state.timePosition = self:__getStartTime()
    self.hasLooped = false
end

function ClipLayer:__loadAnimation()
    if self.state.loadingState == "Unloaded" and self.state.currentAnimationId then
        self.state.loadingState = "Loading"
        task.spawn(function()
            task.synchronize()
            local animationClip =
                AnimationClipProvider:GetAnimationClipAsync(self.state.currentAnimationId)
            self.state.__evaluator = ClipEvaluator.fromClip(animationClip)
            self.state.clipIsLooping = animationClip.Loop
            self.state.loadingState = "Loaded"
            if animationClip:IsA("KeyframeSequence") then
                self:__extractMarkerEvents(animationClip)
            end
        end)
    end
end

function ClipLayer:__updateLoadedAnimation()
    local animationId = self.props.animationId
    if self.state.currentAnimationId ~= animationId then
        self.state.currentAnimationId = animationId
        self.state.loadingState = "Unloaded"
        self.state.__evaluator = nil
    end
    self:__loadAnimation()
end

function ClipLayer:__fireTimePositionEvents(
    events: { TimePositionEvent },
    prevTime: number,
    adjustTimeWithSpeed: boolean
)
    if self.props.speed == 0 then
        return
    end
    assert(self.state.__evaluator ~= nil)

    for _, event in events do
        if event.shouldFireFn ~= nil and not event.shouldFireFn(self) then
            continue
        end

        local eventTime = event.timePosition % self.state.__evaluator.Duration
        if adjustTimeWithSpeed then
            eventTime /= math.abs(self.props.speed)
        end

        if
            self:__getIsTimePointWithinClipSegment(
                event.timePosition,
                prevTime,
                self.state.timePosition
            )
        then
            self.context:fireEvent(event.name, event.data)
        end
    end
end

function ClipLayer:__extractMarkerEvents(sequence: KeyframeSequence)
    for _, keyframe in sequence:GetKeyframes() do
        assert(keyframe:IsA("Keyframe"))
        for _, marker in keyframe:GetMarkers() do
            assert(marker:IsA("KeyframeMarker"))
            local markerEventName = self.props.markerEvents[marker.Name]
            if markerEventName ~= nil then
                table.insert(self.state.markerEvents, {
                    name = marker.Name,
                    timePosition = keyframe.Time,
                    data = marker.Value,
                })
            end
        end
    end
end

-- Returns true if the given point is within the time segement on this animation clip. Note that
-- this method may be error prone when the total timestep added to the time position of this clip is
-- larger than its duration.
function ClipLayer:__getIsTimePointWithinClipSegment(
    timePoint: number,
    startTime: number,
    endTime: number
): boolean
    -- To simplify the checks necessary for detecting wether a point is within the time segment on a
    -- looping, bi-direction clip, we can first transform the time segment so that the lowest
    -- position of the time segment is assumed to be 0. Then, the position of the event and the end
    -- of the segment are translated by the value of the lowest point, and adjusted to be within the
    -- range of [0, duration]. Then the check can be simplified to check whether the event time is
    -- lower than the largest time position.
    local clipDuration = (self.state.__evaluator :: ClipEvaluator).Duration

    local largePos = 0
    if self.props.speed > 0 then
        largePos = (endTime - startTime) % clipDuration
        timePoint = (timePoint - startTime) % clipDuration
    else
        largePos = (startTime - endTime) % clipDuration
        timePoint = (timePoint - endTime) % clipDuration
    end

    return timePoint <= largePos
end

function ClipLayer:__getStartTime()
    return math.max(0, self.props.startTime)
end

function ClipLayer:__getEndTime()
    local evaluator = self.state.__evaluator
    if evaluator == nil then
        return 0
    end
    assert(evaluator ~= nil)

    return math.min(evaluator.Duration, self.props.endTime)
end

return ClipLayer :: ClipLayer
