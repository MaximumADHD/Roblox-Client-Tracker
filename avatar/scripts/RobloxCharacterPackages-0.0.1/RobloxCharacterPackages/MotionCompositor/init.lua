-- Animation compositing library
local Blend = require(script.Layers.Blend)
local Compositor = require(script.Scheduling.Compositor)
local Layer = require(script.Base.Layer)
local LayerDef = require(script.Base.LayerDef)
local StaticLayers = require(script.Layers.StaticLayers)
local Types = require(script.Base.types)

export type Compositor = Compositor.Compositor
export type LayerDef = LayerDef.LayerDef

local layerClasses = {
    Blend = Blend,
    Blend1D = require(script.Layers.Blend1D),
    Blend2D = require(script.Layers.Blend2D),
    Clip = require(script.Layers.Clip),
    HeadRotate = require(script.Layers.HeadRotate),
    Priority = require(script.Layers.Priority),
    RestPose = StaticLayers.RestPose,
    Select = require(script.Layers.Select),
    Sequence = require(script.Layers.Sequence),
}

local Anim = {
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

function Anim.newDef(layer: Types.Layer | string): LayerDef
    local layerClass = if typeof(layer) == "string" then layerClasses[layer] else layer
    if layerClass == nil then
        error("Layer class cannot be nil")
    end
    return LayerDef.new(layerClass)
end

return Anim
