local Validator = script.Parent
local ImageSet = Validator.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)

local ImageSetData = t.strictInterface({
	ImageRectOffset = t.Vector2,
	ImageRectSize = t.Vector2,
	ImageSet = t.string,
})

return ImageSetData