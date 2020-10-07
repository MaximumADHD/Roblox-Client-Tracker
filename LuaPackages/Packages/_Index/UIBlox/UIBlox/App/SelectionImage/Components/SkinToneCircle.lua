local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)

local ASSET_NAME = "component_assets/circle_69_stroke_3"

return function(props)
	return withStyle(function(style)
		return Roact.createElement(ImageSetComponent.Label, {
			Image = Images[ASSET_NAME],
			ImageColor3 = style.Theme.SelectionCursor.Color,
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),

			[Roact.Ref] = props[Roact.Ref],
		})
	end)
end