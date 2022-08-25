--[[
	Action for setting the list of currently wearing item IDs for a user
]]

local Packages = script:FindFirstAncestor("RoduxProfile").Parent
local Rodux = require(Packages.Rodux)

export type Type = {
	viewState: any,
}

return Rodux.makeActionCreator(script.Name, function(viewState)
	return {
		viewState = viewState,
	}
end)
