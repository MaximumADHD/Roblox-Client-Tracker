local ErrorOccurred = require(script.Parent.Parent.Actions.ErrorOccurred)
local ItemCannotBePurchased = require(script.Parent.Parent.Actions.ItemCannotBePurchased)

-- TODO: Switch to Rodux.createReducer once CorePackages.Rodux is upgraded
local PurchaseErrorReducer = function(state, action)

	if action.type == ErrorOccurred.name then
		return action.purchaseError
	elseif action.type == ItemCannotBePurchased.name then
		return action.purchaseError
	end

	return state
end

return PurchaseErrorReducer