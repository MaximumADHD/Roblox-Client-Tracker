local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Cryo)
local Rodux = require(CorePackages.Rodux)

local TnsModule = script.Parent.Parent

local ShowToast = require(TnsModule.Actions.ShowToast)

return Rodux.createReducer({
	toastText = nil,
}, {
	[ShowToast.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			toastText = action.toastText,
		})
	end,
})
