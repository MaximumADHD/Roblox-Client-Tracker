--[[
	Centralize the non-public dependencies outside TrustAndSafety module.
]]
local InGameMenu = script.Parent.Parent.InGameMenuV3

return {
	BarOnTopScrollingFrame = InGameMenu.Components.BarOnTopScrollingFrame,
	Divider = InGameMenu.Components.Divider,
	FocusHandler = InGameMenu.Components.Connection.FocusHandler,
	ThemedTextLabel = InGameMenu.Components.ThemedTextLabel,
	PlayerCell = InGameMenu.Components.PlayerCell,
	GameIcon = InGameMenu.Components.GameIcon,
	PlayerSearchPredicate = InGameMenu.Utility.PlayerSearchPredicate,
	SearchBar = InGameMenu.Components.SearchBar,
	SendAnalytics = require(InGameMenu.Utility.SendAnalytics),
	Localization = InGameMenu.Localization.Localization,
	LocalizationProvider = InGameMenu.Localization.LocalizationProvider,
	withLocalization = InGameMenu.Localization.withLocalization,
	UIBloxInGameConfig = script.Parent.Parent.UIBloxInGameConfig,
	playerInterface = script.Parent.Parent.Interfaces.playerInterface,
}
