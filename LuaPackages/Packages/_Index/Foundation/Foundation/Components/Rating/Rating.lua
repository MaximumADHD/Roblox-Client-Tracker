local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local ChipSize = require(Foundation.Enums.ChipSize)
local Divider = require(Foundation.Components.Divider)
local Icon = require(Foundation.Components.Icon)
local Orientation = require(Foundation.Enums.Orientation)
local RatingValue = require(Foundation.Enums.RatingValue)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useRatingVariants = require(script.Parent.useRatingVariants)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local IconName = BuilderIcons.Icon
local IconVariant = BuilderIcons.IconVariant

type ChipSize = ChipSize.ChipSize
type RatingValue = RatingValue.RatingValue

export type RatingProps = {
	text: string,
	size: ChipSize?,
	value: RatingValue,
	onThumbUp: () -> (),
	onThumbDown: () -> (),
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	size = ChipSize.Medium,
	value = RatingValue.None :: RatingValue,
	Selectable = true,
	testId = "--foundation-rating",
}

local function Rating(ratingProps: RatingProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props = withDefaults(ratingProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useRatingVariants(tokens, props.size)

	local thumbUpRef = React.useRef(nil :: GuiObject?)
	local thumbDownRef = React.useRef(nil :: GuiObject?)

	local cursor = React.useMemo(function()
		local cursorBorderWidth = math.floor(tokens.Stroke.Thicker)
		return {
			radius = UDim.new(0, tokens.Radius.Circle),
			offset = cursorBorderWidth * 2,
			borderWidth = cursorBorderWidth,
		}
	end, { tokens })

	local isThumbUpRecorded = props.value == RatingValue.ThumbUp
	local isThumbDownRecorded = props.value == RatingValue.ThumbDown

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			backgroundStyle = variantProps.container.backgroundStyle,
			ref = ref,
		}),
		{
			ThumbUp = React.createElement(View, {
				tag = variantProps.thumbUpSegment.tag,
				ref = thumbUpRef,
				LayoutOrder = 1,
				onActivated = props.onThumbUp,
				cursor = cursor,
				selection = {
					Selectable = props.Selectable,
					NextSelectionUp = props.NextSelectionUp,
					NextSelectionDown = props.NextSelectionDown,
					NextSelectionLeft = props.NextSelectionLeft,
					NextSelectionRight = thumbDownRef,
				},
				testId = `{props.testId}--thumb-up`,
			}, {
				Icon = React.createElement(View, {
					tag = variantProps.thumbUpIcon.tag,
					LayoutOrder = 1,
				}, {
					Icon = React.createElement(Icon, {
						name = IconName.ThumbUp,
						variant = if isThumbUpRecorded then IconVariant.Filled else IconVariant.Regular,
						size = variantProps.iconSize,
						style = variantProps.text.contentStyle,
						testId = `{props.testId}--thumb-up-icon`,
					}),
				}),
				Text = React.createElement(Text, {
					Text = props.text,
					textStyle = variantProps.text.contentStyle,
					tag = variantProps.text.tag,
					LayoutOrder = 2,
					testId = `{props.testId}--text`,
				}),
			}),
			Divider = React.createElement(View, {
				tag = variantProps.dividerContainer.tag,
				LayoutOrder = 2,
				testId = `{props.testId}--divider`,
			}, {
				Line = React.createElement(Divider, {
					orientation = Orientation.Vertical,
				}),
			}),
			ThumbDown = React.createElement(View, {
				tag = variantProps.thumbDownSegment.tag,
				ref = thumbDownRef,
				LayoutOrder = 3,
				onActivated = props.onThumbDown,
				cursor = cursor,
				selection = {
					Selectable = props.Selectable,
					NextSelectionUp = props.NextSelectionUp,
					NextSelectionDown = props.NextSelectionDown,
					NextSelectionLeft = thumbUpRef,
					NextSelectionRight = props.NextSelectionRight,
				},
				testId = `{props.testId}--thumb-down`,
			}, {
				Icon = React.createElement(View, {
					tag = variantProps.thumbDownIcon.tag,
					LayoutOrder = 1,
				}, {
					Icon = React.createElement(Icon, {
						name = IconName.ThumbDown,
						variant = if isThumbDownRecorded then IconVariant.Filled else IconVariant.Regular,
						size = variantProps.iconSize,
						style = variantProps.text.contentStyle,
						testId = `{props.testId}--thumb-down-icon`,
					}),
				}),
			}),
		}
	)
end

return React.memo(React.forwardRef(Rating))
