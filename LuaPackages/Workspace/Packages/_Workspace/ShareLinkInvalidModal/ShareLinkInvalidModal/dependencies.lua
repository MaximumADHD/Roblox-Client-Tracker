local Root = script.Parent
local Packages = Root.Parent

local LuaSocialLibrariesDeps = require(Packages.LuaSocialLibrariesDeps)

return {
	Dash = require(Packages.Dash),
	Roact = require(Packages.Roact),
	RoactNavigation = require(Packages.RoactNavigation),
	RoactRodux = require(Packages.RoactRodux),
	Rodux = require(Packages.Rodux),
	t = require(Packages.t),
	UIBlox = require(Packages.UIBlox),
	LocalizationProvider = require(Packages.Localization).LocalizationProvider,
	withLocalization = require(Packages.Localization).withLocalization,

	llama = LuaSocialLibrariesDeps.llama,
}
