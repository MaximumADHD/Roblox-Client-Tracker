local DeepCopy = require(script.Parent.DeepCopy)
local Types = require(script.Parent.types)

local layerClassMetatable = {}

function layerClassMetatable:__tostring()
    return self.__layerName
end

-- The BaseLayer type.
export type BaseLayer = Types.ExtendLayer<{
    extend: <T>(self: BaseLayer, name: string) -> T,
}>

local layerData = { defaultProps = {}, defaultLinkData = nil, __layerName = "Layer" }
local Layer = (setmetatable(layerData, layerClassMetatable) :: any) :: BaseLayer

function Layer:extend<T>(name: string): T
    local layerClass = {}

    for key, value in pairs(self) do
        if key ~= "extend" then
            layerClass[key] = value
        end
    end

    layerClass.__index = layerClass
    layerClass.__tostring = function()
        return layerClass.__layerName
    end
    layerClass.__layerName = name
    setmetatable(layerClass, layerClassMetatable)

    return layerClass :: any
end

function Layer:init()
    self.tempState = {}
    self.props = self.__propsManager:evaluate(self.context.params)
    self:onInit()
end

function Layer:onInit()
    -- Intentionally left blank.
end

function Layer:overrideProperties(propOverrides: Types.Map)
    self.__propsManager:override(propOverrides)
end

function Layer:update(dt: number, phaseState: Types.PhaseState?)
    -- Evaluate all prop expressions.
    self.props = self.__propsManager:evaluate(self.context.params)
    return self:onUpdate(dt, phaseState)
end

function Layer:onUpdate(dt: number, phaseState: Types.PhaseState?)
    for _, child in self.children do
        child:update(dt, phaseState)
    end

    return nil
end

function Layer:evaluate(mask: AnimationMask)
    local pose = self:onEvaluate(mask)
    if Layer.__debuggerConnected then
        self.__debugPose = pose:Clone()
        self.__debugMask = mask
    end
    return pose
end

function Layer:onEvaluate(mask: AnimationMask)
    error(tostring(self) .. ":onEvaluate not implemented")
end

function Layer:reset()
    self.tempState = {}
    self:onReset()
    for _, child in self.children do
        child:reset()
    end
end

function Layer:onReset()
    -- Intentionally left blank.
end

function Layer:clone()
    local function deepCopyHelper(obj: any, seenTables: { [any]: any }): any
        local copy = {}
        seenTables[obj] = copy

        for key, val in obj do
            if key == "parent" then
                -- don't copy parent for now
                continue
            end

            if
                key == "context"
                or key == "defaultProps"
                or key == "defaultLinkData"
                or key == "linkData"
                or key == "__blendSpace"
            then
                copy[key] = val
            elseif key == "__propsManager" then
                copy["__propsManager"] = (val :: Types.PropsManager):clone()
            elseif typeof(val) == "table" then
                copy[key] = if seenTables[val] ~= nil
                    then seenTables[val]
                    else deepCopyHelper(val, seenTables)
            else
                copy[key] = val
            end
        end

        setmetatable(copy, getmetatable(obj))
        return copy
    end

    local seenTables: { [any]: any } = {}
    return deepCopyHelper(self, seenTables)
end

function Layer:getChildDebugData(index, child): Types.Map?
    return nil
end

function Layer:getLayerWatches(): Types.Map?
    return nil
end

function Layer:getDebugData(): Types.DebugData
    return {
        name = self.name,
        animationPose = self.__debugPose,
        animationMask = self.__debugMask,
        className = self.__layerName,
        state = self.state or {},
        props = self.props,
        watches = self:getLayerWatches(),
    } :: Types.DebugData
end

function Layer:onChildChanged(newChildIndex: number)
    -- Intentionally left blank.
end

function Layer:addChild(newChild: Types.Layer, linkData: Types.Map?)
    local index = #self.children + 1
    newChild.linkData = DeepCopy.deepCopy(linkData) or {}
    self.children[index] = newChild
    newChild.parent = self
    self:onChildChanged(index)
    self.context:notifyTreeChanged()
end

function Layer:insertLayerAbove(newParentLayer: Types.Layer, childLinkData: Types.Map?)
    local existingParent = self.parent :: BaseLayer
    local selfIndex: number? = 0
    if existingParent then
        selfIndex = table.find(existingParent.children, self)
        if not selfIndex then
            error("Could not find self in parent children table. Compositor tree invalid")
            return
        end
    end
    assert(selfIndex)

    newParentLayer.linkData = self.linkData
    newParentLayer.parent = existingParent
    newParentLayer:addChild(self, childLinkData)

    if existingParent then
        existingParent.children[selfIndex] = newParentLayer
        existingParent:onChildChanged(selfIndex)
    else
        assert(self.context.rootLayer == self)
        self.context.rootLayer = newParentLayer
        self.context:notifyTreeChanged()
    end
end

return Layer
