--[[
	Centralize the non-public dependencies outside TrustAndSafety module.
]]
local InGameMenu = script.parent.parent.InGameMenuV3

return {
	Divider = InGameMenu.Components.Divider,
	FocusHandler = InGameMenu.Components.Connection.FocusHandler,
	ThemedTextLabel = InGameMenu.Components.ThemedTextLabel,
	Localization = InGameMenu.Localization.Localization,
	LocalizationProvider = InGameMenu.Localization.LocalizationProvider,
	withLocalization = InGameMenu.Localization.withLocalization,
}
