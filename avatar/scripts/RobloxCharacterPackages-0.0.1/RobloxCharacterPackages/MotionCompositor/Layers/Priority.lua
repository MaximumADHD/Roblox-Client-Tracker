local Workspace = script.Parent.Parent

local Layer = require(Workspace.Base.Layer)
local Types = require(Workspace.Base.types)
local EasingFunctions = require(Workspace.Util.Transition).EasingFunctions

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

function Priority:init()
    self.state = {
        weights = {},
        easedWeights = {},
    }

    self:__resetInternal()
end

function Priority:update(deltaTime: number, phaseState: Types.PhaseState?): Types.PhaseState?
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

function Priority:evaluate(mask: AnimationMask): AnimationPose
    local finalPose = mask:CreateRestPose()

    for i, layer in self.children do
        local pose = layer:evaluate(mask)
        if self.state.weights[i] > 0 then
            finalPose:Blend(pose, EasingFunctions.EaseInOutQuad(self.state.weights[i]))
        end
    end

    return finalPose
end

function Priority:__resetInternal()
    for i, layer in self.children do
        local weight = if getEnabled(layer, self.context.params) then 1 else 0
        self.state.weights[i] = weight
    end
end

return Priority
