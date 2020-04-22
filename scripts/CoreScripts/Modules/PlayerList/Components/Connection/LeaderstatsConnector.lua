--[[
	LeaderstatsConnector is the interface between the playerlist and the leaderstats objects.
	Leaderstats allow a Roblox developer to display scores in the playerlist.
	To create leaderstats, the developer adds an object (Usually a Folder or IntValue) called "leaderstats"
	to the Player object. The developer then adds individual stats by adding ValueObjects to the leaderstats folder.
	Supported Types are:
	- IntValue
	- BoolValue
	- NumberValue
	- StringValue
	- IntConstrainedValue
	- DoubleConstrainedValue
	Stats in the leaderboard are typically sorted by the order they are added.
	For legacy reasons we also support IsPrimary (BoolValue) and Priority (IntValue) which can be added to
	the stats to change the order in which they are sorted. We currently do not support updating these
	after they have been added to the stat value.
]]
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Cryo = require(CorePackages.Cryo)
local Roact = require(CorePackages.Roact)
local RoactRodux = require(CorePackages.RoactRodux)

local Components = script.Parent.Parent
local PlayerList = Components.Parent
local FormatStatString = require(PlayerList.FormatStatString)

local AddGameStat = require(PlayerList.Actions.AddGameStat)
local RemoveGameStat = require(PlayerList.Actions.RemoveGameStat)
local SetPlayerLeaderstat = require(PlayerList.Actions.SetPlayerLeaderstat)
local SetGameStatText = require(PlayerList.Actions.SetGameStatText)

local LeaderstatsConnector = Roact.PureComponent:extend("LeaderstatsConnector")

local function isValidStat(obj)
	return obj:IsA("StringValue") or obj:IsA("IntValue") or obj:IsA("BoolValue") or obj:IsA("NumberValue") or
		obj:IsA("DoubleConstrainedValue") or obj:IsA("IntConstrainedValue")
end

local function getScoreValue(statObject)
	if statObject:IsA("DoubleConstrainedValue") or statObject:IsA("IntConstrainedValue") then
		return statObject.ConstrainedValue
	elseif statObject:IsA("BoolValue") then
		if statObject.Value then
			return 1
		else
			return 0
		end
	else
		return statObject.Value
	end
end

function LeaderstatsConnector:init()
	self.playerConnections = {}
end

function LeaderstatsConnector:checkGameStatsExist(playerToIgnore)
	local hasGameStat = {}
	for _, gameStat in ipairs(self.props.gameStats) do
		hasGameStat[gameStat.name] = false
	end
	local players = self.props.players
	for _, player in ipairs(players) do
		if player ~= playerToIgnore then
			local leaderStats = player:FindFirstChild("leaderstats")
			if leaderStats then
				for statName in pairs(hasGameStat) do
					if leaderStats:FindFirstChild(statName) then
						hasGameStat[statName] = true
					end
				end
			end
		end
	end
	for statName, hasStat in pairs(hasGameStat) do
		if not hasStat then
			self.props.removeGameStat(statName)
		end
	end
end

function LeaderstatsConnector:addGameStat(statObject)
	local isPrimary = false
	local priority = 0

	local isPrimaryVal = statObject:FindFirstChild("IsPrimary")
	if isPrimaryVal then
		if isPrimaryVal:IsA("BoolValue") then
			isPrimary = isPrimaryVal.Value
		else
			isPrimary = true
		end
	end
	local priorityVal = statObject:FindFirstChild("Priority")
	if priorityVal and (priorityVal:IsA("IntValue") or priorityVal:IsA("NumberValue")) then
		priority = priorityVal.Value
	end

	self.props.addGameStat(statObject.Name, isPrimary, priority)
end

function LeaderstatsConnector:onStatAdded(player, statObject)
	local statChangedConn = statObject.Changed:Connect(function()
		self.props.setPlayerLeaderstat(player, statObject.Name, getScoreValue(statObject))
		if player == Players.LocalPlayer then
			self.props.setGameStatText(statObject.Name, FormatStatString(getScoreValue(statObject)))
		end
	end)
	table.insert(self.playerConnections[player], statChangedConn)

	local childAddedConn = statObject.ChildAdded:Connect(function()
		self:addGameStat(statObject)
	end)
	table.insert(self.playerConnections[player], childAddedConn)

	local childRemovedConn = statObject.ChildRemoved:Connect(function()
		self:addGameStat(statObject)
	end)
	table.insert(self.playerConnections[player], childRemovedConn)

	self:addGameStat(statObject)
	self.props.setPlayerLeaderstat(player, statObject.Name, getScoreValue(statObject))
	if player == Players.LocalPlayer then
		self.props.setGameStatText(statObject.Name, FormatStatString(getScoreValue(statObject)))
	end
