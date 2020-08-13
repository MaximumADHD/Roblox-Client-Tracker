-- ServerLeaderstats.lua
-- Authors: WallsAreForClimbing (2020)
-- Description: Tracks leaderstat creation order

local LEADERSTATS_NAME = "leaderstats"
local REPLICATED_ATTRIBUTE_NAME = "LeaderstatsOrder"

local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local FFlagFallbackLeaderstatOrdering = game:DefineFastFlag("FallbackLeaderstatOrdering", false)

local statOrder = {}
local statCount = 0

local updateStats do
	if FFlagFallbackLeaderstatOrdering then

		-- We should never need to enable this code.
		-- It is a fallback in-case there is an issue
		-- using attributes.

		-- StringValue Fallback
		local HttpService = game:GetService("HttpService")
		local valueInstance = Instance.new("StringValue")

		valueInstance.Name = REPLICATED_ATTRIBUTE_NAME
		valueInstance.Parent = RobloxReplicatedStorage

		function updateStats()
			valueInstance.Value = HttpService:JSONEncode(statOrder)
		end

	else

		-- Attributes
		function updateStats()
			RobloxReplicatedStorage:SetAttribute(REPLICATED_ATTRIBUTE_NAME, statOrder)
		end

	end
end

updateStats()

local function addLeaderstat(statName)
	if statOrder[statName] then
		return
	end
	statOrder[statName] = statCount
	statCount += 1
	updateStats()
end

local function waitUntilRemoved(instance)
	repeat
		local _, parent = instance.AncestryChanged:Wait()
	until not parent
end

local function fastSpawn(f, ...)
	return coroutine.wrap(f)(...)
end

local function isValidStat(obj)
	return obj:IsA("StringValue") or obj:IsA("IntValue") or obj:IsA("BoolValue") or obj:IsA("NumberValue") or
		obj:IsA("DoubleConstrainedValue") or obj:IsA("IntConstrainedValue")
end

local function isValidContainer(instance)
	return instance:IsA("ValueBase") or instance:IsA("Folder") or instance:IsA("Configuration") or instance:IsA("Model")
end

local threads = {}

local function leaderstatsAdded(instance)
	local listeners = {}

	local function childAdded(child)
		if not isValidStat(child) then
			return
		end
		local nameChanged = child:GetPropertyChangedSignal("Name"):Connect(function()
			addLeaderstat(child.Name)
		end)
		addLeaderstat(child.Name)
		listeners[child] = nameChanged
		waitUntilRemoved(child)
		nameChanged:Disconnect()
		listeners[child] = nil
	end

	listeners.ChildAdded = instance.ChildAdded:Connect(childAdded)

	for _, child in ipairs(instance:GetChildren()) do
		fastSpawn(childAdded, child)
	end

	threads[instance] = coroutine.running()
	coroutine.yield()
	for _, listener in pairs(listeners) do
		listener:Disconnect()
	end
end

local function leaderstatsRemoved(instance)
	local thread = threads[instance]
	if thread then
		coroutine.resume(thread)
	end
	threads[instance] = nil
end

local function playerChildNameChanged(instance)
	if instance.Name == LEADERSTATS_NAME then
		leaderstatsAdded(instance)
	else
		leaderstatsRemoved(instance)
	end
end

local function playerChildAdded(instance)
	if not isValidContainer(instance) then
		return
	end
	local nameChanged = instance:GetPropertyChangedSignal("Name"):Connect(function ()
		playerChildNameChanged(instance)
	end)
	fastSpawn(playerChildNameChanged, instance)
	waitUntilRemoved(instance)
	nameChanged:Disconnect()
	if instance.Name == LEADERSTATS_NAME then
		leaderstatsRemoved(instance)
	end
end

local function playerAdded(player)
	local childAdded = player.ChildAdded:Connect(playerChildAdded)
	for _, instance in ipairs(player:GetChildren()) do
		fastSpawn(playerChildAdded, instance)
	end
	waitUntilRemoved(player)
	childAdded:Disconnect()
end

Players.PlayerAdded:Connect(playerAdded)

for _, player in ipairs(Players:GetPlayers()) do
	fastSpawn(playerAdded, player)
end