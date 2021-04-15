-- The plugin theme
local Main = script.Parent.Parent.Parent

local Framework = require(Main.Packages.Framework)
local Style = Framework.Style
local makeTheme = Style.makeTheme

return makeTheme(Main.Src.Components)
