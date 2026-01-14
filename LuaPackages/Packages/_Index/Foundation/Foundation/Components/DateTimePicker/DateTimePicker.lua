local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Calendar = require(script.Parent.Calendar)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Flags = require(Foundation.Utility.Flags)
local InputSize = require(Foundation.Enums.InputSize)
local LocalizationService = require(Foundation.Utility.Wrappers).Services.LocalizationService
local Popover = require(Foundation.Components.Popover)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local TextInput = require(Foundation.Components.TextInput)
local Translator = require(Foundation.Utility.Localization.Translator)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local DateTimePickerVariant = require(Foundation.Enums.DateTimePickerVariant)
type DateTimePickerVariant = DateTimePickerVariant.DateTimePickerVariant

type Bindable<T> = Types.Bindable<T>
type Selection = Types.Selection
type SelectionGroup = Types.SelectionGroup

export type DateTimePickerProps = {
	-- Default dates selected. If not provided, the current date will be used
	-- If variant is Dual, then the first date will be used as the start date and the second date (if provided) will be used as the end date.
	defaultDates: (DateTime | { DateTime })?,
	-- Whether the input has an error
	hasError: boolean?,
	-- Hint text for the text input
	hint: string?,
	-- Whether the input is disabled
	isDisabled: boolean?,
	-- Whether the input is required
	isRequired: boolean?,
	-- Label used for the text input
	label: string,
	-- On input text change. dateTimes are nil if not valid DateTimes. endDateTime is the end date if variant is Dual
	onChanged: (startDateTime: DateTime?, endDateTime: DateTime?) -> (),
	-- Selectable date range (inclusive). Note, these dates will be rounded to the start of the day for date-only comparison
	selectableDateRange: {
		startDate: DateTime,
		endDate: DateTime,
	}?,
	-- Variant of the date time picker
	variant: DateTimePickerVariant?,
	-- Width of the text input component
	width: UDim?,

	-- Selection behavior
	selection: Types.Selection?,
	selectionGroup: Types.Bindable<boolean>? | Types.SelectionGroup?,
} & Types.CommonProps

local defaultProps = {
	defaultDates = { DateTime.now() },
	variant = DateTimePickerVariant.Single,
	testId = "--foundation-date-time-picker",
}

