local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local Calendar = require(script.Parent.Calendar)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)

local Button = require(Foundation.Components.Button)
local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
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

type DateTimePickerVariant = DateTimePickerVariantEnum.DateTimePickerVariant

export type DateTimePickerProps = {
	-- Default selected date. If not provided, the current date will be used
	defaultSelectedDate: DateTime?,

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

	-- On input text change. dateTime is nil if not a valid DateTime
	onChanged: (dateTime: DateTime?) -> (),

	-- Selectable date range (inclusive). Note, these dates will be rounded to the start of the day for date-only comparison
	selectableDateRange: {
		startDate: DateTime,
		endDate: DateTime,
	}?,

	-- Variant of the date time picker
	variant: DateTimePickerVariant?,

	-- Width of the text input component
	width: UDim?,
} & Types.CommonProps

local defaultProps = {
	defaultSelectedDate = DateTime.now(),
	variant = DateTimePickerVariantEnum.Single,
}

local DateTimePicker = function(dateTimePickerProps: DateTimePickerProps)
	local props = withDefaults(dateTimePickerProps, defaultProps)

	local tokens = useTokens()
	local inputText, setInputText = React.useState("")
	local isOpen, setIsOpen = React.useState(false)

	-- DateTime object that we track under the hood to monitor valid calendar changes
	local calendarDate, setCalendarDate = React.useState(props.defaultSelectedDate)

	local closeDateTimePicker = React.useCallback(function()
		setIsOpen(false)
	end, {})

	local showDateTimePicker = React.useCallback(function()
		setIsOpen(true)
	end, {})

	-- Since we allow user input we need to parse the text to a DateTime object before calling onChanged
	local updateInputText = React.useCallback(function(txt: string)
		setInputText(txt)

		local dateTime = DateTimeUtilities.getDateTimeFromText(txt)
		props.onChanged(dateTime)
	end, {})

	-- We update calendarDate only when it is a valid DateTime.
	-- Thus we can directly call onChanged when apply is activated
	local onApplyActivated = React.useCallback(function()
		props.onChanged(calendarDate)

		setInputText(calendarDate:FormatLocalTime("L", LocalizationService.RobloxLocaleId))

		closeDateTimePicker()
	end, { calendarDate, closeDateTimePicker, props.onChanged } :: { any })

	return React.createElement(View, withCommonProps(props, {}), {
		DateTimePicker = React.createElement(Popover.Root, {
			isOpen = isOpen,
		}, {
			DateInput = React.createElement(Popover.Anchor, nil, {
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
					text = inputText,
					width = props.width,
					testId = "--foundation-date-time-picker-text-input",
				}),
			}),
			Calendar = React.createElement(Popover.Content, {
				hasArrow = false,
				onPressedOutside = closeDateTimePicker,
				side = {
					position = PopoverSide.Bottom,
					offset = tokens.Stroke.Standard + tokens.Padding.Small,
				},
			}, isOpen and React.createElement(View, {
				tag = "padding-large col auto-xy stroke-default radius-medium",
			}, {
				Calendar = React.createElement(Calendar, {
					defaultSelectedDate = props.defaultSelectedDate,
					LayoutOrder = 1,
					onSelectedDateChanged = setCalendarDate,
					selectableDateRange = props.selectableDateRange,
					showCalendarInput = props.variant == DateTimePickerVariantEnum.Single,
				}),
				BottomBar = React.createElement(View, {
					LayoutOrder = 2,
					tag = "row size-full-0 auto-y flex-fill gap-small padding-top-large",
				}, {
					ApplyButton = React.createElement(Button, {
						onActivated = onApplyActivated,
						text = Translator:FormatByKey("CommonUI.Controls.Action.Apply"),
						variant = ButtonVariant.Emphasis,
						testId = "--foundation-date-time-picker-apply-button",
					}),
					CancelButton = React.createElement(Button, {
						onActivated = closeDateTimePicker,
						text = Translator:FormatByKey("CommonUI.Controls.Action.Cancel"),
						variant = ButtonVariant.Standard,
						testId = "--foundation-date-time-picker-cancel-button",
					}),
				}),
			})),
		}),
	})
end

return React.memo(DateTimePicker)
