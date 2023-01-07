local GameIconRodux = script:FindFirstAncestor("GameIconRodux")
local Packages = GameIconRodux.Parent

local Action = require(Packages.Rodux).makeActionCreator
local ArgCheck = require(Packages.ArgCheck)

--[[
	Each entry in the table is a type of GameIcon with the universe id as key
]]
return Action(script.Name, function(iconsTable)
	ArgCheck.isType(iconsTable, "table", "iconsTable")

	return {
		gameIcons = iconsTable,
	}
end)
