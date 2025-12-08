local Workspace = script.Parent.Parent
local FiniteLayer = require(Workspace.Base.FiniteLayer)
local Types = require(Workspace.Base.types)

local StaticLayers = {}

function define(name: string, onEvaluate: (AnimationMask) -> AnimationPose): Types.FiniteLayer
    -- Static layers are FiniteLayers so that blendspace layers can use them (e.g. rest pose in the
    -- origin of a Blend2D).
    local staticLayer = FiniteLayer:extend(name) :: Types.ExtendFiniteLayer<{
        timePosition: number,
    }>

    staticLayer.defaultProps = {
        duration = 1,
    }

    function staticLayer:onInit()
        self.timePosition = 0
    end

    function staticLayer:getDuration()
        return self.props.duration
    end

    function staticLayer:getTimePositionNormalized()
        return math.clamp(self.timePosition / self.props.duration, 0, 1)
    end

    function staticLayer:onUpdate(dt)
        self.timePosition += dt
        self.timePosition %= self.props.duration
        return nil
    end

    function staticLayer:onEvaluate(mask: AnimationMask)
        return onEvaluate(mask)
    end

    return staticLayer :: any
end

StaticLayers.RestPose = define("RestPose", function(mask: AnimationMask)
    return AnimationPose.createRest(mask)
end)

return StaticLayers
