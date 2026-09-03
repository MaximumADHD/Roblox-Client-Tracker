local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
type ReactNode = React.ReactNode

local Constants = require(Foundation.Constants)

local Button = require(Foundation.Components.Button)
local ButtonGroup = require(Foundation.Components.ButtonGroup)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local ColorNamespace = require(Foundation.Enums.ColorNamespace)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local Logger = require(Foundation.Utility.Logger)
local Orientation = require(Foundation.Enums.Orientation)
local Popover = require(Foundation.Components.Popover)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local PresentationContext = require(Foundation.Providers.Style.PresentationContext)
local Radius = require(Foundation.Enums.Radius)
local Text = require(Foundation.Components.Text)
local Translator = require(Foundation.Utility.Localization.Translator)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)

local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

type ButtonGroupItem = ButtonGroup.ButtonGroupItem
type Bindable<T> = Types.Bindable<T>
type Selection = Types.Selection
type SelectionGroup = Types.SelectionGroup
type PopoverAnchor = Types.PopoverAnchor
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
type PopoverAnchorProps = Popover.PopoverAnchorProps

export type CoachmarkProps = {
	-- A title for the coachmark. To omit, set it to an empty string.
	title: string,
	-- Body text for the coachmark.
	text: string?,
	-- Media displayed at the top of the coachmark
	media: ReactNode?,
	-- Actions array (up to 2 buttons supported)
	actions: { ButtonGroupItem }?,
	isOpen: boolean?,
	-- Close callback (optional) - if provided, displays a close affordance in the header
	onClose: (() -> ())?,
	-- Callback invoked when the backdrop (outside the tooltip) is pressed.
	onPressedOutside: (() -> ())?,
	-- Step indicator (optional) - shows "X of Y" above the header
	steps: {
		current: number,
		total: number,
	}?,
	align: PopoverAlign?,
	side: PopoverSide?,
	-- Reference to the element that will serve as an anchor
	anchorRef: React.Ref<PopoverAnchor>?,
	children: ReactNode?,
	-- Selection behavior
	selection: Selection?,
	selectionGroup: (Bindable<boolean> | SelectionGroup)?,
} & Types.CommonProps

local defaultProps = {
	isOpen = false,
	align = PopoverAlign.Start,
	side = PopoverSide.Right,
	testId = "--foundation-coachmark",
}

local MAX_BUTTON_COUNT = 2
local MAX_WIDTH_DEPRECATED = 320
local MIN_WIDTH = 240

local INVERSE_PRESENTATION = { colorNamespace = ColorNamespace.Inverse }

local function stepsText(current: number, total: number)
	return Translator:FormatByKey("CommonUI.Controls.Label.PageCount", { current = current, total = total })
end

