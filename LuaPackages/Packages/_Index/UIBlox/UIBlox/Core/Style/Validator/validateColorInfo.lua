local Validator = script.Parent
local Style = Validator.Parent
local App = Style.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local validateBinding = require(Validator.validateBinding)

export type ColorInfo = {
	Color: Color3,
	Transparency: number,
}

return t.strictInterface({
	Color = t.Color3,
	Transparency = t.union(t.numberConstrained(0, 1), validateBinding),
})
