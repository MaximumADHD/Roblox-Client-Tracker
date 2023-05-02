--!strict


-- Watching for messages from server
local debug = false
local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")
local humanoidStateMachineUpdateInstance : Instance = replicatedStorage:WaitForChild("HumanoidStateMachineUpdate")
local characterStateMachineFolder : Instance = replicatedStorage:WaitForChild("CharacterStateMachine")
local commonTypes = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineTypes"))
local commonFuncs = require(characterStateMachineFolder:WaitForChild("CharacterStateMachineCommon"))
local playersService : Players = game:FindService("Players")
local clientMonitor = require(characterStateMachineFolder:WaitForChild("ClientMonitor"))

local runningStateMachines : { [Model]: commonTypes.RunningStateMachineRecord } = {}

local humanoidStateMachineUpdateEvent : RemoteEvent = nil
if humanoidStateMachineUpdateInstance:IsA("RemoteEvent") then
	humanoidStateMachineUpdateEvent = humanoidStateMachineUpdateInstance
end

local localHumanoidStateMachineEvent : BindableEvent = Instance.new("BindableEvent")
localHumanoidStateMachineEvent.Name = "LocalHumanoidStateMachineEvent"
localHumanoidStateMachineEvent.Parent = script

-- SETUP CHARACTER CONTROL STATE MACHINE -----------------------------------------------------------
local CCSMDef = require(characterStateMachineFolder:WaitForChild("CharacterControlStateMachine"))

if debug then
	print("Starting client monitor")
end
local clientMonitorObject = clientMonitor.new(localHumanoidStateMachineEvent)

-- Create state machine definition here
local CCSMDef = require(characterStateMachineFolder:WaitForChild("CharacterControlStateMachine"))

-- WATCH FOR LOCAL Events -----------------------------------------------------------
local function onClientLocalHumanoidStateMachineEvent(characterInstance : Model, humanoidInstance : Humanoid, eventType : string, data : any)
	clientMonitorObject:onLocalCharacterStateMachineEvent(characterInstance, humanoidInstance, CCSMDef, eventType, data)
end

localHumanoidStateMachineEvent.Event:Connect(onClientLocalHumanoidStateMachineEvent)

-- LISTEN TO SERVER REQUESTS -----------------------------------------------------
local function onClientHumanoidRemoteEventClient(eventType : string, data : any)
	clientMonitorObject:onClientHumanoidRemoteEventClient(eventType, data, CCSMDef)
end

if humanoidStateMachineUpdateEvent ~= nil then
	humanoidStateMachineUpdateEvent.OnClientEvent:Connect(onClientHumanoidRemoteEventClient)
else
	error("Unable to find remote event for state machine messaging.")
end

