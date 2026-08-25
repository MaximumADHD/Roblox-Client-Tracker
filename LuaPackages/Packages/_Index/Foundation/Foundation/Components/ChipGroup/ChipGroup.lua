local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local ChipGroupVariant = require(Foundation.Enums.ChipGroupVariant)
type ChipGroupVariant = ChipGroupVariant.ChipGroupVariant

local Flags = require(Foundation.Utility.Flags)

local ChipSize = require(Foundation.Enums.ChipSize)
type ChipSize = ChipSize.ChipSize

-- We omit ChipSize.Large because it doesn't look great when used in a large
-- group of Chips. We'll consider supporting it in the future if we have
-- compelling use cases
--
-- This is exported so we can access it internally. Do not expose off the public
-- API. We expect consumers to use ChipSize directly.
export type ChipGroupSize = typeof(ChipSize.Small) | typeof(ChipSize.Medium)

local ChipVariant = require(Foundation.Enums.ChipVariant)
type ChipVariant = ChipVariant.ChipVariant

local Accessory = require(Foundation.Components.Chip.Accessory)
type Accessory = Accessory.Accessory

local Visibility = require(Foundation.Enums.Visibility)
type Visibility = Visibility.Visibility

local BackgroundStyleContext = require(Foundation.Providers.Style.BackgroundStyleContext)
local useBackgroundStyle = BackgroundStyleContext.useBackgroundStyle

local Chip = require(Foundation.Components.Chip)
local OverflowScrollContainer = require(Foundation.Components.OverflowScrollContainer)
local ScrollView = require(Foundation.Components.ScrollView)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useChipGroupVariants = require(Foundation.Components.ChipGroup.useChipGroupVariants)
local useClippingRect = require(Foundation.Components.ChipGroup.useClippingRect)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local START_GRADIENT = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 0),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(1, 1),
})

local END_GRADIENT = NumberSequence.new({
	NumberSequenceKeypoint.new(0, 1),
	NumberSequenceKeypoint.new(0.5, 0),
	NumberSequenceKeypoint.new(1, 0),
})

export type ChipGroupItem = {
	text: string?,
	leading: (string | Accessory)?,
	trailing: (string | Accessory)?,
	onActivated: () -> (),
	isChecked: boolean?,
	variant: ChipVariant?,
}

export type ChipGroupProps = {
	-- The chips to render in the group.
	chips: { ChipGroupItem },
	-- Size applied to every Chip in the group. Overrides each Chip's own
	-- `size`.
	size: ChipGroupSize?,
	-- Controls how chips are laid out. Row renders chips in a single
	-- scrollable row with edge scrims that spills outside the group bounds.
	-- Wrap flows chips onto multiple rows and clips to the group bounds.
	variant: ChipGroupVariant?,
} & Types.CommonProps

local defaultProps = {
	size = ChipSize.Medium,
	variant = ChipGroupVariant.Row :: ChipGroupVariant,
	testId = "--foundation-chip-group",
}

local function Scrim(props: {
	gradient: NumberSequence,
	width: number,
	testId: string,
	LayoutOrder: number?,
})
	local backgroundStyle = useBackgroundStyle()

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.new(0, props.width, 1, 0),
		backgroundStyle = backgroundStyle,
		testId = props.testId,
	}, {
		UIGradient = React.createElement("UIGradient", {
			Transparency = props.gradient,
		}),
	})
end

