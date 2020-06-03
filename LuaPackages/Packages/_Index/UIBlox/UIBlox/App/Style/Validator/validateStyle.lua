local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

local validateTheme = require(Validator.validateTheme)
local validateFont = require(Validator.validateFont)

local StylePalette = t.strictInterface({
	Theme = validateTheme,
	Font = validateFont,
})

return StylePalette
