local SquadWidget = script:FindFirstAncestor("SquadWidget")
local Packages = SquadWidget.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

return {
	Dash = require(Packages.Dash),
	Hooks = {
		dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray,
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		useSelector = require(Packages.RoactUtils).Hooks.RoactRodux.useSelector,
	},
	React = require(Packages.React),
	Roact = require(Packages.Roact),
	RoactRodux = require(Packages.RoactRodux),
	RoactNavigation = require(Packages.RoactNavigation),
	Rodux = require(Packages.Rodux),
	UIBlox = require(Packages.UIBlox),
	enumerate = require(Packages.enumerate),
	t = require(Packages.t),

	RoactFitComponents = LuaSocialLibrariesDeps.RoactFitComponents,
	SocialLibraries = LuaSocialLibrariesDeps.SocialLibraries.config({}),
	llama = LuaSocialLibrariesDeps.llama,

	withLocalization = require(Packages.Localization).withLocalization,

	AppStyle = {
		LightTheme = require(Packages.Style).Themes.LightTheme,
		DarkTheme = require(Packages.Style).Themes.DarkTheme,
	},
	ExternalContentSharingProtocol = require(Packages.ExternalContentSharingProtocol).ExternalContentSharingProtocol.default,

	PeekView = require(Packages.PeekView),
	Squads = require(Packages.Squads),
}
