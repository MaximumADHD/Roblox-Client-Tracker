local Menu = script.Parent
local App = Menu.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)

return t.strictInterface({
	targetValue = t.number,
	springParams = t.optional(t.strictInterface({
		frequency = t.number,
		dampingRatio = t.number,
	})),
})
