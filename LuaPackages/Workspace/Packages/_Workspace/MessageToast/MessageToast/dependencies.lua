local Root = script.Parent
local Packages = Root.Parent

return {
	React = require(Packages.React),
	Roact = require(Packages.Roact),
	Rodux = require(Packages.Rodux),
	RoactRodux = require(Packages.RoactRodux),

	Dash = require(Packages.Dash),
	Hooks = {
		useNavigation = require(Packages.RoactUtils).Hooks.useNavigation,
		useLocalization = require(Packages.RoactUtils).Hooks.useLocalization,
		useDidUpdate = require(Packages.RoactUtils).Hooks.useDidUpdate,
		dependencyArray = require(Packages.RoactUtils).Hooks.dependencyArray,
	},
	UIBlox = require(Packages.UIBlox),

	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	RoactNavigation = require(Packages.RoactNavigation),
}
