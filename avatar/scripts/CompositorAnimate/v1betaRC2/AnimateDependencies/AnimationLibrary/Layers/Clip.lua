local Anim = script.Parent.Parent

local AnimationClipProvider = game:GetService("AnimationClipProvider")
local FiniteLayer = require(Anim.Base.FiniteLayer)
local Matching = require(Anim.Base.Matching)
local PropsManager = require(Anim.Base.PropsManager)
local Types = require(Anim.Base.types)

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
        __extractMarkerEvents: (self: ClipLayerInternal) -> (),
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
    animationId = PropsManager.NIL_DEFAULT_VALUE,
    speed = 1,
    preload = true,
    didLoopEventName = PropsManager.NIL_DEFAULT_VALUE,
    timePositionEvents = {},
    markerEvents = {},
    startTime = PropsManager.NIL_DEFAULT_VALUE,
    endTime = PropsManager.NIL_DEFAULT_VALUE,
    looping = PropsManager.NIL_DEFAULT_VALUE,
}

function ClipLayer:onInit()
    self.state = {
        __evaluator = nil,
        currentAnimationId = self.props.animationId,
        loadingState = "Unloaded",
        timePosition = self:__getStartTime(),
        timePositionEvents = {},
        markerEvents = {},
    }
    self.hasLooped = false
    self.state.prevTimePosition = nil
    if self.props.preload then
        self:__updateLoadedAnimation()
    end

    if
        self.props.startTime ~= nil
        and self.props.endTime ~= nil
        and self.props.startTime > self.props.endTime
    then
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

function ClipLayer:getTimePositionNormalized(): number
    if self.state.__evaluator == nil then
        return 0
    end

    local length = (self:__getEndTime() - self:__getStartTime())
    local posNorm = (self.state.timePosition - self:__getStartTime()) / length
    return math.clamp(posNorm, 0, 1)
end

function ClipLayer:onUpdate(deltaTime: number, phaseState: Types.PhaseState?)
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
        local shouldLoop = self.props.looping or (evaluator :: any).Loop
        if shouldLoop then
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

function ClipLayer:onEvaluate(mask: AnimationMask)
    if self.state.__evaluator == nil then
        return AnimationPose.createRest(mask)
    end
    assert(self.state.__evaluator ~= nil)

    -- Support Root Motion
    local prevTimePosition = self.state.prevTimePosition or self.state.timePosition
    self.state.prevTimePosition = self.state.timePosition
    return (self.state.__evaluator :: any):Evaluate(mask, self.state.timePosition, prevTimePosition)
end

function ClipLayer:onReset()
    self.state.timePosition = self:__getStartTime()
    self.hasLooped = false
end

function ClipLayer:__loadAnimation()
    if self.state.loadingState == "Unloaded" and self.state.currentAnimationId then
        self.state.loadingState = "Loading"
        task.spawn(function()
            task.synchronize()
            self.state.__evaluator =
                AnimationClipProvider:GetClipEvaluatorAsync(self.state.currentAnimationId)
            self.state.loadingState = "Loaded"
            self:__extractMarkerEvents()
        end)
    end
end

function ClipLayer:__updateLoadedAnimation()
    local animationId = self.props.animationId
    if self.state.currentAnimationId ~= animationId and animationId ~= nil then
        self.state.currentAnimationId = animationId
        self.state.loadingState = "Unloaded"
        self.state.timePosition = self:__getStartTime()
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

function ClipLayer:__extractMarkerEvents()
    assert(self.state.__evaluator ~= nil)
    self.state.markerEvents = {}
    for _, eventType in self.props.markerEvents do
        local markers = self.state.__evaluator:GetMarkersOfType(eventType)
        for _, marker in markers do
            table.insert(self.state.markerEvents, {
                name = eventType,
                timePosition = marker.Time,
                data = marker.Value,
            })
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
    return math.max(0, self.props.startTime or 0)
end

function ClipLayer:__getEndTime()
    local evaluator = self.state.__evaluator
    if evaluator == nil then
        return 0
    end

    return math.min(evaluator.Duration, self.props.endTime or math.huge)
end

return ClipLayer :: ClipLayer
