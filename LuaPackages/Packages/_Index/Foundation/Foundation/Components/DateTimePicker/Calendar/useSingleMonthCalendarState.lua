local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeCalendarDayAppearanceUtilities =
	require(script.Parent.Parent.Utilities.DateTimeCalendarDayAppearanceUtilities)
local DateTimeCalendarViewUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeParsingUtilities = require(script.Parent.Parent.Utilities.DateTimeParsingUtilities)
local DateTimeRangeSelectionUtilities = require(script.Parent.Parent.Utilities.DateTimeRangeSelectionUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type DateRange = DateTimeUtilities.DateRange
type DateTimeLocalTime = DateTimeUtilities.DateTimeLocalTime
type ViewDate = DateTimeCalendarViewUtilities.ViewDate

export type SingleMonthCalendarStateProps = {
	isDateRange: boolean?,
	onSelectedDateChanged: (dateTimes: { DateTime }) -> (),
	referenceDate: DateTime?,
	selectableDateRange: DateRange?,
	selectedDates: { DateTime }?,
	showTimeList: boolean?,
	viewAnchorDate: DateTime?,
}

export type SingleMonthCalendarState = {
	currViewDate: ViewDate,
	handleDateActivated: (day: number, month: number, year: number) -> (),
	highlightDates: { DateTime },
	isDateRange: boolean,
	localSelectedDateTimes: { DateTimeLocalTime },
	navigateToNextMonth: () -> (),
	navigateToPreviousMonth: () -> (),
	onHoverEnter: (dateTime: DateTime) -> (),
	onHoverLeave: () -> (),
	onTimeListItemChanged: (item: number) -> (),
	onViewDateChanged: (viewDate: ViewDate) -> (),
	selectedDateTimes: { DateTime },
}

--[[
	State for SingleMonthCalendar. Groups:

	1. Selection — selectedDates normalization, selectedDateTimes sync, notify parent when unbound
	2. View month/year — currViewDate, navigation (dropdowns browse only; selection changes via day click)
	3. Day cell appearance — highlightDates / localSelectedDateTimes for CalendarGrid precompute
	4. Day activation — single select, or range via selectRangeEndpoint (same click cycle as DualWithPresets)
	5. Time list — SingleWithTime slot selection
]]
local function useSingleMonthCalendarState(props: SingleMonthCalendarStateProps): SingleMonthCalendarState
	local isDateRange = props.isDateRange == true

	-- 1. Selection
	-- Unbound (nil) starts empty for all variants: anchor the view via referenceDate / viewAnchorDate
	-- without highlighting a day. Range mode also needs empty so a lone date means "picking end".
	local resolvedSelectedDates = React.useMemo(
		function(): { DateTime }
			if props.selectedDates then
				return DateTimeRangeSelectionUtilities.normalizeDates({
					acceptsDateRange = isDateRange,
					dates = props.selectedDates,
				})
			end

			return {}
		end,
		{
			props.selectedDates,
			isDateRange,
		} :: { unknown }
	)

	local selectedDateTimes, setSelectedDateTimes = React.useState(resolvedSelectedDates)

	React.useEffect(function()
		setSelectedDateTimes(resolvedSelectedDates)
	end, { resolvedSelectedDates })

	React.useEffect(function()
		if props.selectedDates then
			return
		end
		props.onSelectedDateChanged(resolvedSelectedDates)
	end, { props.selectedDates, resolvedSelectedDates, props.onSelectedDateChanged } :: { unknown })

	local localSelectedDateTimes = React.useMemo(function(): { DateTimeLocalTime }
		local localTimes: { DateTimeLocalTime } = {}
		for _, dateTime in selectedDateTimes do
			table.insert(localTimes, DateTimeUtilities.toLocalTime(dateTime))
		end
		return localTimes
	end, { selectedDateTimes })

	-- 2. View month/year
	local currViewDate, setCurrViewDate = React.useState(
		DateTimeCalendarViewUtilities.toViewDate(
			DateTimeCalendarViewUtilities.resolveAnchorDate(props.selectedDates, props.referenceDate)
		)
	)

	React.useEffect(function()
		if not props.viewAnchorDate then
			return
		end
		setCurrViewDate(DateTimeCalendarViewUtilities.toViewDate(props.viewAnchorDate))
	end, { props.viewAnchorDate })

	local navigateToNextMonth = React.useCallback(function()
		local nextMonth, nextYear = DateTimeUtilities.getNextMonthInfo(currViewDate.month, currViewDate.year)
		setCurrViewDate({ month = nextMonth, year = nextYear })
	end, { currViewDate })

	local navigateToPreviousMonth = React.useCallback(function()
		local prevMonth, prevYear = DateTimeUtilities.getPrevMonthInfo(currViewDate.month, currViewDate.year)
		setCurrViewDate({ month = prevMonth, year = prevYear })
	end, { currViewDate })

	local onViewDateChanged = React.useCallback(function(viewDate: ViewDate)
		setCurrViewDate(viewDate)
	end, {})

	-- 3. Day cell appearance & selection (hover preview for start-only range picks)
	local hoveredDate, setHoveredDate = React.useState(function(): DateTime?
		return nil
	end)

	local highlightDates = React.useMemo(function(): { DateTime }
		if not isDateRange then
			return selectedDateTimes
		end
		return DateTimeCalendarDayAppearanceUtilities.resolveHighlightDates(selectedDateTimes, hoveredDate)
	end, { isDateRange, selectedDateTimes, hoveredDate } :: { unknown })

	local onHoverEnter = React.useCallback(function(dateTime: DateTime)
		if not isDateRange then
			return
		end
		setHoveredDate(dateTime)
	end, { isDateRange })

	local onHoverLeave = React.useCallback(function()
		setHoveredDate(nil)
	end, {})

	React.useEffect(function()
		if not isDateRange then
			return
		end
		if not selectedDateTimes[1] or selectedDateTimes[2] then
			setHoveredDate(nil)
		end
	end, { isDateRange, selectedDateTimes } :: { unknown })

	-- 4. Day activation
	local handleDateActivated = React.useCallback(
		function(day: number, month: number, year: number)
			local hour, minute = 0, 0
			local previousSelection = selectedDateTimes[1]
			if previousSelection then
				local selectedLocalTime = DateTimeUtilities.toLocalTime(previousSelection)
				hour = selectedLocalTime.Hour
				minute = selectedLocalTime.Minute
			end
			local dateTime = DateTime.fromLocalTime(year, month, day, hour, minute)
			if props.showTimeList then
				dateTime = DateTimeCalendarViewUtilities.roundUpToNearestHalfHour(dateTime)
			end

			setCurrViewDate({ month = month, year = year })
			setHoveredDate(nil)
			local newSelectedDateTimes = if isDateRange
				then DateTimeRangeSelectionUtilities.selectRangeEndpoint(selectedDateTimes, dateTime)
				else { dateTime }
			setSelectedDateTimes(newSelectedDateTimes)
			props.onSelectedDateChanged(newSelectedDateTimes)
		end,
		{
			isDateRange,
			props.showTimeList,
			props.onSelectedDateChanged,
			selectedDateTimes,
		} :: { unknown }
	)

	-- 5. Time list
	local onTimeListItemChanged = React.useCallback(function(item: number)
		local dateTime = DateTimeParsingUtilities.adjustForDaylightSaving(DateTime.fromUnixTimestamp(item))
		setSelectedDateTimes({ dateTime })
		props.onSelectedDateChanged({ dateTime })
	end, { props.onSelectedDateChanged })

	return {
		currViewDate = currViewDate,
		handleDateActivated = handleDateActivated,
		highlightDates = highlightDates,
		isDateRange = isDateRange,
		localSelectedDateTimes = localSelectedDateTimes,
		navigateToNextMonth = navigateToNextMonth,
		navigateToPreviousMonth = navigateToPreviousMonth,
		onHoverEnter = onHoverEnter,
		onHoverLeave = onHoverLeave,
		onTimeListItemChanged = onTimeListItemChanged,
		onViewDateChanged = onViewDateChanged,
		selectedDateTimes = selectedDateTimes,
	}
end

return useSingleMonthCalendarState
