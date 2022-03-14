local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)

local VoiceEnabledChanged = require(RobloxGui.Modules.VoiceChat.Actions.VoiceEnabledChanged)
local BubbleChatEnabledChanged = require(script.Parent.Parent.Actions.BubbleChatEnabledChanged)

local components = Rodux.createReducer({
	bubbleChatEnabled = false,
	voiceEnabled = false,
}, {
	-- Change the overall bubble chat enabled state.
	[BubbleChatEnabledChanged.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			bubbleChatEnabled = action.enabled,
		})
	end,

	-- Change the overall voice enabled state.
	[VoiceEnabledChanged.name] = function(state, action)
		return Cryo.Dictionary.join(state, {
			voiceEnabled = action.enabled,
		})
	end,
})

return components
