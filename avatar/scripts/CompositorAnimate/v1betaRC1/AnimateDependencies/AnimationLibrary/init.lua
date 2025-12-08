-- Animation compositing library
local WaitForAllScripts = require(script:WaitForChild("WaitForAllScripts"))
WaitForAllScripts()

local Blend = require(script.Layers.Blend)
local BlendSpace = require(script.BlendSpace)
local Compositor = require(script.Scheduling.Compositor)
local FiniteLayer = require(script.Base.FiniteLayer)
local Layer = require(script.Base.Layer)
local LayerDef = require(script.Base.LayerDef)
local StaticLayers = require(script.Layers.StaticLayers)
local Types = require(script.Base.types)

export type Compositor = Compositor.Compositor
export type LayerDef = LayerDef.LayerDef

local layerClasses = {
    Blend = Blend,
    BlendSpace = require(script.Layers.BlendSpace),
    Clip = require(script.Layers.Clip),
    HeadRotate = require(script.Layers.HeadRotate),
    InertialBlending = require(script.Layers.InertialBlending),
    Mask = require(script.Layers.Mask),
    Priority = require(script.Layers.Priority),
    PrioritySelect = require(script.Layers.PrioritySelect),
    RestPose = StaticLayers.RestPose,
    Select = require(script.Layers.Select),
    Sequence = require(script.Layers.Sequence),
    StaticBlending = require(script.Layers.StaticBlending),
    Additive = require(script.Layers.Additive),
    Mirror = require(script.Layers.Mirror),
}

local Anim = {
    BlendSpace = BlendSpace,
    FiniteLayer = FiniteLayer,
    Layer = Layer,
    Layers = layerClasses,
}

function Anim.createCompositor(
    compositorScript: ModuleScript,
    animator: Animator,
    initialParams: Types.Map?
): Compositor
    local compositorDef: LayerDef = require(compositorScript) :: LayerDef
    return Compositor.new(compositorDef, animator, initialParams or {})
end

function Anim.createCompositorFromDef(
    compositorDef: LayerDef,
    animator: Animator,
    initialParams: Types.Map?
): Compositor
    return Compositor.new(compositorDef, animator, initialParams or {})
end

function Anim.newDef(layer: Types.Layer | string): LayerDef
    local layerClass = if typeof(layer) == "string" then layerClasses[layer] else layer
    if layerClass == nil then
        error("Layer class cannot be nil")
    end
    return LayerDef.new(layerClass)
end

return Anim