end

function LeaderstatsConnector:leaderstatsAdded(player, leaderstats)
	local childAddedConn = leaderstats.ChildAdded:Connect(function(child)
		if isValidStat(child) then
			self:onStatAdded(player, child)
		end
	end)
	table.insert(self.playerConnections[player], childAddedConn)

	local childRemovedConn = leaderstats.ChildRemoved:Connect(function(child)
		self.props.setPlayerLeaderstat(player, child.Name, Cryo.None)
		if player == Players.LocalPlayer then
			self.props.setGameStatText(child.Name, FormatStatString(nil))
		end
		self:checkGameStatsExist()
	end)
	table.insert(self.playerConnections[player], childRemovedConn)

	local stats = leaderstats:GetChildren()
	for _, stat in ipairs(stats) do
		if isValidStat(stat) then
			self:onStatAdded(player, stat)
		end
	end
end

function LeaderstatsConnector:onPlayerChildAdded(player, child)
	local isLeaderStats = child.Name == "leaderstats"
	local isPossibleLeaderstats = child:IsA("ValueBase") or child:IsA("Folder") or child:IsA("Model")
	if not (isLeaderStats or isPossibleLeaderstats) then
		return
	end

	local childChangedConn = child.Changed:Connect(function(property)
		if property == "Name" then
			if child.Name == "leaderstats" then
				self:leaderstatsAdded(player, child)
			end
		end
	end)
	table.insert(self.playerConnections[player], childChangedConn)
	if child.Name == "leaderstats" then
		self:leaderstatsAdded(player, child)
	end
end

function LeaderstatsConnector:connectLeaderstatsEvents(player)
	self.playerConnections[player] = {}
	local childAddedConn = player.ChildAdded:Connect(function(child)
		self:onPlayerChildAdded(player, child)
	end)
	table.insert(self.playerConnections[player], childAddedConn)

	local childRemovedConn = player.ChildRemoved:Connect(function(child)
		if child.Name == "leaderstats" then
			local stats = child:GetChildren()
			for _, stat in pairs(stats) do
				self.props.setPlayerLeaderstat(player, stat.Name, Cryo.None)
				if player == Players.LocalPlayer then
					self.props.setGameStatText(stat.Name, FormatStatString(nil))
				end
			end
			self:checkGameStatsExist()
		end
	end)
	table.insert(self.playerConnections[player], childRemovedConn)

	local leaderstats = player:FindFirstChild("leaderstats")
	if leaderstats then
		self:leaderstatsAdded(player, leaderstats)
	else
		for _, child in ipairs(player:GetChildren()) do
			self:onPlayerChildAdded(player, child)
		end
	end
end

function LeaderstatsConnector:didMount()
	for _, player in ipairs(self.props.players) do
		self:connectLeaderstatsEvents(player)
	end
end

function LeaderstatsConnector:didUpdate()
	local knownPlayers = {}
	for _, player in ipairs(self.props.players) do
		knownPlayers[player] = true
		if not self.playerConnections[player] then
			self:connectLeaderstatsEvents(player)
		end
	end

	for player in pairs(self.playerConnections) do
		if not knownPlayers[player] then
			for _, connection in ipairs(self.playerConnections[player]) do
				connection:Disconnect()
			end
			self.playerConnections[player] = nil
		end
	end
end

function LeaderstatsConnector:render()
	return nil
end

function LeaderstatsConnector:willUnmount()
	for _, connections in pairs(self.playerConnections) do
		for _, connection in ipairs(connections) do
			connection:Disconnect()
		end
	end

	self.playerConnections = {}
end

local function mapStateToProps(state)
	return {
		players = state.players,
		gameStats = state.gameStats
	}
end

local function mapDispatchToProps(dispatch)
	return {
		addGameStat = function(name, isPrimary, priority)
			return dispatch(AddGameStat(name, isPrimary, priority))
		end,

		removeGameStat = function(name)
			return dispatch(RemoveGameStat(name))
		end,

		setPlayerLeaderstat = function(player, name, scoreValue)
			return dispatch(SetPlayerLeaderstat(player, name, scoreValue))
		end,

		setGameStatText = function(name, text)
			return dispatch(SetGameStatText(name, text))
		end,
	}
end

return RoactRodux.UNSTABLE_connect2(mapStateToProps, mapDispatchToProps)(LeaderstatsConnector)