--!strict
local debug : boolean = false
local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")

local localHumanoidStateMachineEvent : BindableEvent = Instance.new("BindableEvent")
localHumanoidStateMachineEvent.Name = "LocalHumanoidStateMachineEvent"
localHumanoidStateMachineEvent.Parent = script

local humanoidRemoteEvent : RemoteEvent = Instance.new("RemoteEvent")
humanoidRemoteEvent.Name = "HumanoidStateMachineUpdate"
humanoidRemoteEvent.Parent = replicatedStorage


local characterStateMachineFolder : Instance = replicatedStorage:WaitForChild("CharacterStateMachine")
local commonFuncs = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineCommon"))
local serverMonitor = require(characterStateMachineFolder:WaitForChild("ServerMonitor"))

local CCSMDef = require(characterStateMachineFolder:WaitForChild("CharacterControlStateMachine"))

local serverMonitorObject = serverMonitor.new(localHumanoidStateMachineEvent, CCSMDef)

-- WATCH FOR REMOTE MESSAGES -----------------------------------------------------------
local function onServerHumanoidRemoteEventServer(player : Player, eventType : string, data : any)
	serverMonitorObject:onServerHumanoidRemoteEventServer(player,eventType, data)
end

humanoidRemoteEvent.OnServerEvent:Connect(onServerHumanoidRemoteEventServer)

-- WATCH FOR LOCAL MESSAGES -----------------------------------------------------------
local function onServerLocalHumanoidStateMachineEvent(characterInstance : Model, humanoidInstance : Humanoid, eventType : string, data : any, localEvent : BindableEvent)
	serverMonitorObject:onServerLocalHumanoidStateMachineEvent(characterInstance, humanoidInstance, eventType, data)
end
localHumanoidStateMachineEvent.Event:Connect(onServerLocalHumanoidStateMachineEvent)

-- poll for ownership changes
while(wait(0.1)) do
	serverMonitorObject:pollForNetworkOwnership()
end

