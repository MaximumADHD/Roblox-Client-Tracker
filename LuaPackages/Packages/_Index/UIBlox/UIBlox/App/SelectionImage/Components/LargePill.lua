--!nocheck
local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local Roact = require(Packages.Roact)
local withStyle = require(UIBloxRoot.Core.Style.withStyle)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local ASSET_NAME = "component_assets/circle_52_stroke_3"

export type Props = {
	cursorRef: table,
	isVisible: boolean,
}

return function(props: Props)
	return withStyle(function(style)
		return Roact.createElement(ImageSetComponent.Label, {
			Image = Images[ASSET_NAME],
			ImageColor3 = style.Theme.SelectionCursor.AnimatedColor,
			BackgroundTransparency = 1,
			Size = UDim2.fromScale(1, 1),
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(26, 26, 27, 27),

			[Roact.Ref] = props.cursorRef,
		}, {
			AnimatedGradient = props.isVisible and Roact.createElement(AnimatedGradient) or nil,
		})
	end)
end