local function Coachmark(coachmarkProps: CoachmarkProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(coachmarkProps, defaultProps)
	local tokens = useTokens()
	local maxXSize = useScaledValue(
		if Flags.FoundationEducationalTooltipRefresh then Constants.TOOLTIP_MAX_WIDTH else MAX_WIDTH_DEPRECATED
	)
	local minXSize = useScaledValue(MIN_WIDTH)
	-- Size constraint for text elements when close affordance is present
	local textSizeConstraint = if props.onClose
		then {
			MaxSize = Vector2.new(maxXSize - tokens.Size.Size_1200, math.huge),
		}
		else nil

	local actionButtons = React.useMemo(function(): { ButtonGroupItem | React.Node }
		local items: { ButtonGroupItem | React.Node } = {}

		if not props.actions then
			return items
		end

		for i, action in props.actions do
			if not Flags.FoundationEducationalTooltipRefresh and i > MAX_BUTTON_COUNT then
				Logger:warning(`Coachmark only supports up to {MAX_BUTTON_COUNT} actions`)
				break
			end

			if Flags.FoundationEducationalTooltipRefresh then
				items[i] = action
			else
				local actionProps = {
					LayoutOrder = i,
					size = InputSize.Medium,
					fillBehavior = FillBehavior.Fill,
					testId = `{props.testId}--action-{i}`,
				}
				local buttonProps = Dash.union(action, actionProps)
				items[("CoachmarkButton" .. i) :: any] = React.createElement(Button, buttonProps :: any)
			end
		end
		return items
	end, { props.actions, props.testId } :: { unknown })

	return React.createElement(Popover.Root, {
		isOpen = props.isOpen,
		testId = props.testId,
	}, {
		Anchor = React.createElement(
			Popover.Anchor,
			withCommonProps(props, {
				anchorRef = props.anchorRef,
			}),
			props.children
		),
		Content = React.createElement(
			Popover.Content,
			{
				hasArrow = true,
				align = props.align,
				DO_NOT_USE_hasContentInputSink = true,
				onPressedOutside = if Flags.FoundationCoachmarkPressedOutside then props.onPressedOutside else nil,
				side = {
					position = props.side,
					offset = tokens.Size.Size_200,
				},
				radius = Radius.Medium,
				backgroundStyle = tokens.Inverse.Surface.Surface_0,
				selection = props.selection,
				selectionGroup = props.selectionGroup,
				ref = ref,
			},
			React.createElement(
				PresentationContext.Provider,
				{
					-- lute-lint-ignore(noUnstableContextValue)
					value = if Flags.FoundationStableContextValues
						then INVERSE_PRESENTATION
						else { colorNamespace = ColorNamespace.Inverse },
				},
				React.createElement(View, {
					tag = if Flags.FoundationEducationalTooltipRefresh
						then "col auto-xy"
						else "col gap-medium auto-xy padding-bottom-medium",
					sizeConstraint = {
						MaxSize = Vector2.new(maxXSize, math.huge),
						MinSize = if Flags.FoundationEducationalTooltipRefresh
							then Vector2.new(minXSize, 0)
							else nil :: never,
					},
				}, {
					CloseAffordanceContainer = if props.onClose
						then React.createElement("Folder", {}, {
							CloseAffordance = React.createElement(CloseAffordance, {
								onActivated = props.onClose,
								size = InputSize.Small,
								variant = CloseAffordanceVariant.Utility,
								Position = UDim2.new(1, -tokens.Padding.Small, 0, tokens.Padding.Small),
								AnchorPoint = Vector2.new(1, 0), -- Top-right anchor
								ZIndex = 2,
								testId = `{props.testId}--close-affordance`,
							}),
						})
						else nil,
					Media = if props.media
						then React.createElement(View, {
							LayoutOrder = 1,
							tag = "size-full-0 auto-y",
						}, props.media)
						else nil,
					ContentSection = React.createElement(View, {
						LayoutOrder = 2,
						tag = if Flags.FoundationEducationalTooltipRefresh
							then "col auto-xy padding-medium"
							else "col gap-xsmall auto-xy padding-x-medium padding-bottom-xsmall padding-top-medium",
					}, {
						StepIndicator = if props.steps
							then React.createElement(Text, {
								LayoutOrder = 1,
								Text = stepsText(props.steps.current, props.steps.total),
								tag = if Flags.FoundationEducationalTooltipRefresh
									then "auto-xy text-caption-medium text-align-x-left text-truncate-end content-inverse-default"
									else "auto-xy text-label-small text-align-x-left text-truncate-end content-inverse-default",
								sizeConstraint = textSizeConstraint,
								testId = `{props.testId}--step-indicator`,
							})
							else nil,
						Header = if props.title ~= ""
							then React.createElement(Text, {
								LayoutOrder = 2,
								Text = props.title,
								tag = "auto-xy text-title-large text-align-x-left text-truncate-split content-inverse-emphasis",
								sizeConstraint = textSizeConstraint,
								testId = `{props.testId}--header`,
							})
							else nil,
						Text = if props.text and props.text ~= ""
							then React.createElement(Text, {
								LayoutOrder = 3,
								Text = props.text,
								tag = "size-full-0 auto-y text-body-medium text-wrap text-align-x-left content-inverse-default",
								padding = if Flags.FoundationEducationalTooltipRefresh
									then { top = UDim.new(0, tokens.Size.Size_100) }
									else nil,
								testId = `{props.testId}--text`,
							})
							else nil,
					}),
					Actions = if props.actions and #props.actions > 0
						then React.createElement(
							View,
							{
								LayoutOrder = 3,
								tag = if Flags.FoundationEducationalTooltipRefresh
									then "row align-x-right size-full-0 auto-y padding-x-medium padding-bottom-medium"
									else "row gap-small size-full-0 auto-y padding-x-medium",
							},
							if Flags.FoundationEducationalTooltipRefresh
								then {
									ButtonGroup = React.createElement(ButtonGroup, {
										buttons = actionButtons :: { ButtonGroupItem },
										maxButtonCount = MAX_BUTTON_COUNT,
										orientation = Orientation.Horizontal,
										size = InputSize.Small,
										testId = `{props.testId}--actions`,
									}),
								}
								else actionButtons :: { React.Node }
						)
						else nil,
				})
			)
		),
	})
end

return React.memo(React.forwardRef(Coachmark))
