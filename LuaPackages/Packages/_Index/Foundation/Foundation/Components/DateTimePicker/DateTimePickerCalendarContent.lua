local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeUtilities = require(script.Parent.DateTimeUtilities)
local SingleMonthCalendar = require(script.Parent.Calendar.SingleMonthCalendar)
type DateRange = DateTimeUtilities.DateRange

local DateTimePickerVariantEnum = require(Foundation.Enums.DateTimePickerVariant)
type DateTimePickerVariant = DateTimePickerVariantEnum.DateTimePickerVariant
local Divider = require(Foundation.Components.Divider)
local View = require(Foundation.Components.View)

export type DateTimePickerCalendarContentProps = {
	-- Day click in DualWithPresets (TwoMonthCalendar).
	onDayActivated: (dateTime: DateTime) -> (),
	-- Preset range chip selected.
	onPresetSelected: (range: DateRange) -> (),
	-- Selection changed in SingleMonthCalendar.
	onSelectedDatesChanged: (dates: { DateTime }) -> (),
	-- Fallback month when nothing is selected.
	referenceDate: DateTime?,
	-- Inclusive bounds for selectable days.
	selectableDateRange: DateRange?,
	-- Current draft selection.
	selectedDates: { DateTime }?,
	testId: string?,
	-- Drives DualWithPresets layout vs SingleMonthCalendar (and time list).
	variant: DateTimePickerVariant,
	-- Month the calendar panes should display.
	viewAnchorDate: DateTime?,
}

local function DateTimePickerCalendarContent(props: DateTimePickerCalendarContentProps): React.ReactNode
	local calendarTestId = `{props.testId}--calendar`

	if props.variant == DateTimePickerVariantEnum.DualWithPresets then
		local TwoMonthCalendar = require(script.Parent.Calendar.TwoMonthCalendar)
		local DateRangePresets = require(script.Parent.Presets.DateRangePresets)
		return React.createElement(View, {
			tag = "col size-full-0 auto-y",
		}, {
			Calendar = React.createElement(TwoMonthCalendar, {
				LayoutOrder = 1,
				onDayActivated = props.onDayActivated,
				referenceDate = props.referenceDate,
				selectableDateRange = props.selectableDateRange,
				selectedDates = props.selectedDates,
				testId = calendarTestId,
				viewAnchorDate = props.viewAnchorDate,
			}),
			PresetsDivider = React.createElement(Divider, {
				LayoutOrder = 2,
			}),
			PresetsBar = React.createElement(View, {
				LayoutOrder = 3,
				tag = "row size-full-0 auto-y padding-x-large padding-y-medium",
			}, {
				Presets = React.createElement(DateRangePresets, {
					LayoutOrder = 1,
					onPresetSelected = props.onPresetSelected,
					referenceDate = props.referenceDate,
					selectableDateRange = props.selectableDateRange,
					selectedDates = props.selectedDates,
					testId = `{calendarTestId}--presets`,
				}),
			}),
		})
	end

	return React.createElement(SingleMonthCalendar, {
		isDateRange = props.variant == DateTimePickerVariantEnum.Dual,
		LayoutOrder = 1,
		onSelectedDateChanged = props.onSelectedDatesChanged,
		referenceDate = props.referenceDate,
		selectableDateRange = props.selectableDateRange,
		selectedDates = props.selectedDates,
		showTimeList = props.variant == DateTimePickerVariantEnum.SingleWithTime,
		testId = calendarTestId,
		viewAnchorDate = props.viewAnchorDate,
	})
end

return DateTimePickerCalendarContent
