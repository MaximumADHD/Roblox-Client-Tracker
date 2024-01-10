local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local INSET_ADJUSTMENT = 2
local ASSET_NAME = "component_assets/bulletUp_17_stroke_3"
local SLICE_CENTER = Rect.new(8, 8, 9, 9) -- from image asset

export type Props = {
	isVisible: boolean,
}

local BulletUp = React.forwardRef(function(props: Props, ref: React.Ref<any>)
	return React.createElement(ImageSetComponent.Label, {
		Image = Images[ASSET_NAME],
		ImageColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		Size = UDim2.new(1, INSET_ADJUSTMENT * 2, 1, INSET_ADJUSTMENT * 2),
		Position = UDim2.fromOffset(-INSET_ADJUSTMENT, -INSET_ADJUSTMENT),
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = SLICE_CENTER,
		ref = ref,
	}, {
		AnimatedGradient = props.isVisible and React.createElement(AnimatedGradient) or nil,
	})
end)

return BulletUp
