local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local Image = require(Foundation.Components.Image)
local Types = require(Foundation.Components.Types)

local DialogSize = require(Foundation.Enums.DialogSize)
type DialogSize = DialogSize.DialogSize

local withDefaults = require(Foundation.Utility.withDefaults)
local renderFade = require(script.Parent.Parent.renderFade)
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

	local offsetX = variants.dialogHeroMedia.offsetX

	return React.createElement(View, {
		tag = variants.dialogHeroMediaWrapper.tag,
		LayoutOrder = -2147483648, -- Ensure HeroMedia is always rendered first
		testId = "--foundation-dialog-hero-media",
	}, {
		Image = React.createElement(Image, {
			tag = variants.dialogHeroMedia.tag,
			aspectRatio = props.aspectRatio,
			Image = props.media,
			Size = UDim2.new(1, offsetX * 2, props.height.Scale, props.height.Offset),
			SizeConstraint = Enum.SizeConstraint.RelativeXX,
			Position = UDim2.new(0, -offsetX, 0, 0),
		}, {
			TransparencyGradient = renderFade(-90, 0),
		}),
	})
end

return DialogHeroMedia
