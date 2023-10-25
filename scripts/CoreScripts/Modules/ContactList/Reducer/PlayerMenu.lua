local CorePackages = game:GetService("CorePackages")
local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local OpenOrUpdateCFM = require(script.Parent.Parent.Actions.OpenOrUpdateCFM)
local CloseCFM = require(script.Parent.Parent.Actions.CloseCFM)

return Rodux.createReducer({
	isOpen = false,
	friend = {
		userId = nil,
		combinedName = "",
		userName = "",
	},
}, {
	[OpenOrUpdateCFM.name] = function(state, action)
		if action.friend and action.friend.combinedName then
			return Cryo.Dictionary.join(state, {
				isOpen = true,
				friend = action.friend,
			})
		end

		local newState = {
			isOpen = false,
			friend = {
				userId = nil,
				combinedName = "",
				userName = "",
			},
		}
		return newState
	end,
	[CloseCFM.name] = function(state, action)
		local newState = {
			isOpen = false,
			friend = {
				userId = nil,
				combinedName = "",
				userName = "",
			},
		}
		return newState
	end,
})
