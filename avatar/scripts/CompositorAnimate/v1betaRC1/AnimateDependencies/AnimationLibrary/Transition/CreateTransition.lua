local Workspace = script.Parent.Parent

local CrossFade = require(Workspace.Transition.CrossFade)
local PropsManager = require(Workspace.Base.PropsManager)
local TransitionTypes = require(Workspace.Transition.Types)
local Types = require(Workspace.Base.types)

local function cloneLayerIfInTransitionHierarchy(toLayer: Types.Layer, fromLayer: Types.Layer?)
    if fromLayer == nil then
        return
    end

    local currentTransitionLayer = fromLayer
    while tostring(currentTransitionLayer) == "CrossFade" do
        local crossFade = currentTransitionLayer :: CrossFade.CrossFade
        if crossFade:cloneLayerIfChild(toLayer) then
            return
        end

        currentTransitionLayer = crossFade.children[2]
    end
end

return function(
    toLayer: Types.Layer,
    fromLayer: Types.Layer?,
    duration: number
): TransitionTypes.Transition
    cloneLayerIfInTransitionHierarchy(toLayer, fromLayer)
    toLayer:reset()

    local transitionData = {
        name = "CrossFade Transition",
        state = {},
        children = { toLayer, fromLayer :: Types.Layer },
        context = toLayer.context,
        __propsManager = PropsManager.new({ duration = duration }, CrossFade.defaultProps),
    }

    local transitionInstance = (
        setmetatable(transitionData, CrossFade) :: any
    ) :: CrossFade.CrossFade
    transitionInstance:init()

    return transitionInstance
end
