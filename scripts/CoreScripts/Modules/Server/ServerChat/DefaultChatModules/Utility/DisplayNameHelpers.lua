local Players = game:GetService("Players")
local Chat = game:GetService("Chat")
local ReplicatedModules = Chat:WaitForChild("ClientChatModules")
local ChatSettings = require(ReplicatedModules:WaitForChild("ChatSettings"))

local CommandErrorCodes = {
	ChattingToSelf = 1,
	NoMatches = 2,
	MultipleMatches = 3,
}

--returns (string) UserName as the first value and an error code
local function getUserNameFromChattedName(targetDisplayName, speakerUserName, speakerDisplayName)

	--we're looking for non-speaker matches, so if the displayName matches the userName we need to short circuit
	if speakerUserName == targetDisplayName then
		return speakerUserName, CommandErrorCodes.ChattingToSelf
	end

	--first, scan for userName matches
	local players = Players:GetPlayers()

	for _, player in pairs(players) do
		if string.lower(player.Name) == string.lower(targetDisplayName) then
			return player.Name, nil
		end
	end

	--then, if there we no userName matches, scan for DisplayName matches. return true if there is one non-local-player match
	local numDisplayNameMatches = 0
	local lastDisplayNameMatch = nil

	if ChatSettings.PlayerDisplayNamesEnabled then
		for _, player in pairs(players) do
			if player.Name ~= speakerUserName and string.lower(player.DisplayName) == string.lower(targetDisplayName) then
				numDisplayNameMatches = numDisplayNameMatches + 1
				lastDisplayNameMatch = player.Name
			end
		end
	end

	if numDisplayNameMatches == 1 then
		return lastDisplayNameMatch, nil
	elseif numDisplayNameMatches == 0 then
		if speakerDisplayName == targetDisplayName then
			return speakerDisplayName, CommandErrorCodes.ChattingToSelf
		else
			return targetDisplayName, CommandErrorCodes.NoMatches
		end
	elseif numDisplayNameMatches >= 2 then
		return targetDisplayName, CommandErrorCodes.MultipleMatches
	end
end

local function getUsersWithDisplayNameString(targetDisplayName, speakerUserName)
	local displayNameMatches = {}
	local matchingUsersText = ""

	--first, scan for userName matches
	local players = Players:GetPlayers()

	for _, player in pairs(players) do
		if player.Name ~= speakerUserName and string.lower(player.DisplayName) == string.lower(targetDisplayName) then
			table.insert(displayNameMatches, player.Name)
		end
	end

	for i, matchingUserName in pairs(displayNameMatches) do
		if i ~= #displayNameMatches then
			matchingUsersText = matchingUsersText .. "@" .. matchingUserName .. ", "
		else
			matchingUsersText = matchingUsersText .. "@" .. matchingUserName
		end
	end

	return matchingUsersText
end

return {
	CommandErrorCodes = CommandErrorCodes,
	getUserNameFromChattedName = getUserNameFromChattedName,
	getUsersWithDisplayNameString = getUsersWithDisplayNameString,
}
