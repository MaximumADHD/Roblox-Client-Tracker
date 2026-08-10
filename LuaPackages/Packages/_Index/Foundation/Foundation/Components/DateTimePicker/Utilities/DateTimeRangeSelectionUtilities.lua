--[[
	Draft range click + date-list normalization for DateTimePicker.
	Used by Dual and DualWithPresets (picker onDayActivated).
]]

local DateTimeUtilities = require(script.Parent.Parent.DateTimeUtilities)

-- Single variants drop a second date if one was passed; range variants keep both.
local function normalizeDates(options: {
	acceptsDateRange: boolean,
	dates: DateTime | { DateTime },
}): { DateTime }
	local normalized = if typeof(options.dates) == "table" then options.dates else { options.dates }
	local endDate = normalized[2] :: DateTime?
	if options.acceptsDateRange or endDate == nil then
		return normalized
	end
	return { normalized[1] }
end

--[[
	Click cycle: empty/complete → start only; start only → {start, end}
	(swap if the second click is before start); a third click restarts at that day.
]]
local function selectRangeEndpoint(prev: { DateTime }?, dateTime: DateTime): { DateTime }
	if not prev or not prev[1] or prev[2] then
		return { dateTime }
	end

	local startDate = prev[1]
	if DateTimeUtilities.roundToStartOfDay(dateTime) < DateTimeUtilities.roundToStartOfDay(startDate) then
		return { dateTime, startDate }
	end
	return { startDate, dateTime }
end

return {
	normalizeDates = normalizeDates,
	selectRangeEndpoint = selectRangeEndpoint,
}
