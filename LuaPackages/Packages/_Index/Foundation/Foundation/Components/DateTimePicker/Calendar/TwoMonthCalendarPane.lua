local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local DateTimeCalendarConstants = require(script.Parent.Parent.Utilities.DateTimeCalendarConstants)
local DateTimeCalendarDayConfigUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarDayConfigUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type PaneCellConfig = DateTimeCalendarDayConfigUtilities.PaneCellConfig

local RangeCalendarDayCell = require(script.Parent.RangeCalendarDayCell)
local Text = require(Foundation.Components.Text)
local View = require(Foundation.Components.View)

local DAYS_PER_WEEK = DateTimeCalendarConstants.DAYS_PER_WEEK
local buildTwoMonthPaneCellConfigs = DateTimeCalendarDayConfigUtilities.buildTwoMonthPaneCellConfigs

type Props = {
	cellSize: number,
	hoveredDate: DateTime?,
	LayoutOrder: number,
	month: number,
	onDayActivated: (dateTime: DateTime) -> (),
	onHoverEnter: ((dateTime: DateTime) -> ())?,
	paneWidth: number,
	selectableDateRange: DateTimeUtilities.DateRange?,
	selectedDates: { DateTime }?,
	testId: string?,
	year: number,
}

type EmptyCellProps = {
	cellSize: number,
	LayoutOrder: number,
}

local function EmptyCell(props: EmptyCellProps): React.ReactNode
	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromOffset(props.cellSize, props.cellSize),
	})
end

local function TwoMonthCalendarPane(props: Props): React.ReactNode
	local cellConfigs = React.useMemo(function()
		return buildTwoMonthPaneCellConfigs(props.month, props.year)
	end, { props.month, props.year } :: { unknown })

	local children: { React.ReactNode } = {
		React.createElement("UIGridLayout", {
			CellPadding = UDim2.fromOffset(0, 0),
			CellSize = UDim2.fromOffset(props.cellSize, props.cellSize),
			FillDirection = Enum.FillDirection.Horizontal,
			FillDirectionMaxCells = DAYS_PER_WEEK,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			key = "layout",
			SortOrder = Enum.SortOrder.LayoutOrder,
			VerticalAlignment = Enum.VerticalAlignment.Center,
		}),
	}

	local layoutOrder = 1
	for _, weekday in DateTimeUtilities.weekdays do
		table.insert(
			children,
			React.createElement(Text, {
				key = `weekday-{weekday}`,
				LayoutOrder = layoutOrder,
				Text = weekday,
				tag = "text-body-small text-align-x-center text-align-y-center",
			})
		)
		layoutOrder += 1
	end

	for _, cellConfig in cellConfigs do
		if cellConfig.day == nil then
			table.insert(
				children,
				React.createElement(EmptyCell, {
					key = cellConfig.key,
					cellSize = props.cellSize,
					LayoutOrder = cellConfig.LayoutOrder,
				})
			)
		else
			table.insert(
				children,
				React.createElement(RangeCalendarDayCell, {
					key = cellConfig.key,
					cellSize = props.cellSize,
					day = cellConfig.day,
					hoveredDate = props.hoveredDate,
					LayoutOrder = cellConfig.LayoutOrder,
					month = cellConfig.month :: number,
					onDayActivated = props.onDayActivated,
					onHoverEnter = props.onHoverEnter,
					selectableDateRange = props.selectableDateRange,
					selectedDates = props.selectedDates,
					testId = props.testId,
					year = cellConfig.year :: number,
				})
			)
		end
	end

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		Size = UDim2.fromOffset(props.paneWidth, 0),
		tag = "auto-y",
		testId = `{props.testId}--pane-{props.LayoutOrder}`,
	}, children)
end

return TwoMonthCalendarPane
