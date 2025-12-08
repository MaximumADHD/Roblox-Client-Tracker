local DeepCopy = require(script.Parent.DeepCopy)
local PropsManager = require(script.Parent.PropsManager)
local Types = require(script.Parent.types)

export type LayerDef = Types.LayerDef

local layerDefMetatablesCache = {}

local LayerDef = {} :: LayerDef;
(LayerDef :: any).__index = LayerDef

function LayerDef.new(layerClass): LayerDef
    local newDef = {
        layer = layerClass,
        props = {},
        children = {},
        linkData = {},
        eventConnections = {},
    }

    local metatable = layerDefMetatablesCache[layerClass]
    if metatable == nil then
        metatable = table.clone(LayerDef)
        metatable.__index = metatable

        for name, val in layerClass.defaultProps do
            if metatable[name] ~= nil then
                error(
                    string.format(
                        'Prop key cannot match an existing property name on LayerDef: "%s"',
                        name
                    )
                )
            end
            metatable[name] = function(self, v)
                self.props[name] = v
                return self
            end
        end
        layerDefMetatablesCache[layerClass] = metatable
    end
    setmetatable(newDef, metatable)

    return (newDef :: any) :: LayerDef
end

function LayerDef:name(name: string)
    self.layerName = name
    return self
end

function LayerDef:referenceName(name: string)
    self.layerReferenceName = name
    return self
end

function LayerDef:addChild(linkData: Types.Map, def: LayerDef)
    table.insert(self.children, def)
    def.linkData = linkData
    return self
end

function LayerDef:inherit(): LayerDef
    return DeepCopy.deepCopy(self, { [self.layer] = self.layer }) :: LayerDef
end

function LayerDef:instantiate(context: Types.Context): Types.Layer
    local layerData = {
        name = self.layerName,
        state = {},
        children = {},
        linkData = DeepCopy.deepCopy(self.linkData),
        context = context,
        __propsManager = PropsManager.new(self.props, self.layer.defaultProps),
    }
    local layerInstance = (setmetatable(layerData, self.layer) :: any) :: Types.Layer

    if self.layerReferenceName then
        context.referenceLayers[self.layerReferenceName] = layerInstance
    end

    for _, childDef in self.children do
        local childLayer = childDef:instantiate(context)
        table.insert(layerInstance.children, childLayer)
        childLayer.parent = layerInstance
    end

    local microProfilerBool =
        workspace:FindFirstChild("CompositorMicroProfilingEnabled") :: BoolValue?
    if microProfilerBool ~= nil and microProfilerBool.Value then
        local profileLabelStart = (self.layerName and self.layerName .. " - " or "")
            .. self.layer.__layerName
        local actualUpdateMethod = layerInstance.update
        layerInstance.update = function(
            thisLayer: Types.Layer,
            dt: number,
            phaseState: Types.PhaseState?
        ): Types.PhaseState?
            debug.profilebegin(profileLabelStart .. ":update")
            local result = actualUpdateMethod(thisLayer, dt, phaseState)
            debug.profileend()
            return result
        end

        local actualEvaluateMethod = layerInstance.evaluate
        layerInstance.evaluate = function(
            thisLayer: Types.Layer,
            mask: AnimationMask
        ): AnimationPose
            debug.profilebegin(profileLabelStart .. ":evaluate")
            local result = actualEvaluateMethod(thisLayer, mask)
            debug.profileend()
            return result
        end
    end

    layerInstance:init()

    return layerInstance
end

return LayerDef
