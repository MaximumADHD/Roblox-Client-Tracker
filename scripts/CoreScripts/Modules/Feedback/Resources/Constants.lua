--[[
	Constants for Feedback module
]]
local Constants = {
	State = {
		CurrentlyLeavingFeedback = "CurrentlyLeavingFeedback",
		Default = "Default",
		Disabled = "Disabled",
	},
	ContentType = {
		Invalid = 0,
		Text = 1,
		Image = 2,
	},
	ServiceSourceType = {
		InGameTranslations = 1,
		InGameTranslationsNoEntryId = 2,
		InGameUniverseAndImageAsset = 3,
	},
}

return Constants
