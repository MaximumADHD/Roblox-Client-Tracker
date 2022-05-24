local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local TnsModule = script.Parent.Parent
local SetScreenSize = require(TnsModule.Actions.SetScreenSize)

return Rodux.createReducer({
	inputType = nil,
	screenSize = Vector2.new(0, 0),
}, {
	[SetScreenSize.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			screenSize = action.screenSize,
		})
	end,
})
