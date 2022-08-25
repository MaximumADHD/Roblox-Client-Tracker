--[[
	Action to set the assets within the InspectAndBuy menu.
	Specifically these are the inspected assets within the menu
]]
local CorePackages = game:GetService("CorePackages")
local Action = require(CorePackages.AppTempCommon.Common.Action)

return Action(script.Name, function(assets)
	return {
		assets = assets,
	}
end)