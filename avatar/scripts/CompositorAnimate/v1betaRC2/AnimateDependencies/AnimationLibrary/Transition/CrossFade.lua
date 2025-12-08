local Workspace = script.Parent.Parent
local BaseTypes = require(Workspace.Base.types)
local Easing = require(Workspace.Transition.Easing)
local Layer = require(Workspace.Base.Layer)
local TransitionTypes = require(Workspace.Transition.Types)

export type CrossFade = CrossFadeT<{}>
type CrossFadeT<T> = TransitionTypes.ExtendTransition<T & {
    cloneLayerIfChild: (self: CrossFadeT<T>, layer: BaseTypes.Layer) -> boolean,
}>

type CrossFadeInternal = CrossFadeT<{
    __toLayer: BaseTypes.Layer,
    __fromLayer: BaseTypes.Layer?,
    __timePosition: number,
    __easingFn: Easing.EasingFunction,
    state: {
        timePosition: number,
    },
}>

local CrossFade = Layer:extend("CrossFade") :: CrossFadeInternal

CrossFade.defaultProps = {
    duration = 0,
    easingType = "EaseInOutQuad",
    lowLodThreshold = 2,
}

function CrossFade:onInit()
    self.__toLayer = self.children[1]
    self.__fromLayer = self.children[2]
    self.__easingFn = Easing[self.props.easingType] or Easing.EaseInOutQuad
    self.state.timePosition = 0
end

function CrossFade:onUpdate(dt: number, phaseState: BaseTypes.PhaseState?): BaseTypes.PhaseState?
    if self.__fromLayer == nil then
        return self.__toLayer:update(dt, phaseState)
    end
    assert(self.__fromLayer ~= nil)

    local isFirstFrame = self.state.timePosition == 0
    self.state.timePosition = math.min(self.state.timePosition + dt, self.props.duration)
    local outgoingPhaseState = self.__fromLayer:update(dt, phaseState)

    if self.state.timePosition >= self.props.duration then
        self.__fromLayer = nil
        self.children[2] = nil
        self.context:notifyTreeChanged()
    end

    return self.__toLayer:update(dt, if isFirstFrame then outgoingPhaseState else phaseState)
end

function CrossFade:onEvaluate(mask: AnimationMask): AnimationPose
    if self.__fromLayer == nil then
        return self.__toLayer:evaluate(mask)
    end
    assert(self.__fromLayer ~= nil)

    -- Low LOD mode: only evaluate a single layer based on which one has more influence, and skip
    -- blending.
    local easedAlpha = self.__easingFn(self.state.timePosition / self.props.duration)
    if self.context.lod >= self.props.lowLodThreshold then
        if easedAlpha < 0.5 then
            return self.__fromLayer:evaluate(mask)
        else
            return self.__toLayer:evaluate(mask)
        end
    end

    local fromPose = self.__fromLayer:evaluate(mask)
    local toPose = self.__toLayer:evaluate(mask)
    return fromPose:Blend(toPose, easedAlpha)
end

function CrossFade:isTransitionFinished(): boolean
    return self.state.timePosition >= self.props.duration
end

function CrossFade:getToLayer(): BaseTypes.Layer
    return self.__toLayer
end

function CrossFade:getChildDebugData(index, child: BaseTypes.Layer): BaseTypes.Map?
    local alpha = self.__easingFn(self.state.timePosition / self.props.duration)

    if index == 1 then
        return {
            weight = alpha,
            linkData = { "ToLayer" },
        }
    else
        return {
            weight = 1 - alpha,
            linkData = { "FromLayer" },
        }
    end
end

function CrossFade:cloneLayerIfChild(layer: BaseTypes.Layer): boolean
    if self.__toLayer == layer then
        local clone = self.__toLayer:clone()
        self.children[1] = clone
        self.__toLayer = clone

        return true
    elseif self.__fromLayer ~= nil and self.__fromLayer == layer then
        local clone = self.__fromLayer:clone()
        self.children[2] = clone
        self.__fromLayer = clone

        return true
    end

    return false
end

function CrossFade:calculateWeightForLayer(layer: BaseTypes.Layer): number
    local alpha = self.__easingFn(self.state.timePosition / self.props.duration)
    if self.__toLayer == layer then
        return alpha
    elseif self.__fromLayer == layer then
        return 1 - alpha
    elseif tostring(self.__fromLayer) == "CrossFade" then
        return (1 - alpha) * (self.__fromLayer :: CrossFade):calculateWeightForLayer(layer)
    end

    return 0
end

return CrossFade :: CrossFade
