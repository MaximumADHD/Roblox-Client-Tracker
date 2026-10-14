local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local InputSize = require(Foundation.Enums.InputSize)

local IconButton = require(Foundation.Components.IconButton)
local View = require(Foundation.Components.View)
local useCardVariants = require(script.Parent.Parent.useCardVariants)

type InputSize = InputSize.InputSize

local IconName = BuilderIcons.Icon
local ACTION_SIZE: InputSize = InputSize.Small

type CardVariantProps = useCardVariants.CardVariantProps

type CardActionsProps = {
	testId: string,
	variantProps: CardVariantProps,
	onOverflow: (() -> ())?,
	onClose: (() -> ())?,
	overflowRef: React.Ref<GuiObject>?,
	isOverMedia: boolean,
	isInline: boolean,
}

local function CardActions(props: CardActionsProps)
	local variantProps = props.variantProps

	return React.createElement(View, {
		tag = variantProps.actions.tag,
		AnchorPoint = if props.isInline then nil else Vector2.new(1, 0),
		Position = if props.isInline then nil else UDim2.fromScale(1, 0),
		LayoutOrder = if props.isInline then 2 else nil,
		ZIndex = 2,
		testId = `{props.testId}--actions`,
	}, {
		Overflow = if props.onOverflow
			then React.createElement(IconButton, {
				onActivated = props.onOverflow,
				icon = IconName.ThreeDotsHorizontal,
				variant = if props.isOverMedia then ButtonVariant.OverMedia else ButtonVariant.Utility,
				size = ACTION_SIZE,
				isCircular = true,
				ref = props.overflowRef,
				LayoutOrder = 1,
				testId = `{props.testId}--overflow`,
			})
			else nil,
		Close = if props.onClose
			then React.createElement(IconButton, {
				onActivated = props.onClose,
				icon = IconName.X,
				variant = if props.isOverMedia then ButtonVariant.OverMedia else ButtonVariant.Utility,
				size = ACTION_SIZE,
				isCircular = true,
				LayoutOrder = 2,
				testId = `{props.testId}--close`,
			})
			else nil,
	})
end

return CardActions
