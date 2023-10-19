local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Config = require(ExperienceChat.Config)

local Actions = ExperienceChat.Actions
local ConfigurationObjectsLoaded = require(Actions.ConfigurationObjectsLoaded)
local ChatWindowSettingsChanged = require(Actions.ChatWindowSettingsChanged)

local defaultState = {
	Font = Config.ChatWindowFont,
	TextColor3 = Config.ChatWindowTextColor3,
	TextSize = Config.ChatWindowTextSize,
	TextStrokeColor3 = Config.ChatWindowTextStrokeColor,
	TextStrokeTransparency = Config.ChatWindowTextStrokeTransparency,
	BackgroundColor3 = Config.ChatWindowBackgroundColor3,
	BackgroundTransparency = Config.ChatWindowBackgroundTransparency,
	HeightScale = 1,
	WidthScale = 1,
}

return Rodux.createReducer(defaultState, {
	[ConfigurationObjectsLoaded.name] = function(state, action: ConfigurationObjectsLoaded.Action)
		return Dictionary.join(state, action.chatWindowSettings)
	end :: any,

	[ChatWindowSettingsChanged.name] = function(state, action: ChatWindowSettingsChanged.Action)
		if not state[action.property] then
			return state
		end

		return Dictionary.join(state, {
			[action.property] = action.value,
		})
	end :: any,
})
