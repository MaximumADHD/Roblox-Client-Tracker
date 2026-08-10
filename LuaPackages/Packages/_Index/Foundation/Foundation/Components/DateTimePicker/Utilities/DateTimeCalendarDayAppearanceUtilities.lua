local DateTimeCalendarViewUtilities = require(script.Parent.DateTimeCalendarViewUtilities)
local DateTimeRangeSelectionUtilities = require(script.Parent.DateTimeRangeSelectionUtilities)
local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)
type DateRange = DateTimeUtilities.DateRange
type DateTimeLocalTime = DateTimeUtilities.DateTimeLocalTime

local function isDaySelected(
	dateTime: DateTime,
	selectedLocalTimes: { DateTimeLocalTime },
	isDateRange: boolean
): boolean
	local localDateTime = DateTimeUtilities.toLocalTime(dateTime)
	local selectedDates: { DateTimeLocalTime }
	if isDateRange then
		selectedDates = selectedLocalTimes
	elseif selectedLocalTimes[1] ~= nil then
		selectedDates = { selectedLocalTimes[1] }
	else
		selectedDates = {}
	end
	for _, localSelectedDateTime in selectedDates do
		if
			localSelectedDateTime.Day == localDateTime.Day
			and localSelectedDateTime.Month == localDateTime.Month
			and localSelectedDateTime.Year == localDateTime.Year
		then
			return true
		end
	end
	return false
end

--[[
	Dates used for in-range highlight / band while picking.
	Complete ranges ignore hover. Start-only + hover → ordered preview pair (either direction).
]]
local function resolveHighlightDates(selectedDates: { DateTime }?, hoveredDate: DateTime?): { DateTime }
	if not selectedDates or not selectedDates[1] then
		return selectedDates or {}
	end
	if selectedDates[2] or not hoveredDate then
		return selectedDates
	end
	return DateTimeRangeSelectionUtilities.selectRangeEndpoint(selectedDates, hoveredDate)
end

local function isDayHighlighted(dateTime: DateTime, highlightDates: { DateTime }, isDateRange: boolean): boolean
	if not isDateRange then
		return false
	end
	if not highlightDates[1] or not highlightDates[2] then
		return false
	end
	return DateTimeUtilities.isDateWithinRange(dateTime, { startDate = highlightDates[1], endDate = highlightDates[2] })
end

local function getRangeBand(
	dateTime: DateTime,
	highlightDates: { DateTime },
	isDateRange: boolean,
	-- Half-band connectors only for selected endpoint circles. Preview ends pass false.
	isSelected: boolean?
): (UDim2?, UDim2?, string?)
	local startDateTime = highlightDates[1]
	local endDateTime = highlightDates[2]
	if not (isDateRange and startDateTime and endDateTime) then
		return nil, nil, nil
	end
	local range = { startDate = startDateTime, endDate = endDateTime }
	local lo, hi = DateTimeCalendarViewUtilities.getRangeDayBounds(range)
	if lo == hi then
		return nil, nil, nil
	end
	local day = DateTimeUtilities.roundToStartOfDay(dateTime)
	local useConnectorBand = isSelected ~= false

	local function fullCellBand(): (UDim2?, UDim2?, string?)
		return nil, nil, DateTimeCalendarViewUtilities.getRangeBandRadiusTag(dateTime, range, "full")
	end

	if day == lo then
		if useConnectorBand then
			return UDim2.fromScale(0.5, 0),
				UDim2.fromScale(0.5, 1),
				DateTimeCalendarViewUtilities.getRangeBandRadiusTag(dateTime, range, "start")
		end
		return fullCellBand()
	elseif day == hi then
		if useConnectorBand then
			return UDim2.fromScale(0, 0),
				UDim2.fromScale(0.5, 1),
				DateTimeCalendarViewUtilities.getRangeBandRadiusTag(dateTime, range, "end")
		end
		return fullCellBand()
	elseif isDayHighlighted(dateTime, highlightDates, isDateRange) then
		return fullCellBand()
	end
	return nil, nil, nil
end

local function isDaySelectable(dateTime: DateTime, selectableDateRange: DateRange?): boolean
	if selectableDateRange and not DateTimeUtilities.isDateWithinRange(dateTime, selectableDateRange) then
		return false
	end
	return true
end

return {
	getRangeBand = getRangeBand,
	isDayHighlighted = isDayHighlighted,
	isDaySelectable = isDaySelectable,
	isDaySelected = isDaySelected,
	resolveHighlightDates = resolveHighlightDates,
}
