local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local Rodux = require(CorePackages.Packages.Rodux)
local UpdateChatSettings = require(script.Parent.Parent.Actions.UpdateChatSettings)
local ChatSettings = require(script.Parent.Parent.ChatSettings)

local chatSettings = Rodux.createReducer(ChatSettings, {
	[UpdateChatSettings.name] = function(_, action)
		local result = Cryo.Dictionary.join(ChatSettings, action.settings)

		-- Fill missing keys from user specific settings with their default values
		for key, specificSettings in pairs(result.UserSpecificSettings) do
			result.UserSpecificSettings[key] = Cryo.Dictionary.join(ChatSettings, specificSettings,
							{UserSpecificSettings = Cryo.None})
		end

		return result
	end,
})

return chatSettings
