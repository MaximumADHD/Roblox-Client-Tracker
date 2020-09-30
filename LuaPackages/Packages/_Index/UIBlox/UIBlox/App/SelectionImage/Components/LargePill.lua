local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)

local ASSET_NAME = "component_assets/circle_52_stroke_3"

return function(props)
	return Roact.createElement(ImageSetComponent.Label, {
		Image = Images[ASSET_NAME],
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(26, 26, 27, 27),

		[Roact.Ref] = props[Roact.Ref],
	})
end