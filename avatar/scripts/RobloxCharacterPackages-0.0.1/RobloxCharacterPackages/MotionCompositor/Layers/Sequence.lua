local Workspace = script.Parent.Parent
local Layer = require(Workspace.Base.Layer)
local Transition = require(Workspace.Util.Transition)
local Types = require(Workspace.Base.types)

export type IncrementMode = number
local IncrementMode = {
    Loop = 0 :: IncrementMode,
    LoopLast = 1 :: IncrementMode,
}

export type LinkData = {
    shouldTransitionCallback: (Types.Layer) -> boolean,
}

export type SequenceLayer = Types.ExtendLayer<{
    IncrementMode: { [string]: IncrementMode },

    __index: number,
    __prevIndex: number?,
    __transition: Transition.Transition?,
    __getCurrentChild: (SequenceLayer) -> Types.Layer?,
    __increment: (SequenceLayer) -> number,
    __transitionToIndex: (SequenceLayer, index: number) -> (),
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
}

function SequenceLayer:init()
    self.__index = 1
    self.__prevIndex = nil
end

function SequenceLayer:update(dt: number, phaseState: Types.PhaseState?)
    if self.__transition ~= nil then
        self.__transition:update(dt)
        if self.__transition:isFinished() then
            self.__transition = nil
        end
        return
    end

    if #self.children >= self.__index then
        local child = self.children[self.__index]
        child:update(dt)
        if (child.linkData :: LinkData).shouldTransitionCallback(child) then
            local newIndex = self:__increment()
            if newIndex ~= self.__index then
                self:__transitionToIndex(newIndex)
            end
        end
    end

    return nil
end

function SequenceLayer:evaluate(mask: AnimationMask)
    if #self.children < self.__index then
        return mask:CreateRestPose()
    end

    if self.__transition ~= nil then
        return self.__transition:evaluate(mask)
    end

    return self.children[self.__index]:evaluate(mask)
end

function SequenceLayer:__resetInternal()
    self.__transition = nil
    self.__index = 1
end

function SequenceLayer:__increment()
    if self.props.incrementMode == IncrementMode.Loop then
        local newIndex = self.__index + 1
        if newIndex > #self.children then
            return 1
        end
        return newIndex
    elseif self.props.incrementMode == IncrementMode.LoopLast then
        local newIndex = math.min(self.__index + 1, #self.children)
        return newIndex
    else
        error("Invalid incrementMode:", self.props.incrementMode)
    end
end

function SequenceLayer:__transitionToIndex(newIndex)
    local inLayer = self.children[newIndex]
    if newIndex ~= self.__index then
        local outLayer = self:__getCurrentChild() :: Types.Layer
        self.__transition = Transition.CrossFade.new(
            self.props.transitionDurationSeconds,
            outLayer,
            inLayer,
            Transition.EasingFunctions.EaseInOutQuad
        )
        self.__prevIndex = self.__index
        self.__index = newIndex
    end
    inLayer:reset()
    inLayer:update(0)
end

function SequenceLayer:__getCurrentChild()
    if #self.children < self.__index then
        return nil
    end
    return self.children[self.__index]
end

function SequenceLayer:getChildDebugData(index: number, child: Types.Layer): Types.Map?
    local debugData = {
        weight = 0,
        index = index,
    }

    if #self.children < self.__index then
        return debugData
    end

    if self.__transition ~= nil then
        local phase = self.__transition:getPhase()
        if self.__prevIndex and child == self.children[self.__prevIndex] then
            debugData.weight = 1 - phase
        elseif child == self.children[self.__index] then
            debugData.weight = phase
        end
    elseif child == self.children[self.__index] then
        debugData.weight = 1
    end

    return debugData
end

return SequenceLayer
