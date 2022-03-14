local ValidatorRoot = script.Parent
local StyleRoot = ValidatorRoot.Parent
local UIBloxRoot = StyleRoot.Parent
local t = require(UIBloxRoot.Parent.t)

return t.strictInterface({
	Color = t.Color3,
	Transparency = t.numberConstrained(0, 1),
	Image = t.string,
})
