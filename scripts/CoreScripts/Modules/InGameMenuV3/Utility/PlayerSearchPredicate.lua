local InGameMenu = script.Parent.Parent
local SendAnalytics = require(InGameMenu.Utility.SendAnalytics)
local Constants = require(InGameMenu.Resources.Constants)

local SessionAnalyticsLimit = 3 -- no need to capture someone spamming thier keyboard

-- Outputs a CSV string of bytes that represent the input string
-- Example input: U+16D2,  Hex: E1 9B 92, dec (bytes) : 225 155 146
-- Output: "225,155,146"
local function stringByteList(str:string):string
    local out = {}
    for i=1, #str do
        table.insert(out, string.byte(str, i))
    end
    return table.concat(out, ",")
end

-- Returns true if a Player should be shown in the resulting list from a search, false otherwise
-- The result takes into account the player's Name and the player's DisplayName
local function PlayerSearchPredicate(searchQuery, playerName, displayName)
	if searchQuery == nil or searchQuery == "" then
		return true
	end

	if displayName then
		local validUTF8, normalizedDisplayName, normalizedSearch = pcall(function()
			return utf8.nfdnormalize(displayName), utf8.nfdnormalize(searchQuery)
		end)

		if validUTF8 and string.find(normalizedDisplayName:lower(), normalizedSearch:lower(), 1, true) ~= nil then
			return true
		end

		-- remove once we understand the root cause of invalid UTF-8
		if not validUTF8 and SessionAnalyticsLimit > 0 then
			SendAnalytics(Constants.AnalyticsInGameMenuName, Constants.AnalyticsInvalidUTF8, {
				text1 = displayName,
				text2 = searchQuery,
				bytes1 = stringByteList(displayName),
				bytes2 = stringByteList(searchQuery),
			})
			SessionAnalyticsLimit = SessionAnalyticsLimit - 1
		end
	end

	return string.find(playerName:lower(), searchQuery:lower(), 1, true) ~= nil
end

return PlayerSearchPredicate
