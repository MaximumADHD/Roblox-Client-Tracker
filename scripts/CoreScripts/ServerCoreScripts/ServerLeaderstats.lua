-- ServerLeaderstats.lua
-- Authors: TheGamer101, WallsAreForClimbing
-- Description: Tracks leaderstat creation order

local LEADERSTATS_NAME = "leaderstats"
local REPLICATED_ATTRIBUTE_NAME = "LeaderstatsOrder"

local HttpService = game:GetService("HttpService")
local Players = game:GetService("Players")
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")

local statOrder = {}
local statCount = 0

-- StringValue for leaderstat order
local valueInstance = Instance.new("StringValue")
valueInstance.Name = REPLICATED_ATTRIBUTE_NAME
valueInstance.Parent = RobloxReplicatedStorage

function updateStats()
	valueInstance.Value = HttpService:JSONEncode(statOrder)
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

local function isValidStat(obj)
	return obj:IsA("StringValue")
		or obj:IsA("IntValue")
		or obj:IsA("BoolValue")
		or obj:IsA("NumberValue")
		or obj:IsA("DoubleConstrainedValue")
		or obj:IsA("IntConstrainedValue")
end

local function isValidContainer(instance)
	return instance:IsA("ValueBase") or instance:IsA("Folder") or instance:IsA("Configuration") or instance:IsA("Model")
end

type LeaderStatsConnections = {
	childAdded: RBXScriptConnection,
	childRemoved: RBXScriptConnection,
	leaderStatNameChanged: { [Instance]: RBXScriptConnection },
}

type PlayerConnections = {
	childAdded: RBXScriptConnection,
	childRemoved: RBXScriptConnection,
	namedChanged: { [Instance]: RBXScriptConnection },
	leaderstats: { [Instance]: LeaderStatsConnections },
}
local playerConnections: { [Player]: PlayerConnections } = {}

local function getLeaderstatConnections(player: Player, leaderstats: Instance): LeaderStatsConnections?
	if not playerConnections[player] then
		return nil
	end

	return playerConnections[player].leaderstats[leaderstats]
end

local function leaderstatChildAdded(player: Player, leaderstats: Instance, child: Instance)
	if not isValidStat(child) then
		return
	end
	local leaderStatConnections = getLeaderstatConnections(player, leaderstats)
	if not leaderStatConnections then
		return
	end
	assert(leaderStatConnections ~= nil) -- Assert to hint the typechecker

	local nameChanged = child:GetPropertyChangedSignal("Name"):Connect(function()
		addLeaderstat(child.Name)
	end)
	leaderStatConnections.leaderStatNameChanged[child] = nameChanged
	addLeaderstat(child.Name)
end

local function leaderstatChildRemoved(player: Player, leaderstats: Instance, child: Instance)
	local leaderStatConnections = getLeaderstatConnections(player, leaderstats)
	if not leaderStatConnections then
		return
	end
	assert(leaderStatConnections ~= nil) -- Assert to hint the typechecker

	if not leaderStatConnections.leaderStatNameChanged[child] then
		return
	end

	leaderStatConnections.leaderStatNameChanged[child]:Disconnect()
	leaderStatConnections.leaderStatNameChanged[child] = nil
end

local function leaderstatsAdded(player: Player, leaderstats: Instance)
	if not playerConnections[player] then
		return
	end

	local childAddedConnection = leaderstats.ChildAdded:Connect(function(child)
		leaderstatChildAdded(player, leaderstats, child)
	end)
	local childRemovedConnection = leaderstats.ChildRemoved:Connect(function(child)
		leaderstatChildRemoved(player, leaderstats, child)
	end)

	playerConnections[player].leaderstats[leaderstats] = {
		childAdded = childAddedConnection,
		childRemoved = childRemovedConnection,
		leaderStatNameChanged = {},
	}

	for _, child in leaderstats:GetChildren() do
		leaderstatChildAdded(player, leaderstats, child)
	end
end

local function disconnectTableOfConnections(table: { [any]: RBXScriptConnection })
	for _, connection in table do
		connection:Disconnect()
	end
end

local function leaderstatsRemoved(player: Player, instance: Instance)
	if not playerConnections[player] then
		return
	end

	local leaderstatsConnections = playerConnections[player].leaderstats[instance]
	if not leaderstatsConnections then
		return
	end

	leaderstatsConnections.childAdded:Disconnect()
	leaderstatsConnections.childRemoved:Disconnect()
	disconnectTableOfConnections(leaderstatsConnections.leaderStatNameChanged)
	playerConnections[player].leaderstats[instance] = nil
end

local function playerChildNameChanged(player: Player, instance: Instance)
	if instance.Name == LEADERSTATS_NAME then
		leaderstatsAdded(player, instance)
	else
		leaderstatsRemoved(player, instance)
	end
end

local function playerChildAdded(player: Player, instance: Instance)
	if not isValidContainer(instance) then
		return
	end
	if not playerConnections[player] then
		return
	end

	local nameChangedConnection = instance:GetPropertyChangedSignal("Name"):Connect(function()
		playerChildNameChanged(player, instance)
	end)

	playerConnections[player].namedChanged[instance] = nameChangedConnection
	playerChildNameChanged(player, instance)
end

local function playerChildRemoved(player: Player, instance: Instance)
	if not playerConnections[player] then
		return
	end

	if playerConnections[player].namedChanged[instance] then
		playerConnections[player].namedChanged[instance]:Disconnect()
		playerConnections[player].namedChanged[instance] = nil
	end

	if instance.Name == LEADERSTATS_NAME then
		leaderstatsRemoved(player, instance)
	end
end

local function playerAdded(player: Player)
	local childRemovedConnection = player.ChildRemoved:Connect(function(child)
		playerChildRemoved(player, child)
	end)
	local childAddedConnection = player.ChildAdded:Connect(function(child)
		playerChildAdded(player, child)
	end)
	playerConnections[player] = {
		childAdded = childAddedConnection,
		childRemoved = childRemovedConnection,
		namedChanged = {},
		leaderstats = {},
	}

	for _, instance in player:GetChildren() do
		playerChildAdded(player, instance)
	end
end

local function playerRemoving(player)
	if not playerConnections[player] then
		return
	end

	playerConnections[player].childAdded:Disconnect()
	playerConnections[player].childRemoved:Disconnect()
	disconnectTableOfConnections(playerConnections[player].namedChanged)
	for _, leaderstatConnections in playerConnections[player].leaderstats do
		leaderstatConnections.childAdded:Disconnect()
		leaderstatConnections.childRemoved:Disconnect()
		disconnectTableOfConnections(leaderstatConnections.leaderStatNameChanged)
	end

	playerConnections[player] = nil
end

Players.PlayerAdded:Connect(playerAdded)
Players.PlayerRemoving:Connect(playerRemoving)

for _, player in Players:GetPlayers() do
	playerAdded(player)
end
