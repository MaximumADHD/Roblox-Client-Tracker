local Root = script.Parent.Parent

local LuaPackages = Root.Parent
local Rodux = require(LuaPackages.Rodux)

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