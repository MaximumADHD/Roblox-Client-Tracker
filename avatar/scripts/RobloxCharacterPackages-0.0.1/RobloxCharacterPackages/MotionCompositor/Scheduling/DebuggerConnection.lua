local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local Package = script.Parent.Parent
local Types = require(Package.Base.types)

export type DebuggerConnection = DebuggerConnectionT<{}>

type DebuggerConnectionT<T> = T & {

    new: (model: Model, compositor: CompositorDebugInterface) -> DebuggerConnectionT<T>,
    listen: (self: DebuggerConnectionT<T>) -> (),
    stop: (self: DebuggerConnectionT<T>) -> (),
}

type DebuggerConnectionInternal = DebuggerConnectionT<{
    __agentId: string,
    __compositor: CompositorDebugInterface,
    __model: Model,
    __childAddedConnection: RBXScriptConnection?,
    __childRemovedConnection: RBXScriptConnection?,
    __sendConnection: RBXScriptConnection?,
    __propertyOverridesConnection: RBXScriptConnection?,
    __layerAdornmentsConnection: RBXScriptConnection?,
    __index: DebuggerConnectionInternal,

    __onDebuggerConnected: (self: DebuggerConnectionInternal, folder: Folder) -> (),
    __onDebuggerDisconnected: (self: DebuggerConnectionInternal) -> (),
}>

type CompositorDebugInterface = {
    __getDebugData: (self: CompositorDebugInterface) -> Types.DebugData,
    __overrideProperties: (self: CompositorDebugInterface, propOverrides: Types.Map) -> (),
    __setAdornments: (self: CompositorDebugInterface, rig: Instance?, adornments: Types.Map) -> (),
}

local DebuggerConnection = {} :: DebuggerConnectionInternal
DebuggerConnection.__index = DebuggerConnection

function DebuggerConnection.new(
    model: Model,
    compositor: CompositorDebugInterface
): DebuggerConnectionInternal
    local newObject = {
        __agentId = nil,
        __compositor = compositor,
        __model = model,
        __childAddedConnection = nil,
        __childRemovedConnection = nil,
        __sendConnection = nil,
        __propertyOverridesConnection = nil,
        __layerAdornmentsConnection = nil,
    }
    setmetatable(newObject, DebuggerConnection)

    return newObject :: any
end

function isDebuggerFolder(instance: Instance)
    return instance:IsA("Folder") and instance.Name == "__RobloxCompositorDebugger"
end

function DebuggerConnection:listen()
    self.__agentId = HttpService:GenerateGUID()

    self.__childAddedConnection = self.__model.ChildAdded:Connect(function(child)
        if isDebuggerFolder(child) then
            assert(child:IsA("Folder"))
            self:__onDebuggerConnected(child)
        end
    end)

    self.__childRemovedConnection = self.__model.ChildRemoved:Connect(function(child)
        if isDebuggerFolder(child) then
            self:__onDebuggerDisconnected()
        end
    end)
end

function DebuggerConnection:stop()
    if self.__childAddedConnection then
        self.__childAddedConnection:Disconnect()
    end
    if self.__childRemovedConnection then
        self.__childRemovedConnection:Disconnect()
    end
    if self.__sendConnection then
        self.__sendConnection:Disconnect()
    end
end

local function warnConnectionFailed(msg: string)
    warn("Compositor Debugger connection failed:", msg)
end

local function isDebuggerEventsFolderValid(eventsFolder: Folder): boolean
    return eventsFolder:FindFirstChild("DebugData") ~= nil
        and eventsFolder:FindFirstChild("DebugData"):IsA("BindableEvent")
        and eventsFolder:FindFirstChild("PropertyOverrides") ~= nil
        and eventsFolder:FindFirstChild("PropertyOverrides"):IsA("BindableEvent")
        and eventsFolder:FindFirstChild("LayerAdornments") ~= nil
        and eventsFolder:FindFirstChild("LayerAdornments"):IsA("BindableEvent")
end

local function getEventsFolder(debuggerFolder: Folder): Folder?
    local eventsFolder = nil
    if RunService:IsClient() then
        eventsFolder = debuggerFolder:FindFirstChild("Client")
    elseif RunService:IsServer() then
        eventsFolder = debuggerFolder:FindFirstChild("Server")
    else
        warnConnectionFailed("compositor not running in a Server or Client context")
        return nil
    end

    if eventsFolder == nil then
        warnConnectionFailed("no event was found")
        return nil
    end

    if not eventsFolder:IsA("Folder") then
        warnConnectionFailed("Client/Server debugger insctances must be folders")
    end
    assert(eventsFolder:IsA("Folder"))

    if not isDebuggerEventsFolderValid(eventsFolder) then
        warnConnectionFailed("folder does not contain all necessary events")
        return nil
    end

    return eventsFolder
end

function DebuggerConnection:__onDebuggerConnected(debuggerFolder: Folder)
    local eventsFolder = getEventsFolder(debuggerFolder)
    if eventsFolder == nil then
        return
    end
    assert(eventsFolder ~= nil)

    local sendDataEvent = eventsFolder:FindFirstChild("DebugData") :: BindableEvent
    self.__sendConnection = RunService.Stepped:Connect(function()
        sendDataEvent:Fire({
            id = self.__agentId,
            name = self.__model and self.__model.Name,
            children = { self.__compositor:__getDebugData() },
        })
    end)

    local propertyOverridesEvent = eventsFolder:FindFirstChild("PropertyOverrides") :: BindableEvent
    self.__propertyOverridesConnection = propertyOverridesEvent.Event:Connect(function(overrides)
        self.__compositor:__overrideProperties(overrides)
    end)

    local layerAdornmentsEvent = eventsFolder:FindFirstChild("LayerAdornments") :: BindableEvent
    self.__layerAdornmentsConnection = layerAdornmentsEvent.Event:Connect(function(adornments)
        self.__compositor:__setAdornments(self.__model, adornments)
    end)
end

function DebuggerConnection:__onDebuggerDisconnected()
    if self.__sendConnection ~= nil then
        self.__sendConnection:Disconnect()
        self.__sendConnection = nil
    end

    if self.__propertyOverridesConnection ~= nil then
        self.__propertyOverridesConnection:Disconnect()
        self.__propertyOverridesConnection = nil
    end

    if self.__layerAdornmentsConnection ~= nil then
        self.__layerAdornmentsConnection:Disconnect()
        self.__layerAdornmentsConnection = nil
    end
end

return DebuggerConnection
