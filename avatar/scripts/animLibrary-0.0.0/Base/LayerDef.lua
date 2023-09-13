local PropsTable = require(script.Parent.PropsTable)
local Types = require(script.Parent.types)

export type LayerDef = {
    layerName: string?,
    layer: Types.Layer,
    props: Types.Map,
    linkData: Types.Map,
    children: { LayerDef },

    new: (layerType: Types.Layer) -> LayerDef,
    name: (self: LayerDef, name: string) -> LayerDef,
    addChild: (self: LayerDef, linkData: Types.Map, def: LayerDef) -> LayerDef,
    inherit: (LayerDef) -> LayerDef,
    instantiate: (LayerDef, Types.Context) -> Types.Layer,

    [string]: (self: LayerDef, val: any) -> LayerDef,
}

local LayerDef = {} :: LayerDef;
(LayerDef :: any).__index = LayerDef

function LayerDef.new(layerClass): LayerDef
    local newDef = {
        layer = layerClass,
        props = {},
        children = {},
        linkData = {},
    }
    setmetatable(newDef, LayerDef)

    for name, val in layerClass.defaultProps do
        if newDef[name] ~= nil then
            error(
                'Prop key cannot match an existing property name on LayerDef: "'
                    .. tostring(layerClass)
                    .. '"'
            )
        end
        newDef[name] = function(self, v)
            self.props[name] = v
            return self
        end
    end

    return (newDef :: any) :: LayerDef
end

function LayerDef:name(name: string)
    self.layerName = name
    return self
end

function LayerDef:addChild(linkData: Types.Map, def: LayerDef)
    table.insert(self.children, def)
    def.linkData = linkData
    return self
end

local function deepCopyInternal<T>(obj: T?, seenTables: { [any]: any }): T?
    if typeof(obj) ~= "table" or seenTables[obj] then
        return obj
    end

    local copy = setmetatable({}, getmetatable(obj :: any))
    seenTables[obj] = copy

    for key, val in obj :: any do
        copy[key] = deepCopyInternal(val, seenTables)
    end

    return copy :: any
end

local function deepCopy<T>(obj: T): T
    return deepCopyInternal(obj, {}) :: T
end

function LayerDef:inherit(): LayerDef
    return deepCopyInternal(self, { [self.layer] = true }) :: LayerDef
end

function LayerDef:instantiate(context: Types.Context): Types.Layer
    local layerData = {
        name = self.layerName,
        state = {},
        props = PropsTable.new(self.props, self.layer.defaultProps),
        children = {},
        linkData = deepCopy(self.linkData),
        context = context,
    }
    layerData.props:setParams(context.params)
    local layerInstance = (setmetatable(layerData, self.layer) :: any) :: Types.Layer

    for _, childDef in self.children do
        table.insert(layerInstance.children, childDef:instantiate(context))
    end

    layerInstance:init()

    return layerInstance
end

return LayerDef
