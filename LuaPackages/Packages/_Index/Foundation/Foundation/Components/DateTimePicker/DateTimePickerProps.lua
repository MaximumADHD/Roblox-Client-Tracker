local Foundation = script:FindFirstAncestor("Foundation")

local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)
local Types = require(Foundation.Components.Types)

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
	-- Placeholder shown when the input is empty. Beta only; ignored when FoundationDateTimePickerBetaUpdate is off.
	placeholder: string?,
	-- Month/year the calendar opens to when nothing is selected. Beta only.
	referenceDate: DateTime?,
	-- Selectable date range (inclusive). Note, these dates will be rounded to the start of the day for date-only comparison
	selectableDateRange: DateTimeUtilities.DateRange?,
	-- Selection behavior
	selection: Types.Selection?,
	selectionGroup: Types.Bindable<boolean>? | Types.SelectionGroup?,
	-- Variant of the date time picker
	variant: DateTimePickerVariantEnum.DateTimePickerVariant?,
	-- Width of the text input component
	width: UDim?,
} & Types.CommonProps

return {}
