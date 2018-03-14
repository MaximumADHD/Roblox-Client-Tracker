local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)


--[[
	Passes a table that looks like this... { placeId = { gameData }, ... }

	{
		sort : Popular,
		games : [ 70395446, 597131567, ... ]
    }
]]

return Action(script.Name, function(sortName, placeIds)
	return {
		sort = sortName,
		games = placeIds
	}
end)