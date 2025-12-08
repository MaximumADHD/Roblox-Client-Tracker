local RunService = game:GetService("RunService")

local Package = script.Parent.Parent
local DebuggerConnection = require(Package.Debugger.Connection)
local LayerDef = require(Package.Base.LayerDef)
local LodAdornment = require(Package.Debugger.LodAdornment)
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
    getEvent: (self: T, eventName: string) -> RBXScriptSignal?,
    getReferenceLayer: (self: T, name: string) -> Types.Layer?,
}

export type CompositorInternal =
    Types.ContextT<CompositorInternal, Types.Layer>
    & CompositorBase<CompositorInternal>
    & {
        new: (
            rootLayer: LayerDef,
            animator: Animator,
            defaultParams: { [string]: any }
        ) -> Compositor,

        __index: CompositorInternal,
        __events: { [string]: BindableEvent? },
        __animator: Animator,
        __debuggerConnection: DebuggerConnection.DebuggerConnection?,
        __layerIdCache: { [Types.Layer]: string },
        __idLayerCache: { [string]: Types.LayerCache },
        __isCacheDirty: boolean,
        __compositorGlobalTime: number,
        __lastCacheCleanupTime: number,
        __eventsFiredPreviousEvaluation: Types.Dictionary<string, boolean>,
        __eventsFiredCurrentEvaluation: Types.Dictionary<string, boolean>,
        __isScrubbing: boolean,
        __debugPose: AnimationPose?,
        __debugMask: AnimationMask?,
        __lodAdornment: LodAdornment.LodAdornment?,

        __onEvaluate: (
            self: CompositorInternal,
            context: AnimationContext,
            dt: number
        ) -> AnimationPose?,
        __buildLayerCache: (self: CompositorInternal) -> (),
        __getDebugData: (self: CompositorInternal) -> Types.DebugData,
        __getDebugDataRecursive: (self: CompositorInternal, layer: Types.Layer) -> Types.DebugData,
        __overrideProperties: (self: CompositorInternal, propOverrides: Types.Map) -> (),
        __cleanupDebuggerCache: (self: CompositorInternal) -> (),
        __setDebugPose: (self: CompositorInternal, pose: AnimationPose?, cFrame: CFrame?) -> (),
    }

local Compositor = {} :: CompositorInternal
Compositor.__index = Compositor

local DEBUGGER_CACHE_CLEANUP_INTERVAL_SECONDS = 3

function Compositor.new(compositorDef, animator, defaultParams): Compositor
    local character = animator:FindFirstAncestorWhichIsA("Model")
    assert(character ~= nil, "Animator passed to Compositor.new must be parented to a Model.")
    local context = setmetatable({
        params = {},
        character = character,
        referenceLayers = {},

        __animator = animator,
        __events = {},
        __compositorGlobalTime = 0,
        __lastCacheCleanupTime = 0,
        __eventsFiredPreviousEvaluation = {},
        __eventsFiredCurrentEvaluation = {},
        __isScrubbing = false,
    } :: any, Compositor) :: CompositorInternal

    context:setParams(defaultParams)
    context.rootLayer = compositorDef:instantiate(context)

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

function Compositor:getEvent(eventName: string): RBXScriptSignal?
    if self.__events[eventName] == nil then
        local newEvent = Instance.new("BindableEvent")
        newEvent.Name = eventName
        self.__events[eventName] = newEvent
    end

    local event = self.__events[eventName]
    if event == nil then
        return nil
    end

    return event.Event
end

function Compositor:getReferenceLayer(name: string): Types.Layer?
    return self.referenceLayers[name]
end

function Compositor:fireEvent(eventName: string?, payload: any?)
    if eventName == nil or eventName == "" then
        return
    end

    local event = self.__events[eventName]
    if event ~= nil then
        event:Fire(payload)
    end

    self.__eventsFiredCurrentEvaluation[eventName] = true
end

function Compositor:pollEvent(eventName: string): boolean
    return self.__eventsFiredPreviousEvaluation[eventName] == true
end

function Compositor:notifyTreeChanged()
    self.__isCacheDirty = true
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

    if isDebuggerEnabled and RunService:IsClient() and self.__lodAdornment == nil then
        local lodAdornmentsBool =
            workspace:FindFirstChild("CompositorLodAdornmentsEnabled") :: BoolValue?
        if lodAdornmentsBool then
            self.__lodAdornment = LodAdornment.new(self.character)
        end
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

    if self.__lodAdornment ~= nil then
        self.__lodAdornment:destroy()
        self.__lodAdornment = nil
    end
