--[[
	Shared layout widths for DateTimePicker.

	Kept exported (not inlined in Panel / TwoMonthCalendar / Calendar / TimeList)
	so shell sizing and child layout stay locked to the same values. Duplicating
	these numbers locally is easy to drift — e.g. Panel computes outer width
	while TwoMonthCalendar and TimeList own their inner widths.
]]

local Foundation = script:FindFirstAncestor("Foundation")

local DateTimeCalendarConstants = require(script.Parent.DateTimeCalendarConstants)
local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local CALENDAR_WIDTH = 272
local DAYS_PER_WEEK = DateTimeCalendarConstants.DAYS_PER_WEEK
local PANE_WIDTH = 280
local TIME_LIST_WIDTH = 132

export type SingleWithTimeLayout = {
	bodyHeight: number,
	calendarColumnWidth: number,
	contentWidth: number,
	gridHeight: number,
	timeListColumnWidth: number,
	timeListHeight: number,
}

-- Column/body sizes for Calendar + TimeList side-by-side layout.
local function computeSingleWithTimeLayout(
	scaledCalendarWidth: number,
	scaledTimeListWidth: number,
	tokens: Tokens,
	numGridRows: number
): SingleWithTimeLayout
	local paddingLarge = tokens.Padding.Large
	local cellSize = scaledCalendarWidth / DAYS_PER_WEEK
	local gridHeight = numGridRows * cellSize
	local headerHeight = tokens.Size.Size_800 + 2 * tokens.Padding.Small
	local bodyHeight = 2 * paddingLarge + headerHeight + tokens.Gap.Small + gridHeight

	local calendarColumnWidth = scaledCalendarWidth + 2 * paddingLarge
	local timeListColumnWidth = scaledTimeListWidth + 2 * paddingLarge

	return {
		bodyHeight = bodyHeight,
		calendarColumnWidth = calendarColumnWidth,
		contentWidth = calendarColumnWidth + tokens.Stroke.Standard + timeListColumnWidth,
		gridHeight = gridHeight,
		timeListColumnWidth = timeListColumnWidth,
		timeListHeight = bodyHeight - 2 * paddingLarge,
	}
end

return {
	CALENDAR_WIDTH = CALENDAR_WIDTH,
	PANE_WIDTH = PANE_WIDTH,
	TIME_LIST_WIDTH = TIME_LIST_WIDTH,
	computeSingleWithTimeLayout = computeSingleWithTimeLayout,
}
