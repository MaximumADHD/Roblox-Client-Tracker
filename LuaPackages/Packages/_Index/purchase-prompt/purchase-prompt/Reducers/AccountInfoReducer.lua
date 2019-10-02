local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local AccountInfoReceived = require(script.Parent.Parent.Actions.AccountInfoReceived)

local ProductInfoReducer = Rodux.createReducer({}, {
	[AccountInfoReceived.name] = function(state, action)
		local accountInfo = action.accountInfo

		return {
			balance = accountInfo.RobuxBalance,
			bcLevel = accountInfo.MembershipType,
		}
	end,
})

return ProductInfoReducer