local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local OpenOrUpdateCFM = require(script.Parent.Parent.Actions.OpenOrUpdateCFM)
local CloseCFM = require(script.Parent.Parent.Actions.CloseCFM)

return Rodux.createReducer({
	isOpen = false,
	userId = nil,
	combinedName = "",
}, {
	[OpenOrUpdateCFM.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			isOpen = true,
			userId = action.userId,
			combinedName = action.combinedName,
		})
	end,
	[CloseCFM.name] = function(state, action)
		local newState = {
			isOpen = false,
			userId = nil,
			combinedName = "",
		}
		return newState
	end,
})
