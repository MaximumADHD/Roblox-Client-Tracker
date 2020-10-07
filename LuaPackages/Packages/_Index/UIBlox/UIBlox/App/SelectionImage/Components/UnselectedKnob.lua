local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)

local ASSET_NAME = "component_assets/circle_52_stroke_3"
local ASSET_SIZE = 52

return function(props)
	return withStyle(function(style)
		return Roact.createElement(ImageSetComponent.Label, {
			Image = Images[ASSET_NAME],
			ImageColor3 = style.Theme.SelectionCursor.Color,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(ASSET_SIZE, ASSET_SIZE),
			Position = UDim2.new(0.5, -ASSET_SIZE / 2, 0.5, -ASSET_SIZE / 2),

			[Roact.Ref] = props[Roact.Ref],
		})
	end)
end