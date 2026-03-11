local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Constants = require(Foundation.Constants)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local Gradient = require(Foundation.Components.Gradient)
local useDialog = require(script.Parent.Parent.useDialog)
local withDefaults = require(Foundation.Utility.withDefaults)
local useDialogVariants = require(script.Parent.Parent.useDialogVariants).useDialogVariants

type Bindable<T> = Types.Bindable<T>
type AspectRatio = Types.AspectRatio
type ColorStyle = Types.ColorStyle

export type DialogHeroMediaProps = {
	media: Bindable<string>,
	mediaStyle: ColorStyle?,
	backgroundStyle: ColorStyle?,
	height: UDim?,
	aspectRatio: AspectRatio?,
}

local defaultProps = {
	height = UDim.new(1, 0),
}

local function DialogHeroMedia(mediaProps: DialogHeroMediaProps)
	local props = withDefaults(mediaProps, defaultProps)
	local dialogContext = useDialog()
	local variants = useDialogVariants()

	React.useEffect(function()
		dialogContext.setHasHeroMedia(true)

		return function()
			dialogContext.setHasHeroMedia(false)
		end
	end, {})

	local offsetX = variants.heroMedia.offsetX

	return React.createElement(View, {
		tag = variants.heroMediaWrapper.tag,
		LayoutOrder = Constants.MIN_LAYOUT_ORDER,
		testId = `{dialogContext.testId}--hero-media`,
	}, {
		RoundedCorners = React.createElement(Image, {
			Image = props.media,
			imageStyle = props.mediaStyle,
			backgroundStyle = props.backgroundStyle,
			aspectRatio = props.aspectRatio,
			Position = UDim2.fromOffset(-offsetX, 0),
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
			imageStyle = props.mediaStyle,
			backgroundStyle = props.backgroundStyle,
			tag = variants.heroMedia.tag,
			aspectRatio = props.aspectRatio,
			Position = UDim2.fromOffset(-offsetX, 0),
			Size = UDim2.new(1, offsetX * 2, props.height.Scale, props.height.Offset),
		}, {
			TransparencyGradient = React.createElement(Gradient, {
				fillDirection = Enum.FillDirection.Vertical,
				top = true,
			}),
		}),
	})
end

return DialogHeroMedia
