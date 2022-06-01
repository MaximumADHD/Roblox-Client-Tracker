--[[
	Centralize the non-public dependencies outside TrustAndSafety module.
]]
local InGameMenu = script.parent.parent.InGameMenuV3

return {
	BarOnTopScrollingFrame = InGameMenu.Components.BarOnTopScrollingFrame,
	Divider = InGameMenu.Components.Divider,
	FocusHandler = InGameMenu.Components.Connection.FocusHandler,
	ThemedTextLabel = InGameMenu.Components.ThemedTextLabel,
	PlayerCell = InGameMenu.Components.PlayerCell,
	GameIcon = InGameMenu.Components.GameIcon,
	SendAnalytics = InGameMenu.Utility.SendAnalytics,
	Localization = InGameMenu.Localization.Localization,
	LocalizationProvider = InGameMenu.Localization.LocalizationProvider,
	withLocalization = InGameMenu.Localization.withLocalization,
	UIBloxInGameConfig = script.parent.parent.UIBloxInGameConfig,
	playerInterface = script.parent.parent.Interfaces.playerInterface,
}
