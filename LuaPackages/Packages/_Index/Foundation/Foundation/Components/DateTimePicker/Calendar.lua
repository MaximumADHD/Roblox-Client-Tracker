local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local CalendarDay = require(script.Parent.CalendarDay)
local DateTimeUtilities = require(script.Parent.DateTimeUtilities)

local IconName = BuilderIcons.Icon

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Flags = require(Foundation.Utility.Flags)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local LocalizationService = require(Foundation.Utility.Wrappers).Services.LocalizationService
local Text = require(Foundation.Components.Text)
local TextInput = require(Foundation.Components.TextInput)
local TimeDropdown = require(script.Parent.TimeDropdown)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useTokens = require(Foundation.Providers.Style.useTokens)
local View = require(Foundation.Components.View)

type Props = {
	-- Default dates
	defaultDates: { DateTime },
	-- Layout order
	LayoutOrder: number?,
	-- Callback when the date is changed
	onSelectedDateChanged: (dateTimes: { DateTime }) -> (),
	-- Selectable date range
	selectableDateRange: {
		startDate: DateTime,
		endDate: DateTime,
	}?,
	-- Whether to show the input bar
	showStartDateTimeCalendarInput: boolean?,
	-- Whether to show the end date input bar
	showEndDateTimeCalendarInput: boolean?,
	-- Whether to show the time dropdown
	showTimeDropdown: boolean?,
	-- Test id
	testId: string?,
}

local CALENDAR_WIDTH = 272

