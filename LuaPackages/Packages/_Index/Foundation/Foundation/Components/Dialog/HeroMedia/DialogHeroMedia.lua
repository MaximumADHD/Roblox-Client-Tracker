local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local Constants = require(Foundation.Constants)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local withDefaults = require(Foundation.Utility.withDefaults)
local Gradient = require(Foundation.Components.Gradient)
local useDialogLayout = require(script.Parent.Parent.useDialogLayout)
local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants

type Bindable<T> = Types.Bindable<T>
type AspectRatio = Types.AspectRatio

export type DialogHeroMediaProps = {
	media: Bindable<string>,
	height: UDim?,
	aspectRatio: AspectRatio?,
}

local defaultProps = {
	height = UDim.new(1, 0),
}

local function DialogHeroMedia(mediaProps: DialogHeroMediaProps)
	local props = withDefaults(mediaProps, defaultProps)
	local layout = useDialogLayout()
	local variants = useDialogVariants()

	React.useEffect(function()
		layout.setHasHeroMedia(true)

		return function()
			layout.setHasHeroMedia(false)
		end
	end, {})

	local offsetX = variants.heroMedia.offsetX

	return React.createElement(View, {
		tag = variants.heroMediaWrapper.tag,
		LayoutOrder = Constants.MIN_LAYOUT_ORDER,
		testId = "--foundation-dialog-hero-media",
	}, {
		TransparencyGradient = React.createElement(Gradient, {
			fillDirection = Enum.FillDirection.Vertical,
			top = true,
		}),
		RoundedCorners = React.createElement(Image, {
			Image = props.media,
			aspectRatio = props.aspectRatio,
			Position = UDim2.new(0, -offsetX, 0, 0),
			Size = UDim2.new(1, offsetX * 2, props.height.Scale, props.height.Offset),
			ZIndex = 0,
		}, {
			TransparencyGradient = React.createElement(Gradient, {
				fillDirection = Enum.FillDirection.Vertical,
				top = false,
			}),
		}),
		Image = React.createElement(Image, {
			Image = props.media,
			tag = variants.heroMedia.tag,
			aspectRatio = props.aspectRatio,
			Position = UDim2.new(0, -offsetX, 0, 0),
			Size = UDim2.new(1, offsetX * 2, props.height.Scale, props.height.Offset),
		}),
	})
end

return DialogHeroMedia
