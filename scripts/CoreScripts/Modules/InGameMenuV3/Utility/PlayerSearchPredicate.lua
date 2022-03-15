-- Returns true if a Player should be shown in the resulting list from a search, false otherwise
-- The result takes into account the player's Name and the player's DisplayName
local function PlayerSearchPredicate(searchQuery, playerName, displayName)
	if searchQuery == nil or searchQuery == "" then
		return true
	end

	if displayName then
		local normalizedDisplayName = utf8.nfdnormalize(displayName)
		local normalizedSearch = utf8.nfdnormalize(searchQuery)
		if string.find(normalizedDisplayName:lower(), normalizedSearch:lower(), 1, true) ~= nil then
			return true
		end
	end

	return string.find(playerName:lower(), searchQuery:lower(), 1, true) ~= nil
end

return PlayerSearchPredicate