end

function Compositor:__onEvaluate(context: AnimationContext, dt: number)
    self.lod = context.Lod

    -- __debugPose can be nil even when scrubbing, because not all layers are
    -- evaluated.
    if self.__isScrubbing then
        return self.__debugPose or AnimationPose.createRest(context.AnimationMask)
    end

    self.__compositorGlobalTime += dt
    self.rootLayer:update(dt)

    if self.__lodAdornment then
        task.spawn(function()
            task.synchronize()
            self.__lodAdornment:setCurrentLod(context.Lod)
        end)
    end
    local tempPrev = self.__eventsFiredPreviousEvaluation
    self.__eventsFiredPreviousEvaluation = self.__eventsFiredCurrentEvaluation
    self.__eventsFiredCurrentEvaluation = tempPrev
    table.clear(self.__eventsFiredCurrentEvaluation)
    if context.EvaluationThrottled then
        return nil
    end

    local resultPose = self.rootLayer:evaluate(context.AnimationMask)
    self:__cleanupDebuggerCache()
    return resultPose
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
    -- If a layer doesn't exist in the mapping, add it.
    if self.__layerIdCache[layer] == nil then
        local layerId = HttpService and HttpService:GenerateGUID()
        self.__layerIdCache[layer] = layerId
        self.__idLayerCache[layerId] = {
            layer = layer,
            evaluate = layer.evaluate,
            adorn = nil,
        }
    end

    debugData.id = self.__layerIdCache[layer]
    debugData.children = children :: any

    return debugData
end

function Compositor:__getDebugData(): Types.DebugData
    if not self.rootLayer then
        return {} :: Types.DebugData
    end

    if not self.__layerIdCache then
        self:__buildLayerCache()
    end

    return self:__getDebugDataRecursive(self.rootLayer)
end

function Compositor:__buildLayerCache(): ()
    -- TODO: First hard problem in Computer Science. But does it happen here?
    self.__layerIdCache = {}
    self.__idLayerCache = {}

    local function buildLayerCacheRecursive(layer: Types.Layer)
        local layerId = HttpService and HttpService:GenerateGUID()
        assert(self.__layerIdCache ~= nil)
        assert(self.__idLayerCache ~= nil)
        self.__layerIdCache[layer] = layerId
        self.__idLayerCache[layerId] = {
            layer = layer,
            evaluate = layer.evaluate,
            adorn = nil,
            gizmo = nil,
        }

        if layer.children then
            for _, child: Types.Layer in layer.children do
                buildLayerCacheRecursive(child)
            end
        end
    end

    buildLayerCacheRecursive(self.rootLayer)
end

function Compositor:__overrideProperties(overrides: Types.Map): ()
    if not self.__layerIdCache then
        self:__buildLayerCache()
    end

    assert(self.__layerIdCache ~= nil)
    for layer, layerId in self.__layerIdCache do
        layer:overrideProperties(overrides[layerId] :: any)
    end
end

function Compositor:__cleanupDebuggerCache()
    local function populateLayersInSetRecursive(
        layer: Types.Layer,
        layerSet: { [Types.Layer]: boolean }
    )
        layerSet[layer] = true

        for _, child in layer.children do
            populateLayersInSetRecursive(child, layerSet)
        end
    end

    if
        self.__layerIdCache == nil
        or not self.__isCacheDirty
        or self.__compositorGlobalTime - self.__lastCacheCleanupTime
            < DEBUGGER_CACHE_CLEANUP_INTERVAL_SECONDS
    then
        return
    end

    local layerSet = {}
    populateLayersInSetRecursive(self.rootLayer, layerSet)

    for layer, id in self.__layerIdCache do
        if not layerSet[layer] then
            self.__layerIdCache[layer] = nil
            self.__idLayerCache[id] = nil
        end
    end

    self.__lastCacheCleanupTime = self.__compositorGlobalTime
    self.__isCacheDirty = false
end

function Compositor:__setDebugPose(pose, cFrame)
    self.__isScrubbing = cFrame ~= nil
    self.__debugPose = pose

    task.spawn(function()
        task.synchronize()
        local hrp = self.character:FindFirstChild("HumanoidRootPart") :: BasePart
        hrp.Anchored = self.__isScrubbing
        if cFrame then
            hrp.CFrame = cFrame
        end
    end)
end

return Compositor
