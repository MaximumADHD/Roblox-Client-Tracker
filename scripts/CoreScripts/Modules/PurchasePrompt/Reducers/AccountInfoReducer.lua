--!nonstrict
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)

local ProductInfoReducer = Rodux.createReducer({}, {
	[AccountInfoReceived.name] = function(state, action)
		local accountInfo = action.accountInfo

		return {
			balance = state.balance,
			-- Enum.MembershipType.Premium == 4 and Enum.MembershipType.None == 0
			membershipType = accountInfo.isPremium and 4 or 0,
		}
	end,
	[BalanceInfoRecieved.name] = function(state, action)
		local balanceInfo = action.balanceInfo

		return {
			balance = balanceInfo.robux,
			membershipType = state.membershipType,
		}
	end,
})

return ProductInfoReducer
--
