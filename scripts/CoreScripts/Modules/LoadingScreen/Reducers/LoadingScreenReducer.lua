local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")

local Rodux = require(CorePackages.Rodux)
local SetIsSubjectToChinaPolicies = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetIsSubjectToChinaPolicies)
local SetGameProductInfo = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetGameProductInfo)
local SetUniverseId = require(CoreGui.RobloxGui.Modules.LoadingScreen.Actions.SetUniverseId)

local GameProductInfoReducer = Rodux.createReducer(nil, {
	[SetGameProductInfo.name] = function(state, action)
		return action.productInfo
	end,
})

local GameIdReducer = Rodux.createReducer(nil, {
	[SetUniverseId.name] = function(state, action)
		return {
			universeId = action.universeId,
			placeId = action.placeId,
		}
	end,
})

local IsSubjectToChinaPoliciesReducer = Rodux.createReducer(nil, {
	[SetIsSubjectToChinaPolicies.name] = function(state, action)
		return action.isSubjectToChinaPolicies
	end,
})

return Rodux.combineReducers({
	isSubjectToChinaPolicies = IsSubjectToChinaPoliciesReducer,
	productInfo = GameProductInfoReducer,
	gameIds = GameIdReducer,
})