local function DateTimePicker(dateTimePickerProps: DateTimePickerProps)
	local props: DateTimePickerProps = withDefaults(dateTimePickerProps, defaultProps)

	local tokens = useTokens()
	local isOpen, setIsOpen = React.useState(false)
	local textInputRef = React.useRef(nil)

	if props.defaultDates and typeof(props.defaultDates) ~= "table" then
		props.defaultDates = { props.defaultDates :: DateTime }
	end

	local inputText, setInputText = React.useState(
		if Flags.FoundationDateTimePickerDefaultInputText and props.defaultDates
			then if props.variant == DateTimePickerVariant.Dual
				then `{DateTimeUtilities.formatLocalTime((props.defaultDates :: { DateTime })[1])} - {if (
						props.defaultDates :: { DateTime }
					)[2]
					then DateTimeUtilities.formatLocalTime((props.defaultDates :: { DateTime })[2])
					else ""}`
				else DateTimeUtilities.formatLocalTime(
					(props.defaultDates :: { DateTime })[1],
					props.variant == DateTimePickerVariant.SingleWithTime
				)
			else ""
	)

	-- DateTime objects that we track under the hood to monitor valid calendar changes
	local calendarDates, setCalendarDates = React.useState(props.defaultDates)

	local closeDateTimePicker = React.useCallback(function()
		setIsOpen(false)
	end, {})

	local showDateTimePicker = React.useCallback(function()
		setIsOpen(true)
	end, {})

	-- Since we allow user input we need to parse the text to a DateTime object before calling onChanged
	local updateInputText = React.useCallback(function(txt: string)
		setInputText(txt)

		-- Don't call onChanged for empty or whitespace-only input (prevents unwanted calls on mount)
		if txt:match("^%s*$") then
			return
		end

		if props.variant == DateTimePickerVariant.Dual then
			local dateTimes = txt:split("-")
			local dateTime1 = DateTimeUtilities.getDateTimeFromText(dateTimes[1])
			local dateTime2 = DateTimeUtilities.getDateTimeFromText(dateTimes[2])
			props.onChanged(dateTime1, dateTime2)
		else
			-- trim whitespace from the start and end of the text
			local trimmedText = txt:match("^%s*(.-)%s*$") or ""
			local dateTime = DateTimeUtilities.getDateTimeFromText(trimmedText)
			props.onChanged(dateTime)
		end
	end, { props.onChanged })

	-- We update calendarDate only when it is a valid DateTime.
	-- Thus we can directly call onChanged when apply is activated
	local onApplyActivated = React.useCallback(
		function()
			if props.variant == DateTimePickerVariant.Dual then
				local formattedDate = if Flags.FoundationDateTimePickerTimeVariantEnabled
					then DateTimeUtilities.formatLocalTime(calendarDates[1] :: DateTime)
					else (calendarDates[1] :: DateTime):FormatLocalTime(
						DateTimeUtilities.DATE_COMPOSITE_TOKEN,
						LocalizationService.RobloxLocaleId
					)
				local formattedDate2 = if calendarDates[2]
					then if Flags.FoundationDateTimePickerTimeVariantEnabled
						then DateTimeUtilities.formatLocalTime(calendarDates[2] :: DateTime)
						else (calendarDates[2] :: DateTime):FormatLocalTime(
							DateTimeUtilities.DATE_COMPOSITE_TOKEN,
							LocalizationService.RobloxLocaleId
						)
					else ""
				setInputText(formattedDate .. " - " .. formattedDate2)
			else
				setInputText(
					if Flags.FoundationDateTimePickerTimeVariantEnabled
						then DateTimeUtilities.formatLocalTime(
							calendarDates[1] :: DateTime,
							props.variant == DateTimePickerVariant.SingleWithTime
						)
						else calendarDates[1]:FormatLocalTime(
							DateTimeUtilities.DATE_COMPOSITE_TOKEN,
							LocalizationService.RobloxLocaleId
						)
				)
			end

			if not Flags.FoundationDateTimePickerTimeVariantEnabled then
				props.onChanged(calendarDates[1], calendarDates[2])
			end
			closeDateTimePicker()
		end,
		{
			calendarDates,
			closeDateTimePicker,
			if not Flags.FoundationDateTimePickerTimeVariantEnabled then props.onChanged else nil,
		} :: { unknown }
	)

	local isApplyButtonDisabled = function()
		if
			props.variant == DateTimePickerVariant.Single
			or (
				Flags.FoundationDateTimePickerTimeVariantEnabled
				and props.variant == DateTimePickerVariant.SingleWithTime
			)
		then
			return calendarDates[1] == nil
		elseif props.variant == DateTimePickerVariant.Dual then
			return calendarDates[1] == nil
				or calendarDates[2] == nil
				or calendarDates[1].UnixTimestamp > calendarDates[2].UnixTimestamp
		end

		return false
	end

	return React.createElement(Popover.Root, {
		isOpen = isOpen,
		testId = props.testId,
	}, {
		DateInput = if Flags.FoundationDateTimePickerAnchorBugFixEnabled
			then React.createElement(
				TextInput,
				withCommonProps(props, {
					hasError = props.hasError,
					hint = props.hint,
					iconTrailing = {
						name = IconName.Calendar,
						onActivated = showDateTimePicker,
					},
					isDisabled = props.isDisabled,
					isRequired = props.isRequired,
					key = "date-input",
					label = props.label,
					onChanged = updateInputText,
					onFocusGained = showDateTimePicker,
					placeholder = Translator:FormatByKey("CommonUI.Controls.Label.SelectDate"),
					ref = textInputRef,
					selectableDateRange = props.selectableDateRange,
					size = InputSize.Medium,
					text = inputText,
					testId = `{props.testId}--text-input`,
					width = props.width,
				})
			)
			else React.createElement(Popover.Anchor, nil, {
				React.createElement(TextInput, {
					hasError = props.hasError,
					hint = props.hint,
					iconTrailing = {
						name = IconName.Calendar,
						onActivated = showDateTimePicker,
					},
					isDisabled = props.isDisabled,
					isRequired = props.isRequired,
					key = "date-input",
					label = props.label,
					onChanged = updateInputText,
					onFocusGained = showDateTimePicker,
					placeholder = Translator:FormatByKey("CommonUI.Controls.Label.SelectDate"),
					selectableDateRange = props.selectableDateRange,
					size = InputSize.Medium,
					text = inputText,
					width = props.width,
					testId = `{props.testId}--text-input`,
				}),
			}),
		Anchor = if Flags.FoundationDateTimePickerAnchorBugFixEnabled
			then React.createElement(Popover.Anchor, {
				anchorRef = textInputRef,
			})
			else nil,
		Calendar = React.createElement(Popover.Content, {
			hasArrow = false,
			onPressedOutside = closeDateTimePicker,
			side = {
				position = PopoverSide.Bottom,
				offset = tokens.Stroke.Standard + tokens.Padding.Small,
			},
			selection = props.selection,
			selectionGroup = props.selectionGroup,
		}, isOpen and React.createElement(View, {
			tag = "padding-large col stroke-default radius-medium auto-xy",
		}, {
			Calendar = React.createElement(Calendar, {
				defaultDates = calendarDates,
				LayoutOrder = 1,
				onSelectedDateChanged = setCalendarDates,
				selectableDateRange = props.selectableDateRange,
				showStartDateTimeCalendarInput = if Flags.FoundationDateTimePickerTimeVariantEnabled
					then props.variant ~= DateTimePickerVariant.SingleWithTime
					else props.variant == DateTimePickerVariant.Single or props.variant == DateTimePickerVariant.Dual,
				showEndDateTimeCalendarInput = props.variant == DateTimePickerVariant.Dual,
				showTimeDropdown = Flags.FoundationDateTimePickerTimeVariantEnabled
					and props.variant == DateTimePickerVariant.SingleWithTime,
				testId = `--foundation-calendar`,
			}),
			BottomBar = React.createElement(View, {
				LayoutOrder = 2,
				tag = "row size-full-0 auto-y flex-fill gap-small padding-top-large",
			}, {
				ApplyButton = React.createElement(Button, {
					isDisabled = isApplyButtonDisabled(),
					onActivated = onApplyActivated,
					text = Translator:FormatByKey("CommonUI.Controls.Action.Apply"),
					variant = ButtonVariant.Emphasis,
					testId = `{props.testId}--apply-button`,
				}),
				CancelButton = React.createElement(Button, {
					onActivated = closeDateTimePicker,
					text = Translator:FormatByKey("CommonUI.Controls.Action.Cancel"),
					variant = ButtonVariant.Standard,
					testId = `{props.testId}--cancel-button`,
				}),
			}),
		})),
	})
end

return React.memo(DateTimePicker)
