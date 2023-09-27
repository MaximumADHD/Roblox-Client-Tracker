local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local SetShouldNotRenderVoiceAndCameraBubble =
	require(script.Parent.Parent.Actions.SetShouldNotRenderVoiceAndCameraBubble)

local playerBillboardSettings = Rodux.createReducer({
	shouldNotRenderVoiceAndCameraBubble = false,
}, {
	[SetShouldNotRenderVoiceAndCameraBubble.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			shouldNotRenderVoiceAndCameraBubble = action.shouldNotRenderVoiceAndCameraBubble,
		})
	end,
})

return playerBillboardSettings