local function Calendar(props: Props)
	local tokens = useTokens()
	local scaledCalendarWidth = useScaledValue(CALENDAR_WIDTH)

	local isMounted = React.useRef(false)

	local selectedDateTimes, setSelectedDateTimes = React.useState(props.defaultDates)
	local endDateTimeInputTextBoxRef = React.useRef(nil)

	-- Immediately focus the end date input if it is shown
	local inputFocusState, setInputFocusState = React.useState(
		if props.showEndDateTimeCalendarInput
			then { startDateTimeInput = false, endDateTimeInput = true }
			else { startDateTimeInput = true, endDateTimeInput = false }
	)
	React.useEffect(function()
		if
			props.showEndDateTimeCalendarInput
			and inputFocusState.endDateTimeInput
			and endDateTimeInputTextBoxRef.current
		then
			endDateTimeInputTextBoxRef.current.focus()
		end
	end, { inputFocusState })

	local startDateTimeInputText, setStartDateTimeInputText = React.useState(
		if Flags.FoundationDateTimePickerTimeVariantEnabled
			then DateTimeUtilities.formatLocalTime(props.defaultDates[1] :: DateTime)
			else props.defaultDates[1]:FormatLocalTime(
				DateTimeUtilities.DATE_COMPOSITE_TOKEN,
				LocalizationService.RobloxLocaleId
			)
	)
	local endDateTimeInputText, setEndDateTimeInputText = React.useState(
		if props.defaultDates[2]
			then if Flags.FoundationDateTimePickerTimeVariantEnabled
				then DateTimeUtilities.formatLocalTime(props.defaultDates[2] :: DateTime)
				else props.defaultDates[2]:FormatLocalTime(
					DateTimeUtilities.DATE_COMPOSITE_TOKEN,
					LocalizationService.RobloxLocaleId
				)
			else ""
	)

	React.useEffect(function()
		isMounted.current = true
	end, {})

	local currViewDate, setCurrViewDate = React.useState({
		month = props.defaultDates[1]:ToLocalTime().Month,
		year = props.defaultDates[1]:ToLocalTime().Year,
	})

	local localSelectedDateTimes = {}
	for _, dateTime in selectedDateTimes do
		table.insert(localSelectedDateTimes, dateTime:ToLocalTime())
	end

	--[[ 
		Auto resets the start date input to the last valid date if startDateTimeInputText
		is not a valid DateTime or the dateTime is after the end dateTime
	--]]
	local onStartDateTimeInputFocusLost = function()
		local dateTime = DateTimeUtilities.getDateTimeFromText(startDateTimeInputText)

		if
			not dateTime and selectedDateTimes[1]
			or dateTime
				and selectedDateTimes[2]
				and DateTimeUtilities.roundToStartOfDay(dateTime) > DateTimeUtilities.roundToStartOfDay(
					selectedDateTimes[2]
				)
		then
			setStartDateTimeInputText(
				if Flags.FoundationDateTimePickerTimeVariantEnabled
					then DateTimeUtilities.formatLocalTime(props.defaultDates[1] :: DateTime)
					else props.defaultDates[1]:FormatLocalTime(
						DateTimeUtilities.DATE_COMPOSITE_TOKEN,
						LocalizationService.RobloxLocaleId
					)
			)
		end
	end

	--[[ 
		Auto resets the end date input to the last valid date if endDateTimeInputText
		is not a valid DateTime or the dateTime is before the start dateTime
	--]]
	local onEndDateTimeInputFocusLost = function()
		local dateTime = DateTimeUtilities.getDateTimeFromText(endDateTimeInputText)

		if
			(not dateTime and selectedDateTimes[2])
			or dateTime
				and selectedDateTimes[1]
				and DateTimeUtilities.roundToStartOfDay(dateTime) < DateTimeUtilities.roundToStartOfDay(
					selectedDateTimes[1]
				)
		then
			setEndDateTimeInputText(
				if Flags.FoundationDateTimePickerTimeVariantEnabled
					then DateTimeUtilities.formatLocalTime(props.defaultDates[2] :: DateTime)
					else selectedDateTimes[2]:FormatLocalTime(
						DateTimeUtilities.DATE_COMPOSITE_TOKEN,
						LocalizationService.RobloxLocaleId
					)
			)
		end
	end

	local navigateToNextMonth = React.useCallback(function()
		local nextMonth, nextYear = DateTimeUtilities.getNextMonthInfo(currViewDate.month, currViewDate.year)
		setCurrViewDate({ month = nextMonth, year = nextYear })
	end, { currViewDate })

	local navigateToPreviousMonth = React.useCallback(function()
		local prevMonth, prevYear = DateTimeUtilities.getPrevMonthInfo(currViewDate.month, currViewDate.year)
		setCurrViewDate({ month = prevMonth, year = prevYear })
	end, { currViewDate })

	local handleDateActivated = React.useCallback(
		function(day: number, month: number, year: number)
			local dateTime = DateTime.fromLocalTime(
				year,
				month,
				day,
				if Flags.FoundationDateTimePickerTimeVariantEnabled then selectedDateTimes[1]:ToLocalTime().Hour else 0,
				if Flags.FoundationDateTimePickerTimeVariantEnabled
					then selectedDateTimes[1]:ToLocalTime().Minute
					else 0
			)

			-- If calendar input is shown then we let the input's onChanged callback handle updating the state
			if props.showStartDateTimeCalendarInput then
				if props.showEndDateTimeCalendarInput then
					if inputFocusState.startDateTimeInput then
						setStartDateTimeInputText(
							if Flags.FoundationDateTimePickerTimeVariantEnabled
								then DateTimeUtilities.formatLocalTime(dateTime)
								else dateTime:FormatLocalTime(
									DateTimeUtilities.DATE_COMPOSITE_TOKEN,
									LocalizationService.RobloxLocaleId
								)
						)

						setInputFocusState({ startDateTimeInput = false, endDateTimeInput = true })
					elseif inputFocusState.endDateTimeInput then
						setEndDateTimeInputText(
							if Flags.FoundationDateTimePickerTimeVariantEnabled
								then DateTimeUtilities.formatLocalTime(dateTime)
								else dateTime:FormatLocalTime(
									DateTimeUtilities.DATE_COMPOSITE_TOKEN,
									LocalizationService.RobloxLocaleId
								)
						)
						setInputFocusState({ startDateTimeInput = false, endDateTimeInput = false })
					else
						setStartDateTimeInputText(
							if Flags.FoundationDateTimePickerTimeVariantEnabled
								then DateTimeUtilities.formatLocalTime(dateTime)
								else dateTime:FormatLocalTime(
									DateTimeUtilities.DATE_COMPOSITE_TOKEN,
									LocalizationService.RobloxLocaleId
								)
						)
						setEndDateTimeInputText("")
						setInputFocusState({ startDateTimeInput = false, endDateTimeInput = true })
					end
				else
					setStartDateTimeInputText(
						if Flags.FoundationDateTimePickerTimeVariantEnabled
							then DateTimeUtilities.formatLocalTime(dateTime)
							else dateTime:FormatLocalTime(
								DateTimeUtilities.DATE_COMPOSITE_TOKEN,
								LocalizationService.RobloxLocaleId
							)
					)
				end

				setCurrViewDate({ month = month, year = year })
			else
				setCurrViewDate({ month = month, year = year })
				setSelectedDateTimes({ dateTime })
				props.onSelectedDateChanged({ dateTime })
			end
		end,

		{
			props.showStartDateTimeCalendarInput,
			props.showEndDateTimeCalendarInput,
			selectedDateTimes,
			inputFocusState,
			endDateTimeInputTextBoxRef,
		} :: { any }
	)

	local calculateIsSelected = React.useCallback(function(dateTime)
		local localDateTime = dateTime:ToLocalTime()
		for _, localSelectedDateTime in localSelectedDateTimes do
			if
				localSelectedDateTime.Day == localDateTime.Day
				and localSelectedDateTime.Month == localDateTime.Month
				and localSelectedDateTime.Year == localDateTime.Year
			then
				return true
			end
		end
		return false
	end, { localSelectedDateTimes })

	local calculateIsHighlighted = React.useCallback(function(dateTime: DateTime)
		return props.showEndDateTimeCalendarInput
			and selectedDateTimes[1]
			and selectedDateTimes[2]
			and DateTimeUtilities.isDateWithinRange(
				dateTime,
				{ startDate = selectedDateTimes[1], endDate = selectedDateTimes[2] }
			)
	end, { props.showEndDateTimeCalendarInput, selectedDateTimes } :: { any })

	local calculateIsSelectable = React.useCallback(
		function(dateTime: DateTime)
			if
				props.selectableDateRange
				and not DateTimeUtilities.isDateWithinRange(dateTime, props.selectableDateRange)
			then
				return false
			end

			if props.showEndDateTimeCalendarInput then
				if
					inputFocusState.endDateTimeInput
					and DateTimeUtilities.roundToStartOfDay(dateTime)
						< DateTimeUtilities.roundToStartOfDay(selectedDateTimes[1])
				then
					return false
				elseif
					inputFocusState.startDateTimeInput
					and selectedDateTimes[2]
					and DateTimeUtilities.roundToStartOfDay(dateTime)
						> DateTimeUtilities.roundToStartOfDay(selectedDateTimes[2])
				then
					return false
				end
			end

			return true
		end,
		{ selectedDateTimes, props.selectableDateRange, inputFocusState, props.showEndDateTimeCalendarInput } :: { any }
	)

	--[[
		Only update the selectedDateTimes state if input is valid and within the selectable date range.
	]]
	local onStartDateTimeInputChanged = React.useCallback(
		function(txt: string)
			-- Don't update the selectedDateTime state on first render since it is already set by the defaultDates prop
			if not isMounted.current then
				return
			end

			setStartDateTimeInputText(txt)
			local dateTime = DateTimeUtilities.getDateTimeFromText(txt)
			if dateTime then
				local newSelectedDateTimes
				if props.showEndDateTimeCalendarInput then
					-- Don't update the selectedDateTime state if the date is after the end date
					if
						selectedDateTimes[2]
						and DateTimeUtilities.roundToStartOfDay(dateTime)
							> DateTimeUtilities.roundToStartOfDay(selectedDateTimes[2])
					then
						return
					end

					newSelectedDateTimes = { dateTime, selectedDateTimes[2] }
				else
					newSelectedDateTimes = { dateTime }
				end

				local localDateTime = dateTime:ToLocalTime()
				setCurrViewDate({ month = localDateTime.Month, year = localDateTime.Year })
				setSelectedDateTimes(newSelectedDateTimes)
				props.onSelectedDateChanged(newSelectedDateTimes)
			end
		end,
		{
			props.onSelectedDateChanged,
			props.showEndDateTimeCalendarInput,
			calculateIsSelectable,
			selectedDateTimes,
			isMounted,
		} :: { any }
	)

	--[[
		Only update the selectedDateTimes state if input is valid and within the selectable date range.
	]]
	local onEndDateTimeInputChanged = React.useCallback(function(txt: string)
		-- Don't update the selectedDateTime state on first render since it is already set by the defaultDates prop
		if not isMounted.current then
			return
		end

		setEndDateTimeInputText(txt)

		local dateTime = DateTimeUtilities.getDateTimeFromText(txt)
		if dateTime then
			-- Don't update the selectedDateTime state if the date is before the start date
			if
				selectedDateTimes[1]
				and DateTimeUtilities.roundToStartOfDay(dateTime)
					< DateTimeUtilities.roundToStartOfDay(selectedDateTimes[1])
			then
				return
			end

			local newSelectedDateTimes = { selectedDateTimes[1], dateTime }
			local localDateTime = dateTime:ToLocalTime()
			setCurrViewDate({ month = localDateTime.Month, year = localDateTime.Year })
			setSelectedDateTimes(newSelectedDateTimes)
			props.onSelectedDateChanged(newSelectedDateTimes)
		-- Exception for when input is empty string we will clear the selected end date
		elseif txt == "" then
			setSelectedDateTimes(function(prevState)
				props.onSelectedDateChanged({ prevState[1] })
				return { prevState[1] }
			end)
			return
		end
	end, { props.onSelectedDateChanged, selectedDateTimes, calculateIsSelectable, isMounted } :: { any })

	local datesGrid = React.useMemo(
		function()
			local elements = {} :: { React.ReactNode }

			table.insert(
				elements,
				React.createElement("UIGridLayout", {
					CellPadding = UDim2.fromOffset(tokens.Padding.None, tokens.Padding.None),
					CellSize = UDim2.fromOffset(scaledCalendarWidth / 7, scaledCalendarWidth / 7),
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
			local prevMonthNumDays = DateTimeUtilities.getDaysInMonth(
				DateTimeUtilities.getPrevMonthInfo(currViewDate.month, currViewDate.year)
			)
			for i = 1, firstDayOfWeek do
				local day = prevMonthNumDays - firstDayOfWeek + i
				local dateTime = DateTime.fromLocalTime(prevYear, prevMonth, day)

				table.insert(
					elements,
					React.createElement(CalendarDay, {
						highlight = calculateIsHighlighted(dateTime),
						isSelectable = calculateIsSelectable(dateTime),
						isSelected = calculateIsSelected(dateTime),
						key = "prev-month-day-" .. day,
						LayoutOrder = index,
						onActivated = function()
							handleDateActivated(day, prevMonth, prevYear)
						end,
						Text = tostring(day),
						testId = `{props.testId}--prev-month-calendar-day-{day}`,
					})
				)

				index += 1
			end

			--[[
				Add days in the current month.
				Clicking on these will update the current selected date.
			]]
			for i = 1, DateTimeUtilities.getDaysInMonth(currViewDate.month, currViewDate.year) do
				local isSelectable =
					calculateIsSelectable(DateTime.fromLocalTime(currViewDate.year, currViewDate.month, i))
				local isSelected = calculateIsSelected(DateTime.fromLocalTime(currViewDate.year, currViewDate.month, i))

				table.insert(
					elements,
					React.createElement(CalendarDay, {
						emphasizeText = isSelectable and not isSelected,
						highlight = calculateIsHighlighted(
							DateTime.fromLocalTime(currViewDate.year, currViewDate.month, i)
						),
						isSelectable = isSelectable,
						isSelected = isSelected,
						key = "current-month-day-" .. i,
						LayoutOrder = index,
						onActivated = function()
							handleDateActivated(i, currViewDate.month, currViewDate.year)
						end,
						Text = tostring(i),
						testId = `{props.testId}--current-month-calendar-day-{i}`,
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
				local dateTime = DateTime.fromLocalTime(nextYear, nextMonth, i)

				table.insert(
					elements,
					React.createElement(CalendarDay, {
						highlight = calculateIsHighlighted(dateTime),
						isSelectable = calculateIsSelectable(dateTime),
						isSelected = calculateIsSelected(dateTime),
						key = "next-month-day-" .. i,
						LayoutOrder = index,
						onActivated = function()
							handleDateActivated(i, nextMonth, nextYear)
						end,
						Text = tostring(i),
						testId = `{props.testId}--next-month-calendar-day-{i}`,
					})
				)

				index += 1
			end

			return elements
		end,
		{
			calculateIsSelected,
			calculateIsHighlighted,
			calculateIsSelectable,
			currViewDate,
			selectedDateTimes,
			handleDateActivated,
			props.selectableDateRange,
			props.showEndDateTimeCalendarInput,
		} :: { unknown }
	)

	local onTimeDropdownItemChanged = React.useCallback(function(item: any)
		local dateTime = DateTime.fromUnixTimestamp(item)

		-- There's an engine bug with dates that are in daylight savings time and in local zones that observe it. This is a workaround to fix the offset by 1 hour for now.
		-- https://devforum.roblox.com/t/datetime-localtime-inconsistency/3548279/2
		-- https://roblox.slack.com/archives/C04NQD0Q0M6/p1761089479708459
		-- https://roblox.atlassian.net/browse/CLI-147909
		local isDst = os.date("*t", item).isdst
		if isDst then
			local localDateTime = dateTime:ToLocalTime()
			dateTime = DateTime.fromLocalTime(
				localDateTime.Year,
				localDateTime.Month,
				localDateTime.Day,
				if localDateTime.Hour == 0 then 23 else localDateTime.Hour - 1,
				localDateTime.Minute,
				localDateTime.Second
			)
		end

		setSelectedDateTimes({ dateTime })
		props.onSelectedDateChanged({ dateTime })
	end, { selectedDateTimes, props.onSelectedDateChanged } :: { unknown })

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "col auto-y",
		Size = UDim2.fromOffset(scaledCalendarWidth, 0),
		testId = props.testId,
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
				testId = `{props.testId}--previous-month-button`,
			}),
			MonthText = React.createElement(Text, {
				LayoutOrder = 2,
				Text = DateTimeUtilities.monthMap[currViewDate.month],
				tag = "grow text-align-x-right auto-xy",
				testId = `{props.testId}--month-text`,
			}),
			YearText = React.createElement(Text, {
				LayoutOrder = 3,
				Text = tostring(currViewDate.year),
				tag = "grow text-align-x-left auto-xy",
				testId = `{props.testId}--year-text`,
			}),
			NextMonthButton = React.createElement(IconButton, {
				LayoutOrder = 4,
				icon = IconName.ChevronSmallRight,
				isCircular = true,
				onActivated = navigateToNextMonth,
				size = InputSize.Small,
				variant = ButtonVariant.Utility,
				testId = `{props.testId}--next-month-button`,
			}),
		}),
		TimeDropdown = Flags.FoundationDateTimePickerTimeVariantEnabled and if props.showTimeDropdown
			then React.createElement(TimeDropdown, {
				dateTime = selectedDateTimes[1],
				layoutOrder = 2,
				onItemChanged = onTimeDropdownItemChanged,
				width = UDim.new(1, 0),
				testId = `{props.testId}--time-dropdown`,
			})
			else nil,
		CalendarInputContainer = if props.showStartDateTimeCalendarInput
			then React.createElement(View, {
				LayoutOrder = if Flags.FoundationDateTimePickerTimeVariantEnabled then 3 else 2,
				tag = "flex-x-fill size-full-0 auto-y row gap-small align-y-center",
				testId = `{props.testId}--input`,
			}, {
				StartDateTime = React.createElement(TextInput, {
					hasError = startDateTimeInputText ~= ""
						and DateTimeUtilities.getDateTimeFromText(startDateTimeInputText) == nil,
					label = "",
					LayoutOrder = 1,
					onChanged = onStartDateTimeInputChanged,
					onFocusLost = onStartDateTimeInputFocusLost,
					placeholder = "MM/DD/YYYY",
					size = InputSize.Medium,
					text = startDateTimeInputText,
					onFocusGained = function()
						setInputFocusState({ startDateTimeInput = true, endDateTimeInput = false })
					end,
					testId = `{props.testId}--start-datetime-input`,
				}),
				InputSeparator = if props.showEndDateTimeCalendarInput
					then React.createElement(Text, {
						LayoutOrder = 2,
						tag = "auto-xy",
						Text = "-",
					})
					else nil,
				EndDateTime = if props.showEndDateTimeCalendarInput
					then React.createElement(TextInput, {
						hasError = endDateTimeInputText ~= ""
							and DateTimeUtilities.getDateTimeFromText(endDateTimeInputText) == nil,
						isDisabled = not selectedDateTimes[1],
						label = "",
						LayoutOrder = 3,
						onChanged = onEndDateTimeInputChanged,
						onFocusGained = function()
							setInputFocusState({ startDateTimeInput = false, endDateTimeInput = true })
						end,
						onFocusLost = onEndDateTimeInputFocusLost,
						placeholder = "MM/DD/YYYY",
						size = InputSize.Medium,
						text = endDateTimeInputText,
						textBoxRef = endDateTimeInputTextBoxRef,
						testId = `{props.testId}--end-datetime-input`,
					})
					else nil,
			})
			else nil,
		WeekAndDates = React.createElement(View, {
			LayoutOrder = if Flags.FoundationDateTimePickerTimeVariantEnabled then 4 else 3,
			tag = "size-full-0 auto-y",
		}, datesGrid),
	})
end

return Calendar
