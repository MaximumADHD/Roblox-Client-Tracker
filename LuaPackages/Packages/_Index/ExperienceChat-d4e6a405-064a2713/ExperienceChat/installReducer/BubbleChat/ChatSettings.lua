local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local BubbleChatSettingsChanged = require(Actions.BubbleChatSettingsChanged)
local BubbleChatChildSettingChanged = require(Actions.BubbleChatChildSettingChanged)
local BubbleChatChildRemoved = require(Actions.BubbleChatChildRemoved)

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

	[BubbleChatChildSettingChanged.name] = function(state, action: BubbleChatChildSettingChanged.Action)
		return Dictionary.join(state, {
			[action.childName] = Dictionary.join(state[action.childName], {
				[action.property] = action.value,
			}),
		})
	end :: any,

	[BubbleChatChildRemoved.name] = function(state, action: BubbleChatChildRemoved.Action)
		return Dictionary.removeKey(state, action.childName)
	end :: any,
})
