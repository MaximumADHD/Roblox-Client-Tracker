local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local INSET_ADJUSTMENT = 2
local PADDING = 50
local ASSET_NAME = "component_assets/square_7_stroke_3"
local SLICE_CENTER = Rect.new(3.5, 3.5, 3.5, 3.5) -- from image asset

export type Props = {
	isVisible: boolean,
}

local SelectionCell = React.forwardRef(function(props: Props, ref: React.Ref<any>)
	return React.createElement(ImageSetComponent.Label, {
		Image = Images[ASSET_NAME],
		ImageColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, INSET_ADJUSTMENT * 2 + PADDING, 1, INSET_ADJUSTMENT * 2),
		Position = UDim2.fromOffset(-INSET_ADJUSTMENT - PADDING / 2, -INSET_ADJUSTMENT),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = SLICE_CENTER,
		ref = ref,
	}, {
		AnimatedGradient = props.isVisible and React.createElement(AnimatedGradient) or nil,
	})
end)

return SelectionCell
