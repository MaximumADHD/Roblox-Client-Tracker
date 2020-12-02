local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)

local ProductInfoReducer = Rodux.createReducer({}, {
	[AccountInfoReceived.name] = function(state, action)
		local accountInfo = action.accountInfo

		return {
			balance = accountInfo.RobuxBalance,
			membershipType = accountInfo.MembershipType,
		}
	end,
})

return ProductInfoReducer
