local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)

--[[
	Passes a table that looks like this...
	{
		groupId : "games",
		sorts  : {1, 6, 12, 13}
	}
]]

return Action(script.Name, function(groupId, sortsTable)
	return {
		groupId = groupId,
		sorts = sortsTable
	}
end)