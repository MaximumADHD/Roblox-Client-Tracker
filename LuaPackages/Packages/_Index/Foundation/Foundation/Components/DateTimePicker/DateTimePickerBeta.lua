local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local DateTimePickerCalendarContent = require(script.Parent.DateTimePickerCalendarContent)
local DateTimePickerPanel = require(script.Parent.DateTimePickerPanel)
local DateTimePickerPropsModule = require(script.Parent.DateTimePickerProps)
type DateTimePickerProps = DateTimePickerPropsModule.DateTimePickerProps
local useDateTimePickerState = require(script.Parent.useDateTimePickerState)

local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
type DateTimePickerVariant = DateTimePickerVariantEnum.DateTimePickerVariant
local InputSize = require(Foundation.Enums.InputSize)
local Popover = require(Foundation.Components.Popover)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local TextInput = require(Foundation.Components.TextInput)
local Translator = require(Foundation.Utility.Localization.Translator)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local defaultProps = {
	testId = "--foundation-date-time-picker",
	variant = DateTimePickerVariantEnum.Single,
}

local function DateTimePickerBeta(dateTimePickerProps: DateTimePickerProps): React.ReactNode
	local props: DateTimePickerProps = withDefaults(dateTimePickerProps, defaultProps)
	local tokens = useTokens()
	local variant: DateTimePickerVariant = props.variant or DateTimePickerVariantEnum.Single
	local isPresets = variant == DateTimePickerVariantEnum.DualWithPresets
	local isTime = variant == DateTimePickerVariantEnum.SingleWithTime
	local isSectioned = isPresets or isTime

	local state = useDateTimePickerState(props)

	return React.createElement(Popover.Root, {
		isOpen = state.isOpen,
		testId = props.testId,
	}, {
		DateInput = React.createElement(
			TextInput,
			withCommonProps(props, {
				hasError = props.hasError,
				hint = props.hint,
				iconTrailing = {
					name = IconName.Calendar,
					onActivated = state.showDateTimePicker,
				},
				isDisabled = props.isDisabled,
				isRequired = props.isRequired,
				key = "date-input",
				label = props.label,
				onChanged = state.updateInputText,
				onFocusGained = state.onFocusGained,
				onFocusLost = state.onFocusLost,
				placeholder = props.placeholder or Translator:FormatByKey("CommonUI.Controls.Label.SelectDate"),
				ref = state.textInputRef,
				selectableDateRange = props.selectableDateRange,
				size = InputSize.Medium,
				testId = `{props.testId}--text-input`,
				text = state.inputText,
				width = props.width,
			})
		),
		Anchor = React.createElement(Popover.Anchor, {
			anchorRef = state.textInputRef,
		}),
		PopoverContent = React.createElement(Popover.Content, {
			align = PopoverAlign.Start,
			hasArrow = false,
			onPressedOutside = state.closeDateTimePicker,
			selection = props.selection,
			selectionGroup = props.selectionGroup,
			side = {
				offset = tokens.Stroke.Standard + tokens.Padding.Small,
				position = PopoverSide.Bottom,
			},
		}, state.isOpen and React.createElement(
			DateTimePickerPanel,
			{
				isApplyButtonDisabled = state.isApplyButtonDisabled,
				isResetButtonDisabled = state.isResetButtonDisabled,
				isSectioned = isSectioned,
				onApply = state.onApply,
				onCancel = state.onCancel,
				onReset = if isSectioned then state.onReset else nil,
				sectionedLayout = if isPresets then "dual" elseif isTime then "singleWithTime" else nil,
				showReset = isSectioned,
				testId = props.testId,
			},
			React.createElement(DateTimePickerCalendarContent, {
				onDayActivated = state.onDayActivated,
				onPresetSelected = state.onPresetSelected,
				onSelectedDatesChanged = state.onSelectedDatesChanged,
				referenceDate = props.referenceDate,
				selectableDateRange = props.selectableDateRange,
				selectedDates = state.selectedDates,
				testId = props.testId,
				variant = variant,
				viewAnchorDate = state.viewAnchorDate,
			})
		)),
	})
end

return React.memo(DateTimePickerBeta)
