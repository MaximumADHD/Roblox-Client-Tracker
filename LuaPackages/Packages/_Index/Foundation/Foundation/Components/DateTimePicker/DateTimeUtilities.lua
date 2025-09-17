local Foundation = script:FindFirstAncestor("Foundation")

local Translator = require(Foundation.Utility.Localization.Translator)

local monthMap = {
	[1] = Translator:FormatByKey("CommonUI.Controls.Label.January"),
	[2] = Translator:FormatByKey("CommonUI.Controls.Label.February"),
	[3] = Translator:FormatByKey("CommonUI.Controls.Label.March"),
	[4] = Translator:FormatByKey("CommonUI.Controls.Label.April"),
	[5] = Translator:FormatByKey("CommonUI.Controls.Label.May"),
	[6] = Translator:FormatByKey("CommonUI.Controls.Label.June"),
	[7] = Translator:FormatByKey("CommonUI.Controls.Label.July"),
	[8] = Translator:FormatByKey("CommonUI.Controls.Label.August"),
	[9] = Translator:FormatByKey("CommonUI.Controls.Label.September"),
	[10] = Translator:FormatByKey("CommonUI.Controls.Label.October"),
	[11] = Translator:FormatByKey("CommonUI.Controls.Label.November"),
	[12] = Translator:FormatByKey("CommonUI.Controls.Label.December"),
}

local weekdays = {
	[1] = Translator:FormatByKey("CommonUI.Controls.Label.SundayAbbreviated"),
	[2] = Translator:FormatByKey("CommonUI.Controls.Label.MondayAbbreviated"),
	[3] = Translator:FormatByKey("CommonUI.Controls.Label.TuesdayAbbreviated"),
	[4] = Translator:FormatByKey("CommonUI.Controls.Label.WednesdayAbbreviation"),
	[5] = Translator:FormatByKey("CommonUI.Controls.Label.ThursdayAbbreviated"),
	[6] = Translator:FormatByKey("CommonUI.Controls.Label.FridayAbbreviated"),
	[7] = Translator:FormatByKey("CommonUI.Controls.Label.SaturdayAbbreviated"),
}

local function getDaysInMonth(month: number, year: number): number
	local daysInMonth = { 31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31 }
	if month == 2 then
		-- Check for leap year to determine if February has 29 days.
		-- A year is a leap year if it is divisible by 4,
		-- except for years divisible by 100 but not by 400
		if (year % 4 == 0 and year % 100 ~= 0) or (year % 400 == 0) then
			return 29
		end
	end
	return daysInMonth[month]
end

-- Utility function to get the day of the week for the first day of a month (0 for Sunday, 6 for Saturday)
local function getFirstDayOfWeek(month: number, year: number): number
	local dateTime = DateTime.fromLocalTime(year, month, 1)

	if dateTime then
		local weekday = dateTime:FormatLocalTime("d", "en-us")
		return tonumber(weekday) or 0
	end

	return 0
end

-- Utility function to get the day of the week for the last day of a month (0 for Sunday, 6 for Saturday)
local function getLastDayOfWeek(month: number, year: number): number
	local dateTime = DateTime.fromLocalTime(year, month, getDaysInMonth(month, year))

	if dateTime then
		local weekday = dateTime:FormatLocalTime("d", "en-us")
		return tonumber(weekday) or 0
	end

	return 0
end

-- Helper function to round a DateTime to the start of the day
local function _roundToStartOfDay(dateTime: DateTime): number
	local localTime = dateTime:ToLocalTime()
	return DateTime.fromLocalTime(localTime.Year, localTime.Month, localTime.Day).UnixTimestamp
end

-- Check if a date is within range
local function isDateWithinRange(
	date: DateTime,
	selectableDateRange: {
		startDate: DateTime,
		endDate: DateTime,
	}
): boolean
	-- Round all timestamps to the start of the day for date-only comparison
	local startTimestamp = _roundToStartOfDay(selectableDateRange.startDate)
	local endTimestamp = _roundToStartOfDay(selectableDateRange.endDate)
	local checkTimestamp = _roundToStartOfDay(date)

	return checkTimestamp >= startTimestamp and checkTimestamp <= endTimestamp
end

--[[
	Returns a DateTime object if the date string is valid, otherwise returns nil
	Supported delimiters: /, ., -
	Supported formats: MM/DD/YYYY, YYYY/MM/DD
]]
local function getDateTimeFromText(dateStr: string): DateTime?
	-- Determine format by finding the first delimiter position
	local firstDelimiterPos = dateStr:find("[/%.%-]")
	if not firstDelimiterPos then
		return nil
	end

	local success, dateTime = pcall(function()
		if firstDelimiterPos == 3 then
			-- MM/DD/YYYY
			local month, day, year = dateStr:match("^(%d%d)[/%.%-](%d%d)[/%.%-](%d%d%d%d)$")
			return DateTime.fromLocalTime(tonumber(year), tonumber(month), tonumber(day))
		elseif firstDelimiterPos == 5 then
			-- YYYY/MM/DD
			local year, month, day = dateStr:match("^(%d%d%d%d)[/%.%-](%d%d)[/%.%-](%d%d)$")
			return DateTime.fromLocalTime(tonumber(year), tonumber(month), tonumber(day))
		else
			-- Unsupported format
			error("Invalid date format: " .. dateStr)
		end
	end)

	if success and dateTime then
		return dateTime
	end

	return nil
end

local function getPrevMonthInfo(month: number, year: number)
	if month == 1 then
		return 12, year - 1
	end
	return month - 1, year
end

local function getNextMonthInfo(month: number, year: number)
	if month == 12 then
		return 1, year + 1
	end
	return month + 1, year
end

return {
	getDaysInMonth = getDaysInMonth,
	getFirstDayOfWeek = getFirstDayOfWeek,
	getLastDayOfWeek = getLastDayOfWeek,
	getNextMonthInfo = getNextMonthInfo,
	getPrevMonthInfo = getPrevMonthInfo,
	isDateWithinRange = isDateWithinRange,
	getDateTimeFromText = getDateTimeFromText,
	monthMap = monthMap,
	weekdays = weekdays,
}
