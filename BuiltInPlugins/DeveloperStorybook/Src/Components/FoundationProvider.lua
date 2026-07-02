local Main = script.Parent.Parent.Parent
local RoactRodux = require(Main.Packages.RoactRodux)

local Framework = require(Main.Packages.Framework)

local ThemeSwitcher = Framework.Style.ThemeSwitcher
local StudioFoundation = require(Main.Packages.StudioFoundation)

-- Hack to react to the theme change, we update value in the rodux store, but initially it's empty.
-- When the ThemeSwitcher has the correct value and doesn't have Default which may map to a different theme in Foundation.
return RoactRodux.connect(function()
	return { theme = ThemeSwitcher.getThemeName() }
end)(StudioFoundation.Components.FoundationProviderAdapter)
