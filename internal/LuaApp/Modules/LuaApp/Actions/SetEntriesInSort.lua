local Modules = game:GetService("CoreGui").RobloxGui.Modules
local Action = require(Modules.Common.Action)

--[[
	{
		sort : String ,
		entries : table [] ,
    }
]]

return Action(script.Name, function(sortName, entries)
	return {
		sort = sortName,
		entries = entries,
	}
end)