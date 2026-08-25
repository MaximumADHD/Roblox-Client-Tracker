local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeCalendarConstants = require(script.Parent.Utilities.DateTimeCalendarConstants)
local DateTimeLayoutUtilities = require(script.Parent.Utilities.DateTimeLayoutUtilities)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Divider = require(Foundation.Components.Divider)
local Translator = require(Foundation.Utility.Localization.Translator)
local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)

type SectionedLayout = "dual" | "singleWithTime"

type Props = {
	children: React.ReactNode,
	isApplyButtonDisabled: boolean,
	isResetButtonDisabled: boolean?,
	isSectioned: boolean?,
	onApply: () -> (),
	onCancel: () -> (),
	onReset: (() -> ())?,
	sectionedLayout: SectionedLayout?,
	showReset: boolean?,
	testId: string?,
}

local function DateTimePickerPanel(props: Props)
	local tokens = useTokens()
	local scaledPaneWidth = useScaledValue(DateTimeLayoutUtilities.PANE_WIDTH)
	local scaledCalendarWidth = useScaledValue(DateTimeLayoutUtilities.CALENDAR_WIDTH)
	local scaledTimeListWidth = useScaledValue(DateTimeLayoutUtilities.TIME_LIST_WIDTH)

	local applyButton = React.createElement(Button, {
		isDisabled = props.isApplyButtonDisabled,
		LayoutOrder = 2,
		onActivated = props.onApply,
		testId = `{props.testId}--apply-button`,
		text = Translator:FormatByKey("CommonUI.Controls.Action.Apply"),
		variant = ButtonVariant.Emphasis,
	})

	local cancelButton = React.createElement(Button, {
		LayoutOrder = 3,
		onActivated = props.onCancel,
		testId = `{props.testId}--cancel-button`,
		text = Translator:FormatByKey("CommonUI.Controls.Action.Cancel"),
		variant = ButtonVariant.Standard,
	})

	local actionsPadding = if props.isSectioned then "padding-x-large padding-y-large" else "padding-top-large"

	local actionBar = if props.showReset and props.onReset
		then React.createElement(View, {
			LayoutOrder = 3,
			tag = `row align-y-center gap-small size-full-0 auto-y {actionsPadding}`,
		}, {
			ResetButton = React.createElement(Button, {
				isDisabled = props.isResetButtonDisabled,
				LayoutOrder = 1,
				onActivated = props.onReset,
				testId = `{props.testId}--reset-button`,
				text = Translator:FormatByKey("CommonUI.Controls.Action.ResetAll"),
				variant = ButtonVariant.Utility,
			}),
			PrimaryActions = React.createElement(View, {
				LayoutOrder = 2,
				tag = "row align-x-right grow gap-small auto-y",
			}, {
				ApplyButton = applyButton,
				CancelButton = cancelButton,
			}),
		})
		else React.createElement(View, {
			LayoutOrder = 3,
			tag = `row flex-fill gap-small size-full-0 auto-y {actionsPadding}`,
		}, {
			ApplyButton = applyButton,
			CancelButton = cancelButton,
		})

	local dualSectionedWidth = 2 * scaledPaneWidth + 3 * tokens.Padding.Large
	local singleWithTimeSectionedWidth = DateTimeLayoutUtilities.computeSingleWithTimeLayout(
		scaledCalendarWidth,
		scaledTimeListWidth,
		tokens,
		DateTimeCalendarConstants.NUM_CALENDAR_GRID_ROWS
	).contentWidth

	local panelWidth = if props.sectionedLayout == "dual"
		then dualSectionedWidth
		elseif props.sectionedLayout == "singleWithTime" then singleWithTimeSectionedWidth
		else nil

	local isSectioned = props.isSectioned == true
	local isSizedSection = isSectioned and props.sectionedLayout ~= nil

	return React.createElement(View, {
		Size = if panelWidth then UDim2.fromOffset(panelWidth, 0) else nil,
		tag = {
			["col"] = true,
			["bg-surface-200"] = true,
			["stroke-default"] = true,
			["radius-large"] = true,
			["auto-y"] = isSizedSection,
			["auto-xy"] = not isSizedSection,
			["clip"] = isSectioned,
			["padding-large"] = not isSectioned,
		},
	}, {
		Content = props.children,
		ActionsDivider = if props.isSectioned
			then React.createElement(Divider, {
				LayoutOrder = 2,
			})
			else nil,
		Actions = actionBar,
	})
end

return DateTimePickerPanel
