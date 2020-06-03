local Root = script.Parent.Parent

local StartPurchase = require(Root.Actions.StartPurchase)

local function PurchasingStartTimeReducer(state, action)
	state = state or -1

	if action.type == StartPurchase.name then
		return action.purchasingStartTime
	end

	return state
end

return PurchasingStartTimeReducer