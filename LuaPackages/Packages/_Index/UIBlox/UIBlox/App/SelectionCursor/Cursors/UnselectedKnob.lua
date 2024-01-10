local UIBloxRoot = script.Parent.Parent.Parent.Parent
local Packages = UIBloxRoot.Parent

local React = require(Packages.React)

local ImageSetComponent = require(UIBloxRoot.Core.ImageSet.ImageSetComponent)
local Images = require(UIBloxRoot.App.ImageSet.Images)
local AnimatedGradient = require(script.Parent.AnimatedGradient)

local ASSET_NAME = "component_assets/circle_52_stroke_3"
local ASSET_SIZE = 52

export type Props = {
	isVisible: boolean,
}

local UnselectedKnob = React.forwardRef(function(props: Props, ref: React.Ref<any>)
	return React.createElement(ImageSetComponent.Label, {
		Image = Images[ASSET_NAME],
		ImageColor3 = Color3.new(1, 1, 1),
		BackgroundTransparency = 1,
		Size = UDim2.fromOffset(ASSET_SIZE, ASSET_SIZE),
		Position = UDim2.new(0.5, -ASSET_SIZE / 2, 0.5, -ASSET_SIZE / 2),
		ref = ref,
	}, {
		AnimatedGradient = props.isVisible and React.createElement(AnimatedGradient) or nil,
	})
end)

return UnselectedKnob
