local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local TnsModule = script.Parent.Parent
local SetScreenSize = require(TnsModule.Actions.SetScreenSize)
local Hide = require(TnsModule.Actions.Hide)
local Show = require(TnsModule.Actions.Show)

return Rodux.createReducer({
	inputType = nil,
	screenSize = Vector2.new(0, 0),
	visible = true
}, {
	[SetScreenSize.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			screenSize = action.screenSize,
		})
	end,
	[Hide.name] = function(state)
		return Cryo.Dictionary.join(state, {
			visible = false 
		})
	end,
	[Show.name] = function(state)
		return Cryo.Dictionary.join(state, {
			visible = true
		})
	end,
})
