local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local CloseContactList = require(script.Parent.Parent.Actions.CloseContactList)
local OpenContactList = require(script.Parent.Parent.Actions.OpenContactList)

return Rodux.createReducer({
	contactListVisible = false,
}, {
	[OpenContactList.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			contactListVisible = true,
		})
	end,

	[CloseContactList.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			contactListVisible = false,
		})
	end,
})
