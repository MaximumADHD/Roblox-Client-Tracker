local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local CalendarGridDayLabel = require(script.Parent.CalendarGridDayLabel)
local DateTimeCalendarConstants = require(script.Parent.Parent.Utilities.DateTimeCalendarConstants)
local DateTimeCalendarDayAppearanceUtilities =
	require(script.Parent.Parent.Utilities.DateTimeCalendarDayAppearanceUtilities)
local DateTimeCalendarDayConfigUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarDayConfigUtilities)
local DateTimeCalendarViewUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type ViewDate = DateTimeCalendarViewUtilities.ViewDate
type DayCellConfig = DateTimeCalendarDayConfigUtilities.DayCellConfig
type DayCellAppearance = DateTimeCalendarDayAppearanceUtilities.DayCellAppearance
type DateRange = DateTimeUtilities.DateRange
type DateTimeLocalTime = DateTimeUtilities.DateTimeLocalTime

local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)
local useTokens = require(Foundation.Providers.Style.useTokens)

local buildCalendarDayConfigs = DateTimeCalendarDayConfigUtilities.buildCalendarDayConfigs
local DAYS_PER_WEEK = DateTimeCalendarConstants.DAYS_PER_WEEK
local getDayCellAppearance = DateTimeCalendarDayAppearanceUtilities.getDayCellAppearance

export type CalendarGridProps = {
	currViewDate: ViewDate,
	handleDateActivated: (day: number, month: number, year: number) -> (),
	highlightDates: { DateTime },
	isDateRange: boolean,
	localSelectedDateTimes: { DateTimeLocalTime },
	LayoutOrder: number?,
	onHoverEnter: ((dateTime: DateTime) -> ())?,
	onHoverLeave: (() -> ())?,
	scaledCalendarWidth: number,
	selectableDateRange: DateRange?,
	Size: UDim2?,
	testId: string,
}

type CalendarGridDayCellProps = {
	applyEmphasis: boolean?,
	bandPosition: UDim2?,
	bandRadiusTag: string?,
	bandSize: UDim2?,
	day: number,
	handleDateActivated: (day: number, month: number, year: number) -> (),
	isHighlighted: boolean,
	isSelectable: boolean,
	isSelected: boolean,
	LayoutOrder: number,
	month: number,
	onHoverEnter: ((dateTime: DateTime) -> ())?,
	testId: string,
	year: number,
}

local function CalendarGridDayCell(props: CalendarGridDayCellProps)
	local tokens = useTokens()

	local onHoverEnter = React.useMemo(function(): (() -> ())?
		if props.onHoverEnter == nil then
			return nil
		end
		return function()
			props.onHoverEnter(DateTime.fromLocalTime(props.year, props.month, props.day))
		end
	end, { props.onHoverEnter, props.year, props.month, props.day } :: { unknown })

	local onActivated = React.useCallback(function()
		props.handleDateActivated(props.day, props.month, props.year)
	end, { props.handleDateActivated, props.day, props.month, props.year } :: { unknown })

	-- Stable outer cell: range preview fill is a sibling so CalendarGridDayLabel stays circular.
	local showRangeFill = props.isHighlighted and not props.isSelected
	local hasBandRadius = props.bandRadiusTag ~= nil and props.bandRadiusTag ~= ""

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "size-full",
	}, {
		RangeFill = if showRangeFill
			then React.createElement(View, {
				backgroundStyle = tokens.Color.ActionStandard.Background,
				tag = {
					["size-full"] = true,
					[props.bandRadiusTag :: string] = hasBandRadius,
				},
				ZIndex = 0,
			})
			else nil,
		Day = React.createElement(CalendarGridDayLabel, {
			bandPosition = if props.isSelected then props.bandPosition else nil,
			bandRadiusTag = if props.isSelected then props.bandRadiusTag else nil,
			bandSize = if props.isSelected then props.bandSize else nil,
			emphasizeText = if props.applyEmphasis then props.isSelectable and not props.isSelected else nil,
			highlight = false,
			isSelectable = props.isSelectable,
			isSelected = props.isSelected,
			LayoutOrder = 1,
			onActivated = onActivated,
			onHoverEnter = onHoverEnter,
			testId = props.testId,
			label = tostring(props.day),
		}),
	})
