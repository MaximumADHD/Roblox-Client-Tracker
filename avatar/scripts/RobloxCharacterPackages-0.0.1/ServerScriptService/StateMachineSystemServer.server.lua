-- CreateGhostCollisionGroup.server
local PhysicsService = game:GetService("PhysicsService")
PhysicsService:RegisterCollisionGroup("PosedCloneGhostGroup")
PhysicsService:CollisionGroupSetCollidable("Default", "PosedCloneGhostGroup", false)
PhysicsService:CollisionGroupSetCollidable("PosedCloneGhostGroup", "PosedCloneGhostGroup", false)

--!strict

local replicatedStorage : ReplicatedStorage = game:GetService("ReplicatedStorage")

local localHumanoidStateMachineEvent : BindableEvent = Instance.new("BindableEvent")
localHumanoidStateMachineEvent.Name = "LocalHumanoidStateMachineEvent"
localHumanoidStateMachineEvent.Parent = script

local humanoidRemoteEvent : RemoteEvent = Instance.new("RemoteEvent")
humanoidRemoteEvent.Name = "HumanoidStateMachineUpdate"
humanoidRemoteEvent.Parent = replicatedStorage

local characterStateMachineFolder : Instance = replicatedStorage:WaitForChild('RobloxCharacterPackages'):WaitForChild("StateMachine")
local serverMonitor = require(characterStateMachineFolder:WaitForChild("ServerMonitor"))

local CCSMDef = require(replicatedStorage:WaitForChild("RobloxCharacterPackages"):WaitForChild("CharacterController"):WaitForChild("CCSMDefCreator")).newDef()

local serverMonitorObject = serverMonitor.new(localHumanoidStateMachineEvent, CCSMDef)

-- Watch for remote messages
local function onServerHumanoidRemoteEventServer(player : Player, eventType : string, data : any)
    serverMonitorObject:onServerHumanoidRemoteEventServer(player, eventType, data)
end

humanoidRemoteEvent.OnServerEvent:Connect(onServerHumanoidRemoteEventServer)

-- Watch for local messages
local function onServerLocalHumanoidStateMachineEvent(characterInstance : Model, humanoidInstance : Humanoid, eventType : string, data : any, localEvent : BindableEvent)
    serverMonitorObject:onServerLocalHumanoidStateMachineEvent(characterInstance, humanoidInstance, eventType, data)
end
localHumanoidStateMachineEvent.Event:Connect(onServerLocalHumanoidStateMachineEvent)

-- Poll for ownership changes
while(wait(0.1)) do
    serverMonitorObject:pollForNetworkOwnership()
end

