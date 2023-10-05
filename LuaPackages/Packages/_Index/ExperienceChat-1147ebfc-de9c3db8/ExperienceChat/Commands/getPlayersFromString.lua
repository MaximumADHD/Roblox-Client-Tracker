local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary

export type PlayerInfo = {
	userId: string,
	username: string,
	displayName: string,
	nameToDisplay: string,
}

local function getPlayersFromCommand(players: any, name: string?): { PlayerInfo }
	if not name then
		return {}
	end
	assert(name, "will exist")

	name = string.lower(name) -- Sanitize name
	if name and string.sub(name, 1, 1) == "@" then
		local username = string.sub(name, 2)
		local id = players.byUsername[username]
		if id then
			return { Dictionary.join(players.byUserId[id], { nameToDisplay = "@" .. players.byUserId[id].username }) }
		end
	end

	local displayName = name
	return Dictionary.map(players.byDisplayName[displayName] or {}, function(id)
		return Dictionary.join(players.byUserId[id], { nameToDisplay = players.byUserId[id].displayName })
	end)
end

return getPlayersFromCommand
