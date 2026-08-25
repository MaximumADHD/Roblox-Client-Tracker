local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local DateTimeCalendarViewUtilities = require(script.Parent.Parent.Utilities.DateTimeCalendarViewUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type DateRange = DateTimeUtilities.DateRange
type ViewDate = DateTimeCalendarViewUtilities.ViewDate

local ButtonVariant = require(Foundation.Enums.ButtonVariant)
local Dropdown = require(Foundation.Components.Dropdown)
local IconButton = require(Foundation.Components.IconButton)
local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)
local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)
local useScrollToSelectedRef = require(script.Parent.useScrollToSelectedRef)
local useTextSize = require(Foundation.Utility.useTextSize)
local useTokens = require(Foundation.Providers.Style.useTokens)

type Props = {
	LayoutOrder: number?,
	onNextMonth: () -> (),
	onPreviousMonth: () -> (),
	-- Called when the view month/year changes via the dropdowns (navigation only, not selection)
	onViewDateChanged: (ViewDate) -> (),
	selectableDateRange: DateRange?,
	testId: string?,
	viewDate: ViewDate,
}

local YEAR_WINDOW = 50
-- Fixed footprint of the compact utility dropdown around its value text:
-- horizontal padding on both sides, the gap before the chevron, and the chevron
-- icon (~40px measured). The dropdowns hug their text plus this non-text width so the
-- longest month never truncates while short values stay snug, matching Figma.
local DROPDOWN_NON_TEXT_WIDTH = 44
-- Cap the open month/year menus so the long year list scrolls instead of running
-- off-screen; unbounded, its items overflow the surface and clicks miss.
local MENU_MAX_HEIGHT = 200

local function CalendarHeader(props: Props)
	local viewDate = props.viewDate
	local tokens = useTokens()

	local monthText = DateTimeUtilities.monthMap[viewDate.month]
	local yearText = tostring(viewDate.year)
	local monthTextSize = useTextSize(monthText, tokens.Typography.BodySmall)
	local yearTextSize = useTextSize(yearText, tokens.Typography.BodySmall)
	local dropdownNonTextWidth = useScaledValue(DROPDOWN_NON_TEXT_WIDTH)
	local menuMaxHeight = useScaledValue(MENU_MAX_HEIGHT)
	local monthDropdownWidth = if monthTextSize then math.ceil(monthTextSize.X) + dropdownNonTextWidth else 110
	local yearDropdownWidth = if yearTextSize then math.ceil(yearTextSize.X) + dropdownNonTextWidth else 70

	local monthItems = React.useMemo(function(): { Dropdown.DropdownItem }
		local items = {}
		for month, text in DateTimeUtilities.monthMap do
			table.insert(items, {
				id = month,
				text = text,
			})
		end
		return items
	end, {})

	local yearItems = React.useMemo(function(): { Dropdown.DropdownItem }
		local startYear, endYear
		if props.selectableDateRange then
			local startLocalTime = DateTimeUtilities.toLocalTime(props.selectableDateRange.startDate)
			local endLocalTime = DateTimeUtilities.toLocalTime(props.selectableDateRange.endDate)
			startYear = startLocalTime.Year
			endYear = endLocalTime.Year
		else
			startYear = viewDate.year - YEAR_WINDOW
			endYear = viewDate.year + YEAR_WINDOW
		end

		local items = {}
		for year = startYear, endYear do
			table.insert(items, {
				id = year,
				text = tostring(year),
			})
		end
		return items
	end, { props.selectableDateRange, viewDate.year } :: { unknown })

	local onMonthChanged = React.useCallback(function(id: number | string)
		local month = tonumber(id)
		if month then
			props.onViewDateChanged({ month = month, year = viewDate.year })
		end
	end, { props.onViewDateChanged, viewDate.year } :: { unknown })

	local onYearChanged = React.useCallback(function(id: number | string)
		local year = tonumber(id)
		if year then
			props.onViewDateChanged({ month = viewDate.month, year = year })
		end
	end, { props.onViewDateChanged, viewDate.month } :: { unknown })

	local onMonthScrollRef = useScrollToSelectedRef(monthItems, viewDate.month)
	local onYearScrollRef = useScrollToSelectedRef(yearItems, viewDate.year)

	return React.createElement(View, {
		LayoutOrder = props.LayoutOrder,
		tag = "row align-y-center gap-small size-full-0 auto-y padding-y-small",
	}, {
		PreviousMonthButton = React.createElement(IconButton, {
			icon = IconName.ChevronSmallLeft,
			LayoutOrder = 1,
			onActivated = props.onPreviousMonth,
			size = InputSize.Small,
			testId = `{props.testId}--previous-month-button`,
			variant = ButtonVariant.Utility,
		}),
		MonthYearDropdowns = React.createElement(View, {
			LayoutOrder = 2,
			tag = "row align-x-center align-y-center grow gap-small auto-y",
		}, {
			MonthDropdown = React.createElement(Dropdown.Root, {
				items = monthItems,
				label = "",
				LayoutOrder = 1,
				maxHeight = menuMaxHeight,
				onItemChanged = onMonthChanged,
				scrollingFrameRef = onMonthScrollRef,
				size = InputSize.XSmall,
				testId = `{props.testId}--month-dropdown`,
				value = viewDate.month,
				variant = InputVariant.Utility,
				width = UDim.new(0, monthDropdownWidth),
			}),
			YearDropdown = React.createElement(Dropdown.Root, {
				items = yearItems,
				label = "",
				LayoutOrder = 2,
				maxHeight = menuMaxHeight,
				onItemChanged = onYearChanged,
				scrollingFrameRef = onYearScrollRef,
				size = InputSize.XSmall,
				testId = `{props.testId}--year-dropdown`,
				value = viewDate.year,
				variant = InputVariant.Utility,
				width = UDim.new(0, yearDropdownWidth),
			}),
		}),
		NextMonthButton = React.createElement(IconButton, {
			icon = IconName.ChevronSmallRight,
			LayoutOrder = 3,
			onActivated = props.onNextMonth,
			size = InputSize.Small,
			testId = `{props.testId}--next-month-button`,
			variant = ButtonVariant.Utility,
		}),
	})
end

return CalendarHeader
