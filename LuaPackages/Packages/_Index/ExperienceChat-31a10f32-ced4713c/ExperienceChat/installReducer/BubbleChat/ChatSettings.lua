local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)

local LegacySettings = require(script.Parent.LegacySettings)
local defaultState = LegacySettings

return Rodux.createReducer(defaultState, {
	[ConfigurationObjectsLoaded.name] = function(state, action: ConfigurationObjectsLoaded.Action)
		return Dictionary.join(state, action.bubbleChatSettings)
	end :: any,

	[BubbleChatSettingsChanged.name] = function(state, action: BubbleChatSettingsChanged.Action)
		return Dictionary.join(state, {
			[action.property] = action.value,
		})
	end :: any,
})
