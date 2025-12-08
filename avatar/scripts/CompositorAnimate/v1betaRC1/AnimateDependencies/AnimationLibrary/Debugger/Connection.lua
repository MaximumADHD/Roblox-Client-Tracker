local HttpService = game:GetService("HttpService")
local RunService = game:GetService("RunService")

local Package = script.Parent.Parent
local Layer = require(Package.Base.Layer)
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
    __debugPoseConnection: RBXScriptConnection?,
    __index: DebuggerConnectionInternal,

    __onDebuggerConnected: (self: DebuggerConnectionInternal, folder: Folder) -> (),
    __onDebuggerDisconnected: (self: DebuggerConnectionInternal) -> (),
}>

type CompositorDebugInterface = {
    __isScrubbing: boolean,
    character: Model,
    rootLayer: Types.Layer,
    __compositorGlobalTime: number,
    __getDebugData: (self: CompositorDebugInterface) -> Types.DebugData,
    __overrideProperties: (self: CompositorDebugInterface, propOverrides: Types.Map) -> (),
    __setDebugPose: (self: CompositorDebugInterface, pose: AnimationPose?, cFrame: CFrame?) -> (),
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
        __debuPoseConnection = nil,
    }
    setmetatable(newObject, DebuggerConnection)

    return newObject :: any
end

function isDebuggerFolder(instance: Instance)
    return instance:IsA("Folder") and instance.Name == "__RobloxCompositorDebugger"
end

function DebuggerConnection:listen()
    self.__agentId = HttpService:GenerateGUID()

    for _, child in self.__model:GetChildren() do
        if isDebuggerFolder(child) then
            assert(child:IsA("Folder"))
            self:__onDebuggerConnected(child)
        end
    end

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

    Layer.__debuggerConnected = true

    local sendDataEvent = eventsFolder:FindFirstChild("DebugData") :: BindableEvent
    self.__sendConnection = RunService.Stepped:Connect(function()
        local compositor = self.__compositor
        if not compositor.__isScrubbing then
            local hrp = if compositor.character
                then compositor.character:FindFirstChild("HumanoidRootPart") :: BasePart
                else nil
            sendDataEvent:Fire({
                timestamp = compositor.__compositorGlobalTime,
                animationPose = compositor.rootLayer.__debugPose,
                animationMask = compositor.rootLayer.__debugMask,
                hrpCFrame = hrp and hrp.CFrame or nil,
                id = self.__agentId,
                name = self.__model and self.__model.Name,
                children = { compositor:__getDebugData() },
            })
        end
    end)

    local propertyOverridesEvent = eventsFolder:FindFirstChild("PropertyOverrides") :: BindableEvent
    self.__propertyOverridesConnection = propertyOverridesEvent.Event:Connect(function(overrides)
        self.__compositor:__overrideProperties(overrides)
    end)

    local debugPoseEvent = eventsFolder:FindFirstChild("DebugPose") :: BindableEvent
    self.__debugPoseConnection = debugPoseEvent.Event:Connect(function(pose, hrpCFrame)
        self.__compositor:__setDebugPose(pose, hrpCFrame)
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

    if self.__debugPoseConnection ~= nil then
        self.__debugPoseConnection:Disconnect()
        self.__debugPoseConnection = nil
    end

    Layer.__debuggerConnected = false
end

return DebuggerConnection
