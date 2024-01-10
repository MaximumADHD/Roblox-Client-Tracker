-- The plugin theme

local Main = script.Parent.Parent.Parent
local Framework = require(Main.Packages.Framework)

local Style = Framework.Style
local makeTheme = Style.makeTheme

local ThemeSwitcher = Framework.Style.ThemeSwitcher
return makeTheme(Main.Src.Components, {}, ThemeSwitcher.new())
