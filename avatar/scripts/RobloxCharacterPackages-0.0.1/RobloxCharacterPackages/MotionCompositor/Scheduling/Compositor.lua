local RunService = game:GetService("RunService")

local Package = script.Parent.Parent
local DebuggerConnection = require(Package.Scheduling.DebuggerConnection)
local LayerDef = require(Package.Base.LayerDef)
local Types = require(Package.Base.types)

local HttpService = game:GetService("HttpService")

type LayerDef = LayerDef.LayerDef

export type Compositor = CompositorBase<{}>

type CompositorBase<T> = {
    play: (self: T) -> (),
    stop: (self: T) -> (),
    getParam: <P>(self: T, name: string) -> P,
    getAllParams: (self: T) -> Types.Map,
    setParam: <P>(self: T, name: string, val: P) -> (),
    setParams: (self: T, newParams: Types.Map) -> (),
    getEvent: (self: T, name: string) -> RBXScriptSignal?,
}

export type CompositorInternal =
    Types.ContextT<CompositorInternal>
    & CompositorBase<CompositorInternal>
    & {
        new: (
            rootLayer: LayerDef,
            animator: Animator,
            defaultParams: { [string]: any }
        ) -> Compositor,

        __index: CompositorInternal,
        __rootLayer: Types.Layer,
        __events: { [string]: BindableEvent? },
        __animator: Animator,
        __debuggerConnection: DebuggerConnection.DebuggerConnection?,
        __layerIdCache: { [Types.Layer]: string },
        __idLayerCache: { [string]: LayerCache },

        __onEvaluate: (
            self: CompositorInternal,
            context: AnimationContext,
            dt: number
        ) -> AnimationPose?,
        __buildLayerCache: (self: CompositorInternal) -> (),
        __getDebugData: (self: CompositorInternal) -> Types.DebugData,
        __getDebugDataRecursive: (self: CompositorInternal, layer: Types.Layer) -> Types.DebugData,
        __overrideProperties: (self: CompositorInternal, propOverrides: Types.Map) -> (),
        __setAdornments: (self: CompositorInternal, rig: Instance?, adornments: Types.Map) -> (),
    }

type AdornmentInfo = {
    enabled: boolean,
    color: Color3,
}

type LayerCache = {
    layer: Types.Layer,
    evaluate: (self: Types.Layer, mask: AnimationMask) -> AnimationPose,
    adorn: Instance?,
}

local Compositor = {} :: CompositorInternal
Compositor.__index = Compositor

function Compositor.new(compositorDef, animator, defaultParams): Compositor
    local context = setmetatable({
        __animator = animator,
        __events = {},
        params = {},
        character = animator:FindFirstAncestorWhichIsA("Model") :: Model,
    } :: any, Compositor) :: CompositorInternal

    context:setParams(defaultParams)
    context.__rootLayer = compositorDef:instantiate(context)

    return context :: any
end

function Compositor:getParam<T>(name: string): T
    return self.params[name]
end

function Compositor:getAllParams(): Types.Map
    return self.params
end

function Compositor:setParam<T>(name: string, val: T)
    self.params[name] = val
end

function Compositor:setParams(newParams: { [string]: any })
    for name, val in newParams do
        self:setParam(name, val)
    end
end

function Compositor:getEvent(name: string): RBXScriptSignal?
    local event = self.__events[name]
    if event == nil then
        return nil
    end
    assert(event ~= nil)

    return event.Event
end

function Compositor:exposeEvent(eventName: string)
    if eventName == "" or self.__events[eventName] ~= nil then
        return
    end

    local newEvent = Instance.new("BindableEvent")
    newEvent.Name = eventName
    self.__events[eventName] = newEvent
end

function Compositor:fireEvent(eventName: string, payload: Types.Map?)
    if eventName == "" then
        return
    end

    local event = self.__events[eventName]
    if event == nil then
        error("Attempted to fire an event that wasn't previous exposed: \"" .. eventName .. '"')
    end
    assert(event ~= nil)

    event:Fire(payload)
end

function Compositor:play()
    local isDebuggerEnabled = RunService:IsStudio()
    if isDebuggerEnabled then
        local model = self.__animator:FindFirstAncestorWhichIsA("Model")
        assert(model ~= nil, "Animator not parented to a model.")
        model:SetAttribute("HasCompositor", true)
        local debuggerConnection = DebuggerConnection.new(model, self)
        debuggerConnection:listen()
        self.__debuggerConnection = debuggerConnection
    end

    (self.__animator :: any):RegisterEvaluationParallelCallback(function(context, dt)
        return self:__onEvaluate(context, dt)
    end)
