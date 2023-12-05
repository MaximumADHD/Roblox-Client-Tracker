--[[
	Contains display option related state
]]
local CorePackages = game:GetService("CorePackages")

local Rodux = require(CorePackages.Rodux)
local Cryo = require(CorePackages.Cryo)

local FeedbackModule = script.Parent.Parent

-- Actions
local SetScreenSize = require(FeedbackModule.Actions.SetScreenSize)

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
