local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)
local ArgCheck = require(CorePackages.ArgCheck)

--[[
	Each entry in the table is a type of GameIcon with the universe id as key
]]
return Action(script.Name, function(iconsTable)
	ArgCheck.isType(iconsTable, "table", "iconsTable")

	return {
		gameIcons = iconsTable
	}
end)