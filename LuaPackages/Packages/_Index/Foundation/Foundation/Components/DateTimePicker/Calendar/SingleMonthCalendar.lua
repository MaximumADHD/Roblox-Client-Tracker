local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CalendarGrid = require(script.Parent.CalendarGrid).CalendarGrid
local CalendarHeader = require(script.Parent.CalendarHeader)
local DateTimeCalendarConstants = require(script.Parent.Parent.Utilities.DateTimeCalendarConstants)
local DateTimeCalendarViewUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeLayoutUtilities = require(script.Parent.Parent.Utilities.DateTimeLayoutUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type DateRange = DateTimeUtilities.DateRange

local TimeList = require(script.Parent.Parent.Time.TimeList)
local View = require(Foundation.Components.View)
local useSingleMonthCalendarState = require(script.Parent.useSingleMonthCalendarState)
type SingleMonthCalendarState = useSingleMonthCalendarState.SingleMonthCalendarState
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local withDefaults = require(Foundation.Utility.withDefaults)

type Props = {
	-- Range selection mode (start + end) vs single date.
	isDateRange: boolean?,
	LayoutOrder: number?,
	onSelectedDateChanged: (dateTimes: { DateTime }) -> (),
	-- Fallback month when nothing is selected.
	referenceDate: DateTime?,
	selectableDateRange: DateRange?,
	selectedDates: { DateTime }?,
	-- Shows the time list column beside the calendar.
	showTimeList: boolean?,
	testId: string?,
	-- Month the calendar should display (controlled view).
	viewAnchorDate: DateTime?,
}

type CalendarPaneProps = {
	gridSize: UDim2?,
	LayoutOrder: number?,
	-- testId on the outer column View.
	rootTestId: string?,
	scaledCalendarWidth: number,
	selectableDateRange: DateRange?,
	showTimeList: boolean?,
	Size: UDim2?,
	state: SingleMonthCalendarState,
	-- Forwarded to CalendarHeader / CalendarGrid.
	testId: string,
}

local defaultProps = {
	testId = "--foundation-calendar",
}

local function CalendarPane(props: CalendarPaneProps): React.ReactNode
	local state = props.state

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = props.Size,
		tag = {
			["col gap-small padding-large"] = props.showTimeList == true,
			["col auto-y"] = props.showTimeList ~= true,
		},
		testId = props.rootTestId,
	}, {
		CalendarHeader = React.createElement(CalendarHeader, {
			LayoutOrder = 1,
			onNextMonth = state.navigateToNextMonth,
			onPreviousMonth = state.navigateToPreviousMonth,
			onViewDateChanged = state.onViewDateChanged,
			selectableDateRange = props.selectableDateRange,
			testId = props.testId,
			viewDate = state.currViewDate,
		}),
		WeekAndDates = React.createElement(CalendarGrid, {
			currViewDate = state.currViewDate,
			handleDateActivated = state.handleDateActivated,
			highlightDates = state.highlightDates,
			isDateRange = state.isDateRange,
			localSelectedDateTimes = state.localSelectedDateTimes,
			LayoutOrder = 2,
			onHoverEnter = state.onHoverEnter,
			onHoverLeave = state.onHoverLeave,
			scaledCalendarWidth = props.scaledCalendarWidth,
			selectableDateRange = props.selectableDateRange,
			Size = props.gridSize,
			testId = props.testId,
		}),
	})
end

local function SingleMonthCalendar(singleMonthCalendarProps: Props): React.ReactNode
	local props = withDefaults(singleMonthCalendarProps, defaultProps)
	local tokens = useTokens()
	local scaledCalendarWidth = useScaledValue(DateTimeLayoutUtilities.CALENDAR_WIDTH)
	local scaledTimeListWidth = useScaledValue(DateTimeLayoutUtilities.TIME_LIST_WIDTH)

	local state = useSingleMonthCalendarState({
		isDateRange = props.isDateRange,
		onSelectedDateChanged = props.onSelectedDateChanged,
		referenceDate = props.referenceDate,
		selectableDateRange = props.selectableDateRange,
		selectedDates = props.selectedDates,
		showTimeList = props.showTimeList,
		viewAnchorDate = props.viewAnchorDate,
	})

	if props.showTimeList then
		local layout = DateTimeLayoutUtilities.computeSingleWithTimeLayout(
			scaledCalendarWidth,
			scaledTimeListWidth,
			tokens,
			DateTimeCalendarConstants.NUM_CALENDAR_GRID_ROWS
		)

		return React.createElement(View, {
			LayoutOrder = props.LayoutOrder,
			tag = "row align-y-top auto-xy",
			testId = props.testId,
		}, {
			CalendarPane = React.createElement(CalendarPane, {
				gridSize = UDim2.fromOffset(scaledCalendarWidth, layout.gridHeight),
				LayoutOrder = 1,
				scaledCalendarWidth = scaledCalendarWidth,
				selectableDateRange = props.selectableDateRange,
				showTimeList = true,
				Size = UDim2.fromOffset(layout.calendarColumnWidth, layout.bodyHeight),
				state = state,
				testId = props.testId,
			}),
			Divider = React.createElement(View, {
				backgroundStyle = tokens.Color.Stroke.Default,
				LayoutOrder = 2,
				Size = UDim2.fromOffset(tokens.Stroke.Standard, layout.bodyHeight),
			}),
			TimeListColumn = React.createElement(View, {
				LayoutOrder = 3,
				Size = UDim2.fromOffset(layout.timeListColumnWidth, layout.bodyHeight),
				tag = "col padding-large",
			}, {
				TimeList = React.createElement(TimeList, {
					dateTime = state.selectedDateTimes[1],
					dayAnchor = DateTimeCalendarViewUtilities.resolveAnchorDate(
						state.selectedDateTimes,
						props.viewAnchorDate or props.referenceDate
					),
					height = layout.timeListHeight,
					LayoutOrder = 1,
					onItemChanged = state.onTimeListItemChanged,
					testId = `{props.testId}--time-list`,
					width = UDim.new(0, scaledTimeListWidth),
				}),
			}),
		})
	end

	return React.createElement(CalendarPane, {
		LayoutOrder = props.LayoutOrder,
		rootTestId = props.testId,
		scaledCalendarWidth = scaledCalendarWidth,
		selectableDateRange = props.selectableDateRange,
		Size = UDim2.fromOffset(scaledCalendarWidth, 0),
		state = state,
		testId = props.testId,
	})
end

export type SingleMonthCalendarProps = Props

return SingleMonthCalendar
