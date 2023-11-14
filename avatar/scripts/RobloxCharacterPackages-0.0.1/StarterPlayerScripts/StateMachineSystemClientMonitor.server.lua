--!strict

-- prevent script to be executed when parenting to StarterPlayerScripts
local Player = script:FindFirstAncestorOfClass('Player')
if not Player then
    return
end

-- Watching for messages from server
local debug = false
local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")
local humanoidStateMachineUpdateInstance : Instance = replicatedStorage:WaitForChild("HumanoidStateMachineUpdate")
local characterStateMachineFolder : Instance = replicatedStorage:WaitForChild('RobloxCharacterPackages'):WaitForChild("StateMachine")
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

if debug then
    print("Starting client monitor")
end
local clientMonitorObject = clientMonitor.new(localHumanoidStateMachineEvent)

-- Create state machine definition here
local CCSMDef = require(replicatedStorage:WaitForChild("RobloxCharacterPackages"):WaitForChild("CharacterController"):WaitForChild("CCSMDefCreator")).newDef()

-- Watch for local events
local function onClientLocalHumanoidStateMachineEvent(characterInstance : Model, humanoidInstance : Humanoid, eventType : string, data : any)
    clientMonitorObject:onLocalCharacterStateMachineEvent(characterInstance, humanoidInstance, CCSMDef, eventType, data)
end

localHumanoidStateMachineEvent.Event:Connect(onClientLocalHumanoidStateMachineEvent)

-- Listen to server requests
local function onClientHumanoidRemoteEventClient(eventType : string, data : any)
    clientMonitorObject:onClientHumanoidRemoteEventClient(eventType, data, CCSMDef)
end

if humanoidStateMachineUpdateEvent ~= nil then
    humanoidStateMachineUpdateEvent.OnClientEvent:Connect(onClientHumanoidRemoteEventClient)
else
    error("Unable to find remote event for state machine messaging.")
end

