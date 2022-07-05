local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary

export type PlayerInfo = {
	userId: string,
	username: string,
	displayName: string,
}

local function getPlayersFromCommand(players: any, name: string?): { PlayerInfo }
	if not name then
		return {}
	end

	if name and string.sub(name, 1, 1) == "@" then
		local username = string.sub(name, 2)
		local id = players.byUsername[username]
		if id then
			return { players.byUserId[id] }
		end
	end

	local displayName = name
	return Dictionary.map(players.byDisplayName[displayName] or {}, function(id)
		return players.byUserId[id]
	end)
end

return getPlayersFromCommand
