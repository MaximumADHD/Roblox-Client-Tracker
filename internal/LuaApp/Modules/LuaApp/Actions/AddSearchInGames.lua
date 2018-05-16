local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)


--[[
	Passes a table that looks like this { id = { searchInGames }, ... }
	searchInGames = {
		keyword : keyword,
		games : [ 70395446, 597131567, ... ],
		suggestedKeyword = suggestedKeyword,
		correctedKeyword = correctedKeyword,
		filteredKeyword = filteredKeyword,
		hasMoreRows = hasMoreRows
    }
]]

return Action(script.Name, function(searchInGames)
	return {
		searchInGames = searchInGames
	}
end)