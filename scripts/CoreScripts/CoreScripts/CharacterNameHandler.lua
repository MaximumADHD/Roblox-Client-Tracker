local Players = game:GetService("Players")
local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local ApolloClient = require(CoreGui.RobloxGui.Modules.ApolloClient)
local UserProfiles = require(CorePackages.Workspace.Packages.UserProfiles)

local FFlagInExperienceNameQueryEnabled = require(CorePackages.Workspace.Packages.SharedFlags).FFlagInExperienceNameQueryEnabled

local playerConnections = {}

local Connections = {
	CharacterAdded = "CharacterAdded",
	CharacterRemoving = "CharacterRemoving",
	HumanoidDisplayNameChanged = "HumanoidDisplayNameChanged",
	CharacterHumanoidAdded = "CharacterHumanoidAdded",
}
type Profile = {
	names: {
		-- TODO: Remove combinedName after FFlagInExperienceNameQueryEnabled is cleaned up
		combinedName: string,
		inExperienceCombinedName: string,
		displayName: string,
	},
}

local function setName(humanoid: Humanoid, player: Player, profile: Profile)
	local combinedName = if FFlagInExperienceNameQueryEnabled then profile.names.inExperienceCombinedName else profile.names.combinedName
	local displayName = profile.names.displayName
	if profile.names.displayName == humanoid.DisplayName then
		humanoid.InternalDisplayName = combinedName
		playerConnections[player][Connections.HumanoidDisplayNameChanged] = humanoid
			:GetPropertyChangedSignal("DisplayName")
			:Connect(function()
				if displayName ~= humanoid.DisplayName then
					humanoid.InternalDisplayName = ""
				end
			end)
	end
end

local function checkHumanoid(player: Player, character: Model, profile: Profile)
	local humanoid: Humanoid? = character:FindFirstChildWhichIsA("Humanoid")
	if humanoid then
		setName(humanoid, player, profile)
	end
	playerConnections[player][Connections.CharacterHumanoidAdded] = character.ChildAdded:Connect(function(child)
		if child:IsA("Humanoid") then
			setName(child, player, profile)
		end
	end)
end

local function setNameOnCharacterAdded(player: Player, profile: Profile)
	playerConnections[player] = {}
	if player.Character then
		checkHumanoid(player, player.Character, profile)
	end

	playerConnections[player][Connections.CharacterAdded] = player.CharacterAdded:Connect(function(character)
		checkHumanoid(player, character, profile)
	end)
	playerConnections[player][Connections.CharacterRemoving] = player.CharacterRemoving:Connect(function()
		local characterHumanoidAdded = playerConnections[player][Connections.CharacterHumanoidAdded]
		local humanoidDisplayNameChanged = playerConnections[player][Connections.HumanoidDisplayNameChanged]
		if characterHumanoidAdded then
			playerConnections[player][Connections.CharacterHumanoidAdded]:Disconnect()
		end
		if humanoidDisplayNameChanged then
			playerConnections[player][Connections.HumanoidDisplayNameChanged]:Disconnect()
		end
	end)
end

local function setCurrentPlayersNames()
	local players: { Player } = Players:GetPlayers()
	local playerIds: { string } = {}
	local playersFormatted = {}
	for _, player: Player in pairs(players) do
		table.insert(playerIds, tostring(player.UserId))
		playersFormatted[tostring(player.UserId)] = player
	end
	ApolloClient:query({
		query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesAllNamesByUserIds,
		variables = {
			userIds = playerIds,
		},
	}):andThen(function(getNames)
		for _, profile in pairs(getNames.data.userProfiles) do
			local player = playersFormatted[profile.id]
			setNameOnCharacterAdded(player, profile)
		end
	end, function() end)
end

local function onPlayerAdded(player: Player)
	ApolloClient:query({
		query = if FFlagInExperienceNameQueryEnabled then UserProfiles.Queries.userProfilesInExperienceNamesByUserIds else UserProfiles.Queries.userProfilesAllNamesByUserIds,
		variables = {
			userIds = { tostring(player.UserId) },
		},
	}):andThen(function(profile)
		local profileData = profile.data.userProfiles[1]
		setNameOnCharacterAdded(player, profileData)
	end, function() end)
end

local function onPlayerRemoving(player: Player)
	local connections = playerConnections[player]
	if playerConnections[player] then
		for _, connection in pairs(connections) do
			connection:Disconnect()
		end
		playerConnections[player] = nil
	end
end

setCurrentPlayersNames()
Players.PlayerAdded:Connect(onPlayerAdded)
Players.PlayerRemoving:Connect(onPlayerRemoving)
