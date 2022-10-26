local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

return t.strictInterface({
	Color = t.ColorSequence,
	Transparency = t.NumberSequence,
	Rotation = t.number,
	Offset = t.optional(t.Vector2),
})
