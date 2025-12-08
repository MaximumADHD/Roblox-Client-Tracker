local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Transition = require(Workspace.Transition)
local TransitionTypes = require(Workspace.Transition.Types)
local Types = require(Workspace.Base.types)

export type IncrementMode = number
local IncrementMode = {
    Loop = 0 :: IncrementMode,
    LoopLast = 1 :: IncrementMode,
    Random = 2 :: IncrementMode,
}

export type LinkData = {
    shouldTransitionCallback: (Types.Layer) -> boolean,
    selectionProbabilityWeight: number,
}

export type SequenceLayer = Types.ExtendLayer<{
    IncrementMode: { [string]: IncrementMode },

    __sequenceChildren: { Types.Layer },
    __currentIndex: number,
    __activeLayer: Types.Layer?,
    __transitionLayer: TransitionTypes.Transition?,
    __getCurrentChild: (SequenceLayer) -> Types.Layer?,
    __totalProbabilityWeight: number,
    __increment: (SequenceLayer) -> number,
    __transitionToIndex: (SequenceLayer, index: number) -> (),
    __rollNextLayer: (SequenceLayer) -> number,
}>

local SequenceLayer: SequenceLayer = Layer:extend("SequenceLayer")

SequenceLayer.IncrementMode = IncrementMode

SequenceLayer.defaultProps = {
    incrementMode = IncrementMode.Loop,
    transitionDurationSeconds = 0.1,
}

SequenceLayer.defaultLinkData = {
    shouldTransitionCallback = function(layer)
        return false
    end,
    selectionProbabilityWeight = 1,
}

function SequenceLayer:onInit()
    self.__sequenceChildren = {}

    if self.props.incrementMode == IncrementMode.Random then
        self.__totalProbabilityWeight = 0
        for i, child in self.children do
            self.__sequenceChildren[i] = child
            self.__totalProbabilityWeight += (child.linkData :: LinkData).selectionProbabilityWeight
        end
    else
        for i, child in self.children do
            self.__sequenceChildren[i] = child
        end
    end

    self.__currentIndex = 0
end

function SequenceLayer:onUpdate(dt: number, phaseState: Types.PhaseState?)
    if self.__currentIndex == 0 then
        local transitionIndex = 1
        if self.props.incrementMode == IncrementMode.Random then
            transitionIndex = self:__rollNextLayer()
        end
        self:__transitionToIndex(transitionIndex)
    end

    if #self.__sequenceChildren >= self.__currentIndex then
        local child = self.__sequenceChildren[self.__currentIndex]
        if (child.linkData :: LinkData).shouldTransitionCallback(child) then
            local newIndex = self:__increment()
            if newIndex ~= self.__currentIndex then
                self:__transitionToIndex(newIndex)
            end
        end
    end

    if self.__activeLayer == nil then
        return nil
    end
    assert(self.__activeLayer ~= nil)

    local updateResult = self.__activeLayer:update(dt, phaseState)

    if self.__transitionLayer ~= nil then
        if self.__transitionLayer:isTransitionFinished() then
            self.__activeLayer = self.__transitionLayer:getToLayer()
            self.__transitionLayer = nil
            self.context:notifyTreeChanged()
        end
    end

    return updateResult
end

function SequenceLayer:onEvaluate(mask: AnimationMask)
    if self.__activeLayer == nil then
        return AnimationPose.createRest(mask)
    end
    assert(self.__activeLayer ~= nil)
    return self.__activeLayer:evaluate(mask)
end

function SequenceLayer:onReset()
    self.__activeLayer = nil
    self.__transitionLayer = nil
    self.__currentIndex = 0
end

function SequenceLayer:__increment()
    if self.props.incrementMode == IncrementMode.Loop then
        local newIndex = self.__currentIndex + 1
        if newIndex > #self.__sequenceChildren then
            return 1
        end
        return newIndex
    elseif self.props.incrementMode == IncrementMode.LoopLast then
        local newIndex = math.min(self.__currentIndex + 1, #self.__sequenceChildren)
        return newIndex
    elseif self.props.incrementMode == IncrementMode.Random then
        return self:__rollNextLayer()
    else
        error("Invalid incrementMode:", self.props.incrementMode)
    end
end

function SequenceLayer:__transitionToIndex(newIndex)
    local inLayer = self.__sequenceChildren[newIndex]
    if newIndex ~= self.__currentIndex then
        if self.__currentIndex == 0 then
            self.__activeLayer = inLayer
        else
            self.__transitionLayer = Transition.CreateTransition(
                inLayer,
                self.__sequenceChildren[self.__currentIndex],
                self.props.transitionDurationSeconds
            )
            self.__activeLayer = self.__transitionLayer
        end
        self.__currentIndex = newIndex
        self.context:notifyTreeChanged()
    end
end

function SequenceLayer:__getCurrentChild()
    if #self.__sequenceChildren < self.__currentIndex then
        return nil
    end
    return self.__sequenceChildren[self.__currentIndex]
end

function SequenceLayer:getChildDebugData(index: number, child: Types.Layer): Types.Map?
    if child == self.__activeLayer then
        return { weight = 1 }
    end

    return {
        weight = if self.__transitionLayer ~= nil
            then self.__transitionLayer:calculateWeightForLayer(child)
            else 0,
        linkData = { (child.linkData :: Types.Map).key },
    }
end

function SequenceLayer:__rollNextLayer()
    local roll = math.random() * self.__totalProbabilityWeight

    local i = 1
    while roll > (self.__sequenceChildren[i].linkData :: LinkData).selectionProbabilityWeight do
        roll -= (self.__sequenceChildren[i].linkData :: LinkData).selectionProbabilityWeight
        i += 1
    end
    return i
end

return SequenceLayer
