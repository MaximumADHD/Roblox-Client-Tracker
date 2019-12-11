local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)

local Actions = script.Parent.Parent.Actions
local SetScreenSize = require(Actions.SetScreenSize)

local ScreenSize = Rodux.createReducer({
	X = 1000,
	Y = 1000,
}, {
	[SetScreenSize.name] = function(state, action)
		return {
			X = action.sizeX,
			Y = action.sizeY,
		}
	end,
})

return ScreenSize
