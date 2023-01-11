local Root = script.Parent
local Packages = Root.Parent

return {
	Mock = require(Packages.LuaSocialLibrariesDeps).Mock,
	UIBlox = require(Packages.UIBlox),
	UnitTestHelpers = require(Packages.UnitTestHelpers),
	Roact = require(Packages.Roact),
	Dash = require(Packages.Dash),
	Rodux = require(Packages.Rodux),
	RoactRodux = require(Packages.RoactRodux),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	RobloxAppLocales = require(Packages.RobloxAppLocales),
}
