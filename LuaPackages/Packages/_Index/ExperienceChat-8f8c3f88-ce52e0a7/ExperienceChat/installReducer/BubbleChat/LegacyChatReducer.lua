local ExperienceChat = script:FindFirstAncestor("ExperienceChat")
local Packages = ExperienceChat.Parent
local Rodux = require(Packages.Rodux)
local Dictionary = require(Packages.llama).Dictionary

local Actions = ExperienceChat.Actions
local LegacyBubbleChatEnabledChanged = require(Actions.LegacyBubbleChatEnabledChanged)
local LegacyBubbleChatSettingsChanged = require(Actions.LegacyBubbleChatSettingsChanged)

local LegacyDefaultSettings = require(script.Parent.LegacyDefaultSettings)
local defaultState = LegacyDefaultSettings

return Rodux.createReducer(defaultState, {
	[LegacyBubbleChatEnabledChanged.name] = function(state, action: LegacyBubbleChatEnabledChanged.Action)
		return Dictionary.join(state, {
			Enabled = action.value,
		})
	end :: any,

	[LegacyBubbleChatSettingsChanged.name] = function(_, action: LegacyBubbleChatSettingsChanged.Action)
		-- Legacy bubble chat joins only the new chat settings with the default settings- it does not join with already customized settings.
		local chatSettings = action.chatSettings
		if chatSettings.Transparency then
			-- Transparency in Legacy Bubble Chat is equal to TextChatService BackgroundTransparency
			chatSettings.BackgroundTransparency = chatSettings.Transparency
		end

		local newState = Dictionary.join(defaultState, chatSettings)

		if chatSettings and chatSettings.UserSpecificSettings then
			-- If the developer has provided user specific settings
			-- Fill missing keys from user specific settings with their default values
			for key, specificSettings in pairs(chatSettings.UserSpecificSettings) do
				local mergedSettings = Dictionary.copyDeep(defaultState)
				if specificSettings.Transparency then
					specificSettings.BackgroundTransparency = specificSettings.Transparency
				end
				mergedSettings.UserSpecificSettings = nil
				newState.UserSpecificSettings[key] = Dictionary.join(mergedSettings, specificSettings)
			end
		end

		return newState
	end :: any,
})
