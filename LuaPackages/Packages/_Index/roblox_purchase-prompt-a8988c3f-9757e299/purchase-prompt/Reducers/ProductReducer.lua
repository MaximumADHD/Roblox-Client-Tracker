local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

local SetProduct = require(Root.Actions.SetProduct)
local CompleteRequest = require(Root.Actions.CompleteRequest)

local ProductReducer = Rodux.createReducer({}, {
	[SetProduct.name] = function(state, action)
		return {
			id = action.id,
			infoType = action.infoType,
			equipIfPurchased = action.equipIfPurchased,
		}
	end,
	[CompleteRequest.name] = function(state, action)
		return {}
	end,
})

return ProductReducer