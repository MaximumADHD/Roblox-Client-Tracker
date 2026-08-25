local Foundation = script:FindFirstAncestor("Foundation")

local DateTimeCalendarConstants = require(script.Parent.DateTimeCalendarConstants)
local DateTimeCalendarViewUtilities = require(script.Parent.DateTimeCalendarViewUtilities)
local DateTimePickerCalendarDayKeyPrefix = require(Foundation.Enums.DateTimePickerCalendarDayKeyPrefix)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type CalendarDayKeyPrefix = DateTimePickerCalendarDayKeyPrefix.DateTimePickerCalendarDayKeyPrefix
type ViewDate = DateTimeCalendarViewUtilities.ViewDate

local DAYS_PER_WEEK = DateTimeCalendarConstants.DAYS_PER_WEEK
local NUM_ELEMENTS_IN_DATES_GRID = DateTimeCalendarConstants.NUM_ELEMENTS_IN_DATES_GRID
local NUM_NON_DAY_ELEMENTS = DateTimeCalendarConstants.NUM_NON_DAY_ELEMENTS
local NUM_WEEKDAY_HEADERS = DateTimeCalendarConstants.NUM_WEEKDAY_HEADERS

--[[
	Pure day-grid config builders for calendar panes.

	buildCalendarDayConfigs — fixed-height 6-week grid with prev/current/next month
	days (CalendarGrid). Pure reimplementation of the fill loop in legacy
	Calendar.lua (search NUM_ELEMENTS_IN_DATES_GRID); remove the legacy copy when
	the flag is cleaned up.

	buildTwoMonthPaneCellConfigs — variable-height pane that pads with empty
	spacers and only completes the final week (TwoMonthCalendarPane).

	Element budget for the fixed dates grid:
		- 1 UIGridLayout element
		- 7 date headers
		- 7 days per week for 6 weeks
	UIGridLayout does not occupy a grid cell, so the visible grid is 7 rows (1 header + 6 weeks).
]]

export type DayCellConfig = {
	applyEmphasis: boolean?,
	day: number,
	keyPrefix: CalendarDayKeyPrefix,
	LayoutOrder: number,
	month: number,
	year: number,
}

export type PaneCellConfig = {
	-- nil day means an empty spacer cell (leading/trailing padding).
	day: number?,
	key: string,
	LayoutOrder: number,
	month: number?,
	year: number?,
}

local function countLeadingPadDays(month: number, year: number): number
	local firstDayOfWeek = DateTimeUtilities.getFirstDayOfWeek(month, year)
	-- Fixed-height grids need a full prev-month week when the month starts on Sunday.
	return if firstDayOfWeek == 0 then DAYS_PER_WEEK else firstDayOfWeek
end

local function countTrailingEmptyDays(leadingEmptyDays: number, daysInMonth: number): number
	return (DAYS_PER_WEEK - ((leadingEmptyDays + daysInMonth) % DAYS_PER_WEEK)) % DAYS_PER_WEEK
end

local function buildCalendarDayConfigs(viewDate: ViewDate): { DayCellConfig }
	local configs = {} :: { DayCellConfig }
	local index = NUM_WEEKDAY_HEADERS + 1

	local prevMonth, prevYear = DateTimeUtilities.getPrevMonthInfo(viewDate.month, viewDate.year)
	local prevMonthNumDays = DateTimeUtilities.getDaysInMonth(prevMonth, prevYear)
	local prevDaysToShow = countLeadingPadDays(viewDate.month, viewDate.year)

	for i = 1, prevDaysToShow do
		local day = prevMonthNumDays - prevDaysToShow + i
		table.insert(configs, {
			day = day,
			keyPrefix = DateTimePickerCalendarDayKeyPrefix.PrevMonth,
			LayoutOrder = index,
			month = prevMonth,
			year = prevYear,
		})
		index += 1
	end

	for day = 1, DateTimeUtilities.getDaysInMonth(viewDate.month, viewDate.year) do
		table.insert(configs, {
			applyEmphasis = true,
			day = day,
			keyPrefix = DateTimePickerCalendarDayKeyPrefix.CurrentMonth,
			LayoutOrder = index,
			month = viewDate.month,
			year = viewDate.year,
		})
		index += 1
	end

	local lastDayOfWeek = DateTimeUtilities.getLastDayOfWeek(viewDate.month, viewDate.year)
	local nextMonth, nextYear = DateTimeUtilities.getNextMonthInfo(viewDate.month, viewDate.year)
	local nextDaysToShow = DAYS_PER_WEEK - (lastDayOfWeek + 1)

	local elementsSoFar = NUM_NON_DAY_ELEMENTS + #configs
	if nextDaysToShow + elementsSoFar < NUM_ELEMENTS_IN_DATES_GRID then
		nextDaysToShow += NUM_ELEMENTS_IN_DATES_GRID - elementsSoFar - nextDaysToShow
	end

	for day = 1, nextDaysToShow do
		table.insert(configs, {
			day = day,
			keyPrefix = DateTimePickerCalendarDayKeyPrefix.NextMonth,
			LayoutOrder = index,
			month = nextMonth,
			year = nextYear,
		})
		index += 1
	end

	return configs
end

local function buildTwoMonthPaneCellConfigs(month: number, year: number): { PaneCellConfig }
	local configs = {} :: { PaneCellConfig }
	local LayoutOrder = NUM_WEEKDAY_HEADERS + 1

	-- Column alignment only: Sunday (0) needs zero spacers, not a blank week.
	local leadingEmptyDays = DateTimeUtilities.getFirstDayOfWeek(month, year)
	for i = 1, leadingEmptyDays do
		table.insert(configs, {
			key = `lead-{i}`,
			LayoutOrder = LayoutOrder,
		})
		LayoutOrder += 1
	end

	local daysInMonth = DateTimeUtilities.getDaysInMonth(month, year)
	for day = 1, daysInMonth do
		table.insert(configs, {
			day = day,
			key = `day-{day}`,
			LayoutOrder = LayoutOrder,
			month = month,
			year = year,
		})
		LayoutOrder += 1
	end

	for i = 1, countTrailingEmptyDays(leadingEmptyDays, daysInMonth) do
		table.insert(configs, {
			key = `trail-{i}`,
			LayoutOrder = LayoutOrder,
		})
		LayoutOrder += 1
	end

	return configs
end

return {
	buildCalendarDayConfigs = buildCalendarDayConfigs,
	buildTwoMonthPaneCellConfigs = buildTwoMonthPaneCellConfigs,
}
