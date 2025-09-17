local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local CalendarDay = require(script.Parent.CalendarDay)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)

local IconName = BuilderIcons.Icon

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local LocalizationService = require(Foundation.Utility.Wrappers).Services.LocalizationService
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local useTokens = require(Foundation.Providers.Style.useTokens)
local View = require(Foundation.Components.View)

type Props = {
	-- Default selected date
	defaultSelectedDate: DateTime,

	-- Layout order
	LayoutOrder: number?,

	-- Callback when the date is changed
	onSelectedDateChanged: (dateTime: DateTime) -> (),

	-- Selectable date range
	selectableDateRange: {
		startDate: DateTime,
		endDate: DateTime,
	}?,

	-- Whether to show the input bar
	showCalendarInput: boolean?,
}

local function Calendar(props: Props)
	local tokens = useTokens()

	local selectedDateTime, setSelectedDateTime = React.useState(props.defaultSelectedDate)

	local text, setText =
		React.useState(props.defaultSelectedDate:FormatLocalTime("L", LocalizationService.RobloxLocaleId))
	local currViewDate, setCurrViewDate = React.useState({
		month = props.defaultSelectedDate:ToLocalTime().Month,
		year = props.defaultSelectedDate:ToLocalTime().Year,
	})

	local localSelectedDateTime = selectedDateTime:ToLocalTime()

	local navigateToNextMonth = React.useCallback(function()
		local nextMonth, nextYear = DateTimeUtilities.getNextMonthInfo(currViewDate.month, currViewDate.year)
		setCurrViewDate({ month = nextMonth, year = nextYear })
	end, { currViewDate })

	local navigateToPreviousMonth = React.useCallback(function()
		local prevMonth, prevYear = DateTimeUtilities.getPrevMonthInfo(currViewDate.month, currViewDate.year)
		setCurrViewDate({ month = prevMonth, year = prevYear })
	end, { currViewDate })

	local handleDateActivated = React.useCallback(function(day: number, month: number, year: number)
		local dateTime = DateTime.fromLocalTime(year, month, day)
		setSelectedDateTime(dateTime)
		setCurrViewDate({ month = month, year = year })
		setText(dateTime:FormatLocalTime("L", LocalizationService.RobloxLocaleId))
		props.onSelectedDateChanged(dateTime)
	end, { props.onSelectedDateChanged })

	local onChanged = React.useCallback(function(txt: string)
		setText(txt)

		local dateTime = DateTimeUtilities.getDateTimeFromText(txt)

		-- If the date is valid and within the selectable date range, update the selected date and current view date
		if
			dateTime
			and (
				not props.selectableDateRange
				or props.selectableDateRange
					and DateTimeUtilities.isDateWithinRange(dateTime, props.selectableDateRange)
			)
		then
			setSelectedDateTime(dateTime)

			local localDateTime = dateTime:ToLocalTime()
			setCurrViewDate({ month = localDateTime.Month, year = localDateTime.Year })

			props.onSelectedDateChanged(dateTime)
		end
	end, { props.selectableDateRange, props.onSelectedDateChanged } :: { any })

	local datesGrid = React.useMemo(function()
		local elements = {} :: { React.ReactNode }

		table.insert(
			elements,
			React.createElement("UIGridLayout", {
				CellPadding = UDim2.fromOffset(tokens.Padding.XXSmall, tokens.Padding.None),
				CellSize = UDim2.fromOffset(tokens.Size.Size_900, tokens.Size.Size_900),
				FillDirection = Enum.FillDirection.Horizontal,
				FillDirectionMaxCells = 7,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				key = "layout",
				SortOrder = Enum.SortOrder.LayoutOrder,
				VerticalAlignment = Enum.VerticalAlignment.Center,
			})
		)

		local index = 1

		for _, weekday in DateTimeUtilities.weekdays do
			table.insert(
				elements,
				React.createElement(Text, {
					key = weekday,
					LayoutOrder = index,
					Text = weekday,
					tag = "text-align-x-center text-align-y-center text-body-small",
				})
			)

			index += 1
		end

		--[[
			Add days leading up to the first day of the month.
			Clicking on these will update the current view month and year to the previous month.
		]]
		local firstDayOfWeek = DateTimeUtilities.getFirstDayOfWeek(currViewDate.month, currViewDate.year)
		local prevMonth, prevYear = DateTimeUtilities.getPrevMonthInfo(currViewDate.month, currViewDate.year)
		local prevMonthNumDays =
			DateTimeUtilities.getDaysInMonth(DateTimeUtilities.getPrevMonthInfo(currViewDate.month, currViewDate.year))
		for i = 1, firstDayOfWeek do
			local day = prevMonthNumDays - firstDayOfWeek + i
			local isSelectable = if props.selectableDateRange
				then DateTimeUtilities.isDateWithinRange(
					DateTime.fromLocalTime(prevYear, prevMonth, day),
					props.selectableDateRange
				)
				else true

			table.insert(
				elements,
				React.createElement(CalendarDay, {
					isSelectable = isSelectable,
					key = "prev-month-day-" .. day,
					LayoutOrder = index,
					onActivated = function()
						handleDateActivated(day, prevMonth, prevYear)
					end,
					Text = tostring(day),
					testId = "--foundation-prev-month-calendar-day-" .. day,
				})
			)

			index += 1
		end

		--[[
			Add days in the current month.
			Clicking on these will update the current selected date.
		]]
		for i = 1, DateTimeUtilities.getDaysInMonth(currViewDate.month, currViewDate.year) do
			local isSelectable = if props.selectableDateRange
				then DateTimeUtilities.isDateWithinRange(
					DateTime.fromLocalTime(currViewDate.year, currViewDate.month, i),
					props.selectableDateRange
				)
				else true
			local isSelected = localSelectedDateTime.Day == i
				and localSelectedDateTime.Month == currViewDate.month
				and localSelectedDateTime.Year == currViewDate.year

			table.insert(
				elements,
				React.createElement(CalendarDay, {
					highlight = true,
					isSelectable = isSelectable,
					isSelected = isSelected,
					key = "current-month-day-" .. i,
					LayoutOrder = index,
					onActivated = function()
						handleDateActivated(i, currViewDate.month, currViewDate.year)
					end,
					Text = tostring(i),
					testId = "--foundation-current-month-calendar-day-" .. i,
				})
			)

			index += 1
		end

		--[[
			Add days after the last day of the month.
			Clicking on these will update the current view month and year to the next month.
		]]
		local lastDayOfWeek = DateTimeUtilities.getLastDayOfWeek(currViewDate.month, currViewDate.year)
		local nextMonth, nextYear = DateTimeUtilities.getNextMonthInfo(currViewDate.month, currViewDate.year)
		local daysToShow = 7 - (lastDayOfWeek + 1) -- +1 to account for 0-indexing
		for i = 1, daysToShow do
			local isSelectable = if props.selectableDateRange
				then DateTimeUtilities.isDateWithinRange(
					DateTime.fromLocalTime(nextYear, nextMonth, i),
					props.selectableDateRange
				)
				else true

			table.insert(
				elements,
				React.createElement(CalendarDay, {
					highlight = false,
					isSelectable = isSelectable,
					key = "next-month-day-" .. i,
					LayoutOrder = index,
					onActivated = function()
						handleDateActivated(i, nextMonth, nextYear)
					end,
					Text = tostring(i),
					testId = "--foundation-next-month-calendar-day-" .. i,
				})
			)

			index += 1
		end

		return elements
	end, { currViewDate, selectedDateTime, handleDateActivated, props.selectableDateRange } :: { any })

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "col size-full-0 auto-y",
		testId = "--foundation-calendar",
	}, {
		CalendarHeader = React.createElement(View, {
			LayoutOrder = 1,
			tag = "row size-full-0 auto-y gap-small align-y-center padding-y-small",
		}, {
			PreviousMonthButton = React.createElement(IconButton, {
				LayoutOrder = 1,
				icon = IconName.ChevronSmallLeft,
				isCircular = true,
				onActivated = navigateToPreviousMonth,
				size = InputSize.Small,
				variant = ButtonVariant.Utility,
				testId = "--foundation-calendar-previous-month-button",
			}),
			MonthText = React.createElement(Text, {
				LayoutOrder = 2,
				Text = DateTimeUtilities.monthMap[currViewDate.month],
				tag = "grow text-align-x-right auto-xy",
				testId = "--foundation-calendar-month-text",
			}),
			YearText = React.createElement(Text, {
				LayoutOrder = 3,
				Text = tostring(currViewDate.year),
				tag = "grow text-align-x-left auto-xy",
				testId = "--foundation-calendar-year-text",
			}),
			NextMonthButton = React.createElement(IconButton, {
				LayoutOrder = 4,
				icon = IconName.ChevronSmallRight,
				isCircular = true,
				onActivated = navigateToNextMonth,
				size = InputSize.Small,
				variant = ButtonVariant.Utility,
				testId = "--foundation-calendar-next-month-button",
			}),
		}),
		CalendarInput = if props.showCalendarInput
			then React.createElement(TextInput, {
				hasError = DateTimeUtilities.getDateTimeFromText(text) == nil,
				label = "",
				LayoutOrder = 2,
				onChanged = onChanged,
				placeholder = "MM/DD/YYYY",
				text = text,
				width = UDim.new(1, 0),
				testId = "--foundation-calendar-input",
			})
			else nil,
		WeekAndDates = React.createElement(View, {
			LayoutOrder = 3,
			tag = "size-full-0 auto-y",
		}, datesGrid),
	})
end

return Calendar
