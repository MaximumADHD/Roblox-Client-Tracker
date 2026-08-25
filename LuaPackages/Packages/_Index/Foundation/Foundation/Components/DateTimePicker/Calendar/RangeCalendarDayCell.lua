local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CalendarGridDayLabel = require(script.Parent.CalendarGridDayLabel)
local DateTimeCalendarDayAppearanceUtilities =
	require(script.Parent.Parent.Utilities.DateTimeCalendarDayAppearanceUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type DateRange = DateTimeUtilities.DateRange
type DateTimeLocalTime = DateTimeUtilities.DateTimeLocalTime

local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Props = {
	cellSize: number,
	day: number,
	hoveredDate: DateTime?,
	selectedDates: { DateTime }?,
	LayoutOrder: number,
	month: number,
	onDayActivated: (dateTime: DateTime) -> (),
	onHoverEnter: ((dateTime: DateTime) -> ())?,
	selectableDateRange: DateRange?,
	testId: string?,
	year: number,
}

local function RangeCalendarDayCell(props: Props): React.ReactNode
	local tokens = useTokens()
	local dateTime = DateTime.fromLocalTime(props.year, props.month, props.day)
	local selectedDates: { DateTime } = props.selectedDates or {}

	local selectedLocalTimes: { DateTimeLocalTime } = {}
	for _, selectedDate in selectedDates do
		table.insert(selectedLocalTimes, DateTimeUtilities.toLocalTime(selectedDate))
	end

	local highlightDates =
		DateTimeCalendarDayAppearanceUtilities.resolveHighlightDates(selectedDates, props.hoveredDate)
	local isSelectable = DateTimeCalendarDayAppearanceUtilities.isDaySelectable(dateTime, props.selectableDateRange)
	local isSelected = DateTimeCalendarDayAppearanceUtilities.isDaySelected(dateTime, selectedLocalTimes, true)
	local isHighlighted = DateTimeCalendarDayAppearanceUtilities.isDayHighlighted(dateTime, highlightDates, true)
	local bandPosition, bandSize, bandRadiusTag =
		DateTimeCalendarDayAppearanceUtilities.getRangeBand(dateTime, highlightDates, true, isSelected)

	local onHoverEnter = React.useMemo(function(): (() -> ())?
		if props.onHoverEnter == nil then
			return nil
		end
		return function()
			props.onHoverEnter(dateTime)
		end
	end, { props.onHoverEnter, dateTime } :: { unknown })

	-- Range fill lives on this cell wrapper so CalendarGridDayLabel keeps a stable circular
	-- Text and does not remount under UIGridLayout (same split as CalendarGridDayCell).
	local showRangeFill = isHighlighted and not isSelected
	local hasBandRadius = bandRadiusTag ~= nil and bandRadiusTag ~= ""

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromOffset(props.cellSize, props.cellSize),
	}, {
		RangeFill = if showRangeFill
			then React.createElement(View, {
				backgroundStyle = tokens.Color.ActionStandard.Background,
				tag = {
					["size-full"] = true,
					[bandRadiusTag :: string] = hasBandRadius,
				},
				ZIndex = 0,
			})
			else nil,
		Day = React.createElement(CalendarGridDayLabel, {
			bandPosition = if isSelected then bandPosition else nil,
			bandRadiusTag = if isSelected then bandRadiusTag else nil,
			bandSize = if isSelected then bandSize else nil,
			emphasizeText = isSelectable and not isSelected,
			highlight = false,
			isSelectable = isSelectable,
			isSelected = isSelected,
			LayoutOrder = 1,
			label = tostring(props.day),
			onActivated = function()
				props.onDayActivated(dateTime)
			end,
			onHoverEnter = onHoverEnter,
			testId = `{props.testId}--day-{props.year}-{props.month}-{props.day}`,
		}),
	})
end

return RangeCalendarDayCell