end

function Compositor:stop()
    (self.__animator :: any):RegisterEvaluationParallelCallback(nil)

    if self.__debuggerConnection ~= nil then
        self.__debuggerConnection:stop()
    end
end

function Compositor:__onEvaluate(context: AnimationContext, dt: number)
    self.__rootLayer:update(dt)
    if context.EvaluationThrottled then
        return nil
    end

    return self.__rootLayer:evaluate(context.AnimationMask)
end

function Compositor:__getDebugDataRecursive(layer: Types.Layer): Types.DebugData
    local children = {}
    for i, child in layer.children do
        children[i] = layer:getChildDebugData(i, child) or {} :: Types.Map
        for key, value in self:__getDebugDataRecursive(child) :: any do
            children[i][key] = value
        end
    end

    local debugData = layer:getDebugData()
    debugData.id = self.__layerIdCache[layer]
    debugData.children = children :: any

    return debugData
end

function Compositor:__getDebugData(): Types.DebugData
    if not self.__rootLayer then
        return {} :: Types.DebugData
    end

    if not self.__layerIdCache then
        self:__buildLayerCache()
    end

    return self:__getDebugDataRecursive(self.__rootLayer)
end

function Compositor:__buildLayerCache(): ()
    -- TODO: First hard problem in Computer Science. But does it happen here?
    self.__layerIdCache = {}
    self.__idLayerCache = {}

    local function buildLayerCacheRecursive(layer: Types.Layer)
        local layerId = HttpService and HttpService:GenerateGUID()
        self.__layerIdCache[layer] = layerId
        self.__idLayerCache[layerId] = {
            layer = layer,
            evaluate = layer.evaluate,
            adorn = nil,
        }

        if layer.children == nil then
            return
        end

        for _, child: Types.Layer in layer.children do
            buildLayerCacheRecursive(child)
        end
    end

    buildLayerCacheRecursive(self.__rootLayer)
end

-- TODO: Switch to a push system. The debugger should send an event to enable/disable an adornment.
function Compositor:__setAdornments(rig: Instance?, adornments: { [string]: AdornmentInfo })
    if not self.__layerIdCache then
        self:__buildLayerCache()
    end

    for layerId, adornmentInfo in adornments do
        local layerCache = self.__idLayerCache[layerId]
        if not layerCache then
            continue
        end
        if adornmentInfo.enabled then
            if layerCache.adorn == nil then
                local darkColor = Color3.new(
                    adornmentInfo.color.R * 0.75,
                    adornmentInfo.color.G * 0.75,
                    adornmentInfo.color.B * 0.75
                )
                local ok, newAdorn = pcall(function()
                    local newAdorn = (Instance.new :: any)("AnimationPoseHandleAdornment")
                    newAdorn.Adornee = rig
                    newAdorn.Color3 = darkColor
                    newAdorn.JointsColor = darkColor
                    newAdorn.JointsWireframeColor = adornmentInfo.color
                    newAdorn.JointsSolid = true
                    newAdorn.JointsWireframe = true
                    newAdorn.Archivable = false
                    newAdorn.Parent = rig
                    return newAdorn
                end)
                if ok then
                    layerCache.adorn = newAdorn
                end
            end
            -- Wrap the evaluate method to display the adornment
            layerCache.layer.evaluate = function(
                self: Types.Layer,
                mask: AnimationMask
            ): AnimationPose
                local pose = layerCache.evaluate(self, mask)
                local adorn = layerCache.adorn :: any
                adorn:Clear()
                adorn:AddPose(pose)
                return pose
            end
        else
            -- Reset the evaluate method and the adorn
            layerCache.layer.evaluate = layerCache.evaluate
            if layerCache.adorn then
                layerCache.adorn:Destroy()
                layerCache.adorn = nil
            end
        end
    end
end

function Compositor:__overrideProperties(overrides: Types.Map): ()
    if not self.__layerIdCache then
        self:__buildLayerCache()
    end

    for layer, layerId in self.__layerIdCache do
        layer:overrideProperties(overrides[layerId] :: any)
    end
end

return Compositor
