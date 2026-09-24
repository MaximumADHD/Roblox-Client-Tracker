local Main = script.Parent.Parent.Parent
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)
local ThemeSwitcher = Framework.Style.ThemeSwitcher
local StudioFoundation = require(Main.Packages.StudioFoundation)

-- Hack to react to the color mode change: we update the Rodux store, but initially it's empty.
-- ThemeSwitcher resolves Default to Studio's actual Light/Dark so Foundation does not mis-map it.
return RoactRodux.connect(function(state)
	local colorMode = state.Stories.colorMode or ThemeSwitcher.getThemeName()
	return {
		colorMode = colorMode,
		-- Deprecated Foundation/adapter prop kept while consumers migrate.
		theme = colorMode,
		themeName = state.Stories.themeName,
	}
end)(StudioFoundation.Components.FoundationProviderAdapter)
