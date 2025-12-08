local Compositor = script.Parent.Parent
local Layer = require(Compositor.Base.Layer)
local Transition = require(Compositor.Transition)
local TransitionsTypes = require(Compositor.Transition.Types)
local Types = require(Compositor.Base.types)

type PrioritySelectInternal = Types.ExtendLayer<{
    __activeLayer: Types.Layer?,
    __selectedLayer: Types.Layer?,
    __transitionLayer: TransitionsTypes.Transition?,
    __getTransitionDuration: (self: PrioritySelectInternal, layer: Types.Layer) -> number,
    __latched: boolean,
    __sortChildren: (self: PrioritySelectInternal) -> (),
}>

local PrioritySelect = Layer:extend("PrioritySelect") :: PrioritySelectInternal

PrioritySelect.defaultProps = {
    transitionDurationSeconds = 0.25,
    lowLodThreshold = 2,
}

function PrioritySelect:onInit()
    self.__activeLayer = nil
    self.__selectedLayer = nil
    self.__latched = false
    self:__sortChildren()
end

function PrioritySelect:__sortChildren()
    -- Sort all children on descending priorities
    table.sort(self.children, function(a, b)
        assert(a.linkData ~= nil and b.linkData ~= nil)
        local aHasPriority = a.linkData ~= nil and a.linkData.priority ~= nil
        local bHasPriority = b.linkData ~= nil and b.linkData.priority ~= nil
        if aHasPriority and bHasPriority then
            return a.linkData.priority > b.linkData.priority
        elseif aHasPriority then
            return true
        end
        return false
    end)
end

function PrioritySelect:onUpdate(dt: number, phaseState: Types.PhaseState?)
    assert(#self.children > 0)

    -- Children that implement a canInterrupt functions are considered Latched. That means that
    -- before evaluating potential new selections, we first check whether we are allowed to
    -- interrupt, unlatch this selection
    if self.__selectedLayer ~= nil and self.__latched then
        assert(
            self.__selectedLayer.linkData ~= nil,
            "PrioritySelect: Child "
                .. tostring(self.__selectedLayer)
                .. "is latched but does not provide a canInterrupt callback"
        )
        if
            self.__selectedLayer.linkData.canInterrupt(self.context.params, self.__selectedLayer)
        then
            self.__latched = false
        end
    end

    -- Find current Selection by evaluating shouldSelect functions
    if not self.__latched then
        local newSelectedLayer = self.children[1]
        for i, child in self.children do
            if child.linkData == nil then
                continue
            elseif child.linkData.shouldSelect(self.context.params, self, child) then
                newSelectedLayer = child
                break
            end
        end

        if self.__selectedLayer == nil or self.__selectedLayer ~= newSelectedLayer then
            if self.context.lod <= self.props.lowLodThreshold and self.__activeLayer ~= nil then
                local transitionLayer = Transition.CreateTransition(
                    newSelectedLayer,
                    self.__activeLayer,
                    self:__getTransitionDuration(newSelectedLayer)
                )

                self.__activeLayer = transitionLayer
                self.__transitionLayer = transitionLayer
            else
                self.__activeLayer = newSelectedLayer
            end

            self.context:notifyTreeChanged()

            if newSelectedLayer then
                self.__latched = newSelectedLayer.linkData ~= nil
                    and newSelectedLayer.linkData.canInterrupt ~= nil
            end
            self.__selectedLayer = newSelectedLayer
        end
    end

    if self.__activeLayer == nil then
        return nil
    end

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

function PrioritySelect:onEvaluate(mask: AnimationMask)
    if self.__activeLayer == nil then
        return AnimationPose.createRest(mask)
    end
    assert(self.__activeLayer ~= nil)
    return self.__activeLayer:evaluate(mask)
end

function PrioritySelect:onReset()
    self.__activeLayer = nil
    self.__transitionLayer = nil
    self.__selectedLayer = nil
    self.__latched = false
end

function PrioritySelect:onChildChanged(childIndex)
    self:__sortChildren()
end

function PrioritySelect:getChildDebugData(index: number, child: Types.Layer): Types.Map?
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

function PrioritySelect:__getTransitionDuration(layer: Types.Layer): number
    local transitionDuration = if layer.linkData ~= nil
            and layer.linkData.transitionDurationSeconds
        then layer.linkData.transitionDurationSeconds
        else self.props.transitionDurationSeconds

    -- If transitionDuration is 0, return 0.001 instead.
    return transitionDuration or 0.001
end

return PrioritySelect
