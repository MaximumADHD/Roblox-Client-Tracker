local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local Dash = require(Packages.Dash)
local React = require(Packages.React)
type ReactNode = React.ReactNode

local Button = require(Foundation.Components.Button)
local CloseAffordance = require(Foundation.Components.CloseAffordance)
local CloseAffordanceVariant = require(Foundation.Enums.CloseAffordanceVariant)
local ColorMode = require(Foundation.Enums.ColorMode)
local FillBehavior = require(Foundation.Enums.FillBehavior)
local InputSize = require(Foundation.Enums.InputSize)
local Logger = require(Foundation.Utility.Logger)
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

type ActionProps = Types.ActionProps
type Bindable<T> = Types.Bindable<T>
type Selection = Types.Selection
type SelectionGroup = Types.SelectionGroup
type PopoverAnchor = Types.PopoverAnchor
type PopoverAlign = PopoverAlign.PopoverAlign
type PopoverSide = PopoverSide.PopoverSide
local Popover = require(Foundation.Components.Popover)
type PopoverAnchorProps = Popover.PopoverAnchorProps

export type CoachmarkProps = {
	title: string,
	text: string?,
	-- Media displayed at the top of the coachmark
	media: ReactNode?,
	-- Actions array (up to 2 buttons supported)
	actions: { ActionProps }?,
	isOpen: boolean?,
	-- Close callback (optional) - if provided, displays a close affordance in the header
	onClose: (() -> ())?,
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

local function stepsText(current: number, total: number)
	return Translator:FormatByKey("CommonUI.Controls.Label.PageCount", { current = current, total = total })
end

local function Coachmark(coachmarkProps: CoachmarkProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(coachmarkProps, defaultProps)
	local tokens = useTokens()
	local maxXSize = useScaledValue(320)
	-- Size constraint for text elements when close affordance is present
	local textSizeConstraint = if props.onClose
		then {
			MaxSize = Vector2.new(maxXSize - tokens.Size.Size_1200, math.huge),
		}
		else nil

	local coachmarkButtons = React.useMemo(function()
		local buttons: { [string]: React.Node } = {}

		if not props.actions then
			return buttons
		end

		for i, action in props.actions do
			if i > MAX_BUTTON_COUNT then
				Logger:warning(`Coachmark only supports up to {MAX_BUTTON_COUNT} actions`)
				break
			end

			local actionProps = {
				LayoutOrder = i,
				size = InputSize.Medium,
				fillBehavior = FillBehavior.Fill,
				testId = `{props.testId}--action-{i}`,
			}
			local buttonProps = Dash.union(action, actionProps)
			buttons["CoachmarkButton" .. i] = React.createElement(Button, buttonProps :: any)
		end
		return buttons
	end, { props.actions })

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
				{ value = { colorMode = ColorMode.Inverse } },
				React.createElement(View, {
					tag = "col auto-xy gap-medium padding-bottom-medium",
					sizeConstraint = {
						MaxSize = Vector2.new(maxXSize, math.huge),
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
						tag = "col gap-xsmall auto-xy padding-top-medium padding-x-medium padding-bottom-xsmall",
					}, {
						StepIndicator = if props.steps
							then React.createElement(Text, {
								LayoutOrder = 1,
								Text = stepsText(props.steps.current, props.steps.total),
								tag = "auto-xy text-label-small text-align-x-left content-inverse-default text-truncate-end",
								sizeConstraint = textSizeConstraint,
								testId = `{props.testId}--step-indicator`,
							})
							else nil,
						Header = React.createElement(Text, {
							LayoutOrder = 2,
							Text = props.title,
							tag = "auto-xy text-title-large text-align-x-left content-inverse-emphasis text-truncate-split",
							sizeConstraint = textSizeConstraint,
							testId = `{props.testId}--header`,
						}),
						Text = if props.text and props.text ~= ""
							then React.createElement(Text, {
								LayoutOrder = 3,
								Text = props.text,
								tag = "size-full-0 auto-y text-wrap text-align-x-left text-body-medium content-inverse-default",
								testId = `{props.testId}--text`,
							})
							else nil,
					}),
					Actions = if props.actions and #props.actions > 0
						then React.createElement(View, {
							LayoutOrder = 3,
							tag = "row gap-small auto-y padding-x-medium size-full-0",
						}, coachmarkButtons)
						else nil,
				})
			)
		),
	})
end

return React.memo(React.forwardRef(Coachmark))
