local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeCalendarViewUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeLayoutUtilities = require(script.Parent.Parent.Utilities.DateTimeLayoutUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)

local Divider = require(Foundation.Components.Divider)
local TwoMonthCalendarHeader = require(script.Parent.TwoMonthCalendarHeader)
local TwoMonthCalendarPane = require(script.Parent.TwoMonthCalendarPane)
local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)

type Props = {
	LayoutOrder: number?,
	onDayActivated: (dateTime: DateTime) -> (),
	referenceDate: DateTime?,
	selectableDateRange: DateTimeUtilities.DateRange?,
	selectedDates: { DateTime }?,
	testId: string?,
	viewAnchorDate: DateTime?,
}

local function TwoMonthCalendar(props: Props)
	local paneWidth = useScaledValue(DateTimeLayoutUtilities.PANE_WIDTH)
	local cellSize = paneWidth / 7

	local currViewDate, setCurrViewDate = React.useState(
		DateTimeCalendarViewUtilities.toViewDate(
			DateTimeCalendarViewUtilities.resolveAnchorDate(props.selectedDates, props.referenceDate)
		)
	)

	local hoveredDate, setHoveredDate = React.useState(function(): DateTime?
		return nil
	end)
	local panesRef = React.useRef(nil :: GuiObject?)

	-- Follow explicit anchors only when the anchor itself changes. selectedDates is a
	-- separate dep so clearing the draft can fall back to referenceDate — it must not
	-- re-apply a stale viewAnchorDate on every range click (that snaps back to start).
	React.useEffect(function()
		if not props.viewAnchorDate then
			return
		end
		setCurrViewDate(DateTimeCalendarViewUtilities.toViewDate(props.viewAnchorDate))
	end, { props.viewAnchorDate })

	React.useEffect(function()
		if props.viewAnchorDate or (props.selectedDates and props.selectedDates[1]) then
			return
		end

		if props.referenceDate then
			setCurrViewDate(DateTimeCalendarViewUtilities.toViewDate(props.referenceDate))
		end
	end, { props.viewAnchorDate, props.referenceDate, props.selectedDates } :: { unknown })

	-- Drop preview once the draft is a complete range (or cleared).
	React.useEffect(function()
		local dates = props.selectedDates
		if not dates or not dates[1] or dates[2] then
			setHoveredDate(nil)
		end
	end, { props.selectedDates })

	-- Clear preview when the pointer leaves both month panes (not on per-day remount).
	React.useEffect(function()
		local guiObject = panesRef.current
		if guiObject == nil then
			return
		end
		local connection = guiObject.MouseLeave:Connect(function()
			setHoveredDate(nil)
		end)
		return function()
			connection:Disconnect()
		end
	end, {})

	local navigateToPreviousMonth = React.useCallback(function()
		setCurrViewDate(function(prev)
			local month, year = DateTimeUtilities.getPrevMonthInfo(prev.month, prev.year)
			return { month = month, year = year }
		end)
	end, {})

	local navigateToNextMonth = React.useCallback(function()
		setCurrViewDate(function(prev)
			local month, year = DateTimeUtilities.getNextMonthInfo(prev.month, prev.year)
			return { month = month, year = year }
		end)
	end, {})

	local onHoverEnter = React.useCallback(function(dateTime: DateTime)
		setHoveredDate(dateTime)
	end, {})

	local onDayActivated = React.useCallback(function(dateTime: DateTime)
		setHoveredDate(nil)
		props.onDayActivated(dateTime)
	end, { props.onDayActivated })

	local secondMonth, secondYear = DateTimeUtilities.getNextMonthInfo(currViewDate.month, currViewDate.year)

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "col size-full-0 auto-y",
		testId = props.testId,
	}, {
		Header = React.createElement(TwoMonthCalendarHeader, {
			currViewDate = currViewDate,
			onNextMonth = navigateToNextMonth,
			onPreviousMonth = navigateToPreviousMonth,
			secondMonth = secondMonth,
			secondYear = secondYear,
			testId = props.testId,
		}),
		HeaderDivider = React.createElement(Divider, {
			LayoutOrder = 2,
		}),
		Panes = React.createElement(View, {
			LayoutOrder = 3,
			ref = panesRef,
			tag = "row align-y-top gap-large auto-xy padding-x-large padding-y-small",
		}, {
			FirstPane = React.createElement(TwoMonthCalendarPane, {
				cellSize = cellSize,
				hoveredDate = hoveredDate,
				LayoutOrder = 1,
				month = currViewDate.month,
				onDayActivated = onDayActivated,
				onHoverEnter = onHoverEnter,
				paneWidth = paneWidth,
				selectableDateRange = props.selectableDateRange,
				selectedDates = props.selectedDates,
				testId = props.testId,
				year = currViewDate.year,
			}),
			SecondPane = React.createElement(TwoMonthCalendarPane, {
				cellSize = cellSize,
				hoveredDate = hoveredDate,
				LayoutOrder = 2,
				month = secondMonth,
				onDayActivated = onDayActivated,
				onHoverEnter = onHoverEnter,
				paneWidth = paneWidth,
				selectableDateRange = props.selectableDateRange,
				selectedDates = props.selectedDates,
				testId = props.testId,
				year = secondYear,
			}),
		}),
	})
end

return TwoMonthCalendar