local function ChipGroup(chipGroupProps: ChipGroupProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props = withDefaults(chipGroupProps, defaultProps)
	local tokens = useTokens()

	local variant = useChipGroupVariants(tokens, props.variant, props.size)

	if Flags.FoundationUnifiedScrimScrolling then
		local size: ChipSize = props.size
		local chips: { [string]: React.ReactNode } = {}
		for i, chipItem in props.chips do
			chips[`Chip{i}`] = React.createElement(Chip, {
				text = chipItem.text,
				leading = chipItem.leading,
				trailing = chipItem.trailing,
				onActivated = chipItem.onActivated,
				isChecked = chipItem.isChecked,
				variant = chipItem.variant,
				size = size,
				LayoutOrder = i,
				testId = `{props.testId}--chip-{i}`,
			})
		end

		local chipContainer = React.createElement(View, {
			tag = "auto-xy",
			layout = {
				FillDirection = Enum.FillDirection.Horizontal,
				Padding = UDim.new(0, variant.gap),
				Wraps = variant.isWrapped,
			},
		}, chips)

		if variant.isWrapped then
			return React.createElement(
				View,
				withCommonProps(props, {
					tag = "size-full-0 auto-y",
					ref = ref,
				}),
				{ ChipContainer = chipContainer }
			)
		end

		return React.createElement(
			OverflowScrollContainer,
			withCommonProps(props, {
				size = props.size,
				ref = ref,
			}),
			{ ChipContainer = chipContainer }
		)
	else
		local isStartVisible, setIsStartVisible = React.useBinding(false)
		local isEndVisible, setIsEndVisible = React.useBinding(false)
		local scrollingFrameRef = React.useRef<<ScrollingFrame?>>(nil)
		local viewportRect = useClippingRect(scrollingFrameRef)

		local updateScrimGeometry = React.useCallback(function(scrollingFrame: ScrollingFrame)
			if not variant.hasScrim or scrollingFrame.AbsoluteWindowSize.X == 0 then
				return
			end

			setIsStartVisible(scrollingFrame.CanvasPosition.X ~= 0)
			setIsEndVisible(
				(scrollingFrame.AbsoluteWindowSize.X + scrollingFrame.CanvasPosition.X)
					< (scrollingFrame.AbsoluteCanvasSize.X - 1)
			)
		end, { variant.hasScrim })

		local onRootAbsoluteSizeChanged = React.useCallback(function()
			if scrollingFrameRef.current then
				updateScrimGeometry(scrollingFrameRef.current)
			end
		end, { props.onAbsoluteSizeChanged, updateScrimGeometry } :: { unknown })

		local onRootAbsolutePositionChanged = React.useCallback(function()
			if scrollingFrameRef.current then
				updateScrimGeometry(scrollingFrameRef.current)
			end
		end, { props.onAbsolutePositionChanged, updateScrimGeometry } :: { unknown })

		local size: ChipSize = props.size
		local scrimWidth = variant.scrimWidth
		local chips: { [string]: React.ReactNode } = {}
		for i, chipItem in props.chips do
			chips[`Chip{i}`] = React.createElement(Chip, {
				text = chipItem.text,
				leading = chipItem.leading,
				trailing = chipItem.trailing,
				onActivated = chipItem.onActivated,
				isChecked = chipItem.isChecked,
				variant = chipItem.variant,
				size = size,
				LayoutOrder = i,
				testId = `{props.testId}--chip-{i}`,
			})
		end

		local rootProps = withCommonProps(props, {
			ref = ref,
			tag = "size-full-0 auto-y",
		})
		rootProps.onAbsoluteSizeChanged = onRootAbsoluteSizeChanged
		rootProps.onAbsolutePositionChanged = onRootAbsolutePositionChanged

		return React.createElement(View, rootProps, {
			ScrollView = React.createElement(ScrollView, {
				tag = "size-full-0 auto-y",
				scroll = {
					AutomaticSize = Enum.AutomaticSize.Y,
					AutomaticCanvasSize = Enum.AutomaticSize.X,
					CanvasSize = UDim2.fromScale(0, 1),
					ScrollingDirection = Enum.ScrollingDirection.X,
					ScrollingEnabled = not variant.isWrapped,
					scrollBarVisibility = Visibility.None,
				},
				layout = {
					FillDirection = Enum.FillDirection.Horizontal,
					Padding = UDim.new(0, variant.gap),
					Wraps = variant.isWrapped,
				},
				ClipsDescendants = variant.isWrapped,
				scrollingFrameRef = scrollingFrameRef,
				onCanvasPositionChanged = if variant.hasScrim then updateScrimGeometry else nil,
				onAbsoluteCanvasSizeChanged = if variant.hasScrim then updateScrimGeometry else nil,
				onAbsoluteWindowSizeChanged = if variant.hasScrim then updateScrimGeometry else nil,
			}, chips),

			ScrimWrapper = if variant.hasScrim
				then React.createElement(View, {
					tag = "row flex-between",
					Size = viewportRect:map(function(rect: Rect)
						return UDim2.fromOffset(rect.Max.X - rect.Min.X, scrimWidth)
					end),
					AnchorPoint = Vector2.new(0.5, 0),
					Position = UDim2.fromScale(0.5, 0),
					ZIndex = 2,
				}, {
					ScrimStart = isStartVisible and React.createElement(Scrim, {
						LayoutOrder = 1,
						gradient = START_GRADIENT,
						width = scrimWidth,
						testId = `{props.testId}--scrim-start`,
					}),

					ScrimEnd = isEndVisible and React.createElement(Scrim, {
						LayoutOrder = 2,
						gradient = END_GRADIENT,
						width = scrimWidth,
						testId = `{props.testId}--scrim-end`,
					}),
				})
				else nil,
		})
	end
end

return React.memo(React.forwardRef(ChipGroup))