end

local MemoizedCalendarGridDayCell = React.memo(CalendarGridDayCell)

local function CalendarGrid(props: CalendarGridProps): React.ReactNode
	local tokens = useTokens()
	local cellPadding = tokens.Padding.None
	local rootRef = React.useRef(nil :: GuiObject?)

	-- Clear preview when the pointer leaves the grid, not when individual days remount.
	React.useEffect(function()
		local guiObject = rootRef.current
		local onHoverLeave = props.onHoverLeave
		if guiObject == nil or onHoverLeave == nil then
			return
		end
		local connection = guiObject.MouseLeave:Connect(onHoverLeave)
		return function()
			connection:Disconnect()
		end
	end, { props.onHoverLeave })

	local dayConfigs = React.useMemo(function()
		return buildCalendarDayConfigs(props.currViewDate)
	end, { props.currViewDate })

	local dayAppearances = React.useMemo(
		function(): { [string]: DayCellAppearance }
			local appearances: { [string]: DayCellAppearance } = {}
			for _, dayConfig in dayConfigs do
				local key = `{dayConfig.keyPrefix}-{dayConfig.day}`
				local dateTime = DateTime.fromLocalTime(dayConfig.year, dayConfig.month, dayConfig.day)
				appearances[key] = getDayCellAppearance(
					dateTime,
					props.localSelectedDateTimes,
					props.highlightDates,
					props.isDateRange,
					props.selectableDateRange
				)
			end
			return appearances
		end,
		{
			dayConfigs,
			props.highlightDates,
			props.isDateRange,
			props.localSelectedDateTimes,
			props.selectableDateRange,
		} :: { unknown }
	)

	local children: { React.ReactNode } = {
		React.createElement("UIGridLayout", {
			CellPadding = UDim2.fromOffset(cellPadding, cellPadding),
			CellSize = UDim2.fromOffset(
				props.scaledCalendarWidth / DAYS_PER_WEEK,
				props.scaledCalendarWidth / DAYS_PER_WEEK
			),
			FillDirection = Enum.FillDirection.Horizontal,
			FillDirectionMaxCells = DAYS_PER_WEEK,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			key = "layout",
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}

	local index = 1
	for _, weekday in DateTimeUtilities.weekdays do
		table.insert(
			children,
			React.createElement(Text, {
				key = weekday,
				LayoutOrder = index,
				tag = "text-body-small text-align-x-center text-align-y-center",
				Text = weekday,
			})
		)
		index += 1
	end

	for _, dayConfig in dayConfigs do
		local key = `{dayConfig.keyPrefix}-{dayConfig.day}`
		local appearance = dayAppearances[key]
		table.insert(
			children,
			React.createElement(MemoizedCalendarGridDayCell, {
				key = key,
				applyEmphasis = dayConfig.applyEmphasis,
				bandPosition = appearance.bandPosition,
				bandRadiusTag = appearance.bandRadiusTag,
				bandSize = appearance.bandSize,
				day = dayConfig.day,
				handleDateActivated = props.handleDateActivated,
				isHighlighted = appearance.isHighlighted,
				isSelectable = appearance.isSelectable,
				isSelected = appearance.isSelected,
				LayoutOrder = dayConfig.LayoutOrder,
				month = dayConfig.month,
				onHoverEnter = props.onHoverEnter,
				testId = `{props.testId}--{dayConfig.keyPrefix}-calendar-day-{dayConfig.day}`,
				year = dayConfig.year,
			})
		)
	end

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		ref = rootRef,
		Size = props.Size,
		tag = "size-full-0 auto-y",
		testId = `{props.testId}--weekAndDates`,
	}, children)
end

return {
	CalendarGrid = CalendarGrid,
}
