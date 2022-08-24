--[[
	Action to set or update bundles in the rodux store for InspectAndBuy
]]

local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)

return Rodux.makeActionCreator(script.Name, function(bundles)
	return {
		bundles = bundles,
	}
end)