local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local TnsModule = script.Parent.Parent
local SetPlaceInfo = require(TnsModule.Actions.SetPlaceInfo)

return Rodux.createReducer({
	name = "",
	description = "",
}, {
	[SetPlaceInfo.name] = function(state, action)
		return {
			name = action.name,
			description = action.description,
		}
	end,
})
