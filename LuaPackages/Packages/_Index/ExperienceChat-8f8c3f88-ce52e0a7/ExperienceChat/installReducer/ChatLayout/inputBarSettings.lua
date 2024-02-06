local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Config = require(ExperienceChat.Config)

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local ChatInputBarSettingsChanged = require(Actions.ChatInputBarSettingsChanged)

local defaultState = {
	BackgroundTransparency = Config.ChatInputBarBackgroundTransparency,
	BackgroundColor3 = Config.ChatInputBarBackgroundColor,
	TextSize = Config.ChatInputBarTextSize,
	TextColor3 = Config.ChatInputBarTextColor3,
	TextStrokeColor3 = Config.ChatInputBarTextStrokeColor,
	TextStrokeTransparency = Config.ChatInputBarTextStrokeTransparency,
	FontFace = Config.ChatInputBarFontFace,
	PlaceholderColor3 = Config.ChatInputBarPlaceholderColor,
	KeyboardKeyCode = Config.ChatInputBarDefaultFocusKeyCode,
	AutocompleteEnabled = Config.ChatInputBarDefaultAutocompleteEnabled,
}

return Rodux.createReducer(defaultState, {
	[ConfigurationObjectsLoaded.name] = function(state, action: ConfigurationObjectsLoaded.Action)
		return Dictionary.join(state, action.chatInputBarSettings)
	end :: any,

	[ChatInputBarSettingsChanged.name] = function(state, action: ChatInputBarSettingsChanged.Action)
		if state[action.property] == nil then
			return state
		end

		return Dictionary.join(state, {
			[action.property] = action.value,
		})
	end :: any,
})
