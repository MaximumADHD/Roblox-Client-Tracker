local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local InspectAndBuyFolder = script.Parent.Parent
local UpdateStoreId = require(InspectAndBuyFolder.Actions.UpdateStoreId)

local storeIdCounter = 0

return Rodux.createReducer(
	"0"
, {
	[UpdateStoreId.name] = function(state, action)
		storeIdCounter = storeIdCounter + 1
		return tostring(storeIdCounter)
	end,
})