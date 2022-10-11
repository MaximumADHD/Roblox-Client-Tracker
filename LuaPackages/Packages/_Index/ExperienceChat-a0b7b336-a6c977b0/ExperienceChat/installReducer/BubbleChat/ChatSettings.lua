local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ClientAppLoaded = require(Actions.ClientAppLoaded)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)

local LegacySettings = require(script.Parent.LegacySettings)
local defaultState = LegacySettings

return Rodux.createReducer(defaultState, {
	[ClientAppLoaded.name] = function(state, action: ClientAppLoaded.Action)
		return Dictionary.join(state, action.bubbleChatSettings)
	end,

	[BubbleChatSettingsChanged.name] = function(state, action: BubbleChatSettingsChanged.Action)
		return Dictionary.join(state, {
			[action.property] = action.value,
		})
	end,
})
