local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Dictionary = require(Packages.llama).Dictionary
local List = require(Packages.llama).List

export type PlayerInfo = {
	userId: string,
	username: string,
	displayName: string,
}

local function getAutocompletePlayersFromString(players: any, name: string): { PlayerInfo }
	local ids: { string } = {}
	name = string.lower(name) -- Sanitize name
	if string.sub(name, 1, 1) == "@" then
		local username = string.sub(name, 2)
		ids = Dictionary.values(Dictionary.filter(players.byUsername, function(_id, fullUsername)
			return string.find(fullUsername, "^" .. username) ~= nil
		end))
	else
		local displayName = name
		local filtered = Dictionary.filter(players.byDisplayName, function(_ids, fullDisplayName)
			return string.find(fullDisplayName, "^" .. displayName) ~= nil
		end)

		for _, listOfIds in pairs(filtered) do
			for _, id in ipairs(listOfIds) do
				table.insert(ids, id)
			end
		end
	end

	return List.map(ids, function(id)
		return players.byUserId[tostring(id)]
	end)
end

return getAutocompletePlayersFromString
