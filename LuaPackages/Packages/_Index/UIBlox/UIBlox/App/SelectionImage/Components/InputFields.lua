local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)

local ASSET_NAME = "component_assets/circle_22_stroke_3"
local PADDING = 14

return function(props)
	return withStyle(function(style)
		return Roact.createElement(ImageSetComponent.Label, {
			Image = Images[ASSET_NAME],
			ImageColor3 = style.Theme.SelectionCursor.Color,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, PADDING, 1, 0),
			Position = UDim2.new(0, -PADDING / 2, 0, 0),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(11, 11, 12, 12),

			[Roact.Ref] = props[Roact.Ref],
		})
	end)
end