local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local ASSET_NAME = "component_assets/circle_22_stroke_3"
local PADDING = 14
local SLICE_CENTER = Rect.new(11, 11, 12, 12) -- from image asset

export type Props = {
	isVisible: boolean,
}

local InputFields = React.forwardRef(function(props: Props, ref: React.Ref<any>)
	return React.createElement(ImageSetComponent.Label, {
		Image = Images[ASSET_NAME],
		ImageColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, PADDING, 1, 0),
		Position = UDim2.new(0, -PADDING / 2, 0, 0),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = SLICE_CENTER,
		ref = ref,
	}, {
		AnimatedGradient = props.isVisible and React.createElement(AnimatedGradient) or nil,
	})
end)

return InputFields
