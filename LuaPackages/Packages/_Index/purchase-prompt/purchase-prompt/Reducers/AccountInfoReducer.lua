local FFlagIGPDepSwap = game:GetFastFlag("IGPDepSwap")
local Root = script.Parent.Parent
local LuaPackages = FFlagIGPDepSwap and Root.Parent or game:GetService("CorePackages")

local Rodux = require(LuaPackages.Rodux)

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