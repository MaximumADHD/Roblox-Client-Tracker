--!nonstrict
local Root = script.Parent.Parent

local CorePackages = game:GetService("CorePackages")
local PurchasePromptDeps = require(CorePackages.PurchasePromptDeps)
local Rodux = PurchasePromptDeps.Rodux

local AccountInfoReceived = require(Root.Actions.AccountInfoReceived)
local BalanceInfoRecieved = require(Root.Actions.BalanceInfoRecieved)

local FFlagPPAccountInfoMigration = require(Root.Flags.FFlagPPAccountInfoMigration)

local ProductInfoReducer = Rodux.createReducer({}, {
	[AccountInfoReceived.name] = function(state, action)
		local accountInfo = action.accountInfo

		if FFlagPPAccountInfoMigration then
			return {
				balance = state.balance,
				-- Enum.MembershipType.Premium == 4 and Enum.MembershipType.None == 0
				membershipType = accountInfo.isPremium and 4 or 0,
			}
		else
			return {
				balance = accountInfo.RobuxBalance,
				membershipType = accountInfo.MembershipType,
			}
		end
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
