--!strict
-- Studio-only bridge. Place scripts cannot parent remotes to RobloxReplicatedStorage,
-- which is where the platform-leaderboard client store listens. WilliamsBurg owns
-- mock payloads and fires BindableEvents on ReplicatedStorage; this script forwards
-- them onto the CoreScript remotes (and tab-open events back to the place).
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local RunService = game:GetService("RunService")

if not RunService:IsStudio() then
	return
end

local MOCK_BINDABLE_TIMEOUT_SECONDS = 5

local function ensureRemote(name: string): RemoteEvent
	local existing = RobloxReplicatedStorage:FindFirstChild(name)
	if existing and existing:IsA("RemoteEvent") then
		return existing
	end
	local remote = Instance.new("RemoteEvent")
	remote.Name = name
	remote.Parent = RobloxReplicatedStorage
	return remote
end

local function waitForBindable(name: string): BindableEvent?
	local child = ReplicatedStorage:WaitForChild(name, MOCK_BINDABLE_TIMEOUT_SECONDS)
	if child ~= nil and child:IsA("BindableEvent") then
		return child
	end
	return nil
end

local push = ensureRemote("PlatformLeaderboardPush")
local tabOpened = ensureRemote("PlatformLeaderboardTabOpened")
ensureRemote("PlatformLeaderboardTabClosed")

-- These bindables only exist in WilliamsBurg. Time out instead of yielding
-- forever in every other Studio session.
local pushToAll = waitForBindable("PlatformLeaderboardMockPushToAll")
if pushToAll == nil then
	return
end

local pushToPlayer = waitForBindable("PlatformLeaderboardMockPushToPlayer")
local tabOpenedOut = waitForBindable("PlatformLeaderboardMockTabOpened")
if pushToPlayer == nil or tabOpenedOut == nil then
	return
end

pushToAll.Event:Connect(function(payload: any)
	push:FireAllClients(payload)
end)

pushToPlayer.Event:Connect(function(player: any, payload: any)
	if typeof(player) == "Instance" and player:IsA("Player") then
		push:FireClient(player, payload)
	end
end)

tabOpened.OnServerEvent:Connect(function(player: Player, payload: any)
	tabOpenedOut:Fire(player, payload)
end)
