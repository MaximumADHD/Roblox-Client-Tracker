--[[
	Centralize the non-public dependencies outside TrustAndSafety module.
]]
local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent.InGameMenu

local SwitchTnSTranslationsPackage = game:DefineFastFlag("SwitchTnSTranslationsPackage", false)

return {
	BarOnTopScrollingFrame = InGameMenu.Components.BarOnTopScrollingFrame,
	Divider = InGameMenu.Components.Divider,
	FocusHandler = InGameMenu.Components.Connection.FocusHandler,
	ThemedTextLabel = InGameMenu.Components.ThemedTextLabel,
	PlayerCell = InGameMenu.Components.PlayerCell,
	GameIcon = InGameMenu.Components.GameIcon,
	PlayerSearchPredicate = InGameMenu.Utility.PlayerSearchPredicate,
	SearchBar = InGameMenu.Components.SearchBar,
	Localization = if SwitchTnSTranslationsPackage then require(CorePackages.Workspace.Packages.InExperienceLocales).Localization else require(InGameMenu.Localization.Localization),
	LocalizationProvider = InGameMenu.Localization.LocalizationProvider,
	withLocalization = InGameMenu.Localization.withLocalization,
	playerInterface = script.Parent.Parent.Interfaces.playerInterface,
}
