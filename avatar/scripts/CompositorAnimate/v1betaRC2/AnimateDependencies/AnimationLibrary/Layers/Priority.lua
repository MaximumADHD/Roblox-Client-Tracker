local Workspace = script.Parent.Parent

local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)
local Easing = require(Workspace.Transition).Easing

type LinkData = { enabled: boolean | (params: Types.Map?) -> boolean }

export type Priority = Types.ExtendLayer<{
    state: {
        weights: { number },
    },
}>

local Priority = Layer:extend("Priority") :: Priority

Priority.defaultProps = {
    fadeDurationSeconds = 0.2,
}

local function getEnabled(layer: Types.Layer, params: Types.Map)
    local linkData = layer.linkData :: LinkData
    if typeof(linkData.enabled) == "function" then
        return linkData.enabled(params)
    else
        return linkData.enabled
    end
end

function Priority:onInit()
    self.state = {
        weights = {},
        easedWeights = {},
    }

    self:onReset()
end

function Priority:onUpdate(deltaTime: number, phaseState: Types.PhaseState?): Types.PhaseState?
    local firstPhaseState: Types.PhaseState? = nil
    for i, layer in self.children do
        local weightDelta = deltaTime / self.props.fadeDurationSeconds
        if not getEnabled(layer, self.context.params) then
            weightDelta *= -1
        end

        local weight = self.state.weights[i]
        weight += weightDelta
        self.state.weights[i] = math.clamp(weight, 0, 1)
        if i == 1 then
            firstPhaseState = layer:update(deltaTime, phaseState)
        else
            layer:update(deltaTime, phaseState)
        end
    end

    return firstPhaseState
end

function Priority:onEvaluate(mask: AnimationMask): AnimationPose
    local finalPose = AnimationPose.createRest(mask)

    for i, layer in self.children do
        local pose = layer:evaluate(mask)
        if self.state.weights[i] > 0 then
            finalPose:Blend(pose, Easing.EaseInOutQuad(self.state.weights[i]))
        end
    end

    return finalPose
end

function Priority:onReset()
    for i, layer in self.children do
        local weight = if getEnabled(layer, self.context.params) then 1 else 0
        self.state.weights[i] = weight
    end
end

function Priority:onChildChanged(childIndex)
    local weight = if getEnabled(self.children[childIndex], self.context.params) then 1 else 0
    self.state.weights[childIndex] = weight
end

return Priority
