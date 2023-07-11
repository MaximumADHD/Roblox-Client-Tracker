local Validator = script.Parent
local ImageSet = Validator.Parent
local Core = ImageSet.Parent
local UIBlox = Core.Parent
local Packages = UIBlox.Parent
local t = require(Packages.t)

export type ImageSetData = {
	ImageRectOffset: Vector2,
	ImageRectSize: Vector2,
	Image: string,
}

local ImageSetData = t.strictInterface({
	ImageRectOffset = t.Vector2,
	ImageRectSize = t.Vector2,
	Image = t.string,
})

return ImageSetData
