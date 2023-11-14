local Workspace = script.Parent.Parent
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Types = require(Workspace.Base.types)

local StaticLayers = {}

function StaticLayers.define(
    name: string,
    onEvaluate: (AnimationMask) -> AnimationPose
): Types.FiniteLayer
    local staticLayer = FiniteLayer:extend(name)

    function staticLayer:getDuration()
        return 1
    end

    function staticLayer:update(dt)
        -- Intentionally left blank.
        return nil
    end

    function staticLayer:evaluate(mask: AnimationMask)
        return onEvaluate(mask)
    end

    return staticLayer :: any
end

StaticLayers.RestPose = StaticLayers.define("RestPose", function(mask: AnimationMask)
    return mask:CreateRestPose()
end)

return StaticLayers
