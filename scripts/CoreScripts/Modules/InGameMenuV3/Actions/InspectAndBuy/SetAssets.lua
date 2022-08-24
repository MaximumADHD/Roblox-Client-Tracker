--[[
	Action to set the assets within the InspectAndBuy menu.
	Specifically these are the inspected assets within the menu
]]
local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(assets)
	return {
		assets = assets,
	}
end)