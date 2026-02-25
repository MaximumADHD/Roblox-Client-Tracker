local Foundation = script:FindFirstAncestor("Foundation")

local LocalizationService = require(Foundation.Utility.Wrappers).Services.LocalizationService
local Translator = require(Foundation.Utility.Localization.Translator)

local DATE_COMPOSITE_TOKEN = "L"
local TIME_COMPOSITE_TOKEN = "LT"

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
local function roundToStartOfDay(dateTime: DateTime): number
	local localTime = dateTime:ToLocalTime()
	return DateTime.fromLocalTime(localTime.Year, localTime.Month, localTime.Day).UnixTimestamp
end

-- Rounds a DateTime object down to the nearest minute
local function roundDownToNearestMinute(dateTime: DateTime): DateTime
	local localTime = dateTime:ToLocalTime()
	return DateTime.fromLocalTime(localTime.Year, localTime.Month, localTime.Day, localTime.Hour, localTime.Minute, 0)
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
	local startTimestamp = roundToStartOfDay(selectableDateRange.startDate)
	local endTimestamp = roundToStartOfDay(selectableDateRange.endDate)
	local checkTimestamp = roundToStartOfDay(date)

	return checkTimestamp >= startTimestamp and checkTimestamp <= endTimestamp
end

--[[
	Calculates the hours and minutes from a time 12 or 24 hour format time string

	Returns hours and minutes as two numbers, or nil if the time string is invalid
]]
local function getHoursAndMinutesFromString(timeStr: string): (number?, number?)
	-- Remove all whitespace from the text
	local trimmedTimeStr = timeStr:gsub("%s+", "")

	-- Validate the format matches exactly one of the two supported patterns
	local is24HourFormat = string.match(trimmedTimeStr, "^%d%d:%d%d$")
	local is12HourFormat = string.match(trimmedTimeStr, "^%d%d?:%d%d[AP]M$")

	if not is24HourFormat and not is12HourFormat then
		return nil
	end

	local hours: number?, minutes: number?

	if is12HourFormat then
		-- 12-hour format - extract hours and minutes using pattern matching
		local hourStr, minuteStr = string.match(trimmedTimeStr, "^(%d%d?):(%d%d)[AP]M$")
		local rawHours = tonumber(hourStr)
		minutes = tonumber(minuteStr)

		-- Validate 12-hour format ranges
		if not rawHours or not minutes or rawHours < 1 or rawHours > 12 or minutes < 0 or minutes > 59 then
			return nil
		end

		-- Convert 12-hour to 24-hour format
		if string.sub(trimmedTimeStr, -2) == "PM" and rawHours ~= 12 then
			hours = rawHours + 12
		elseif string.sub(trimmedTimeStr, -2) == "AM" and rawHours == 12 then
			hours = 0
		else
			hours = rawHours
		end
	else
		-- 24-hour format - extract hours and minutes using pattern matching
		local hourStr, minuteStr = string.match(trimmedTimeStr, "^(%d%d?):(%d%d)$")
		hours = tonumber(hourStr)
		minutes = tonumber(minuteStr)

		-- Validate 24-hour format ranges
		if not hours or not minutes or hours < 0 or hours > 23 or minutes < 0 or minutes > 59 then
			return nil
		end
	end

	return hours, minutes
end

--[[
	Returns a DateTime object if the date string is valid, otherwise returns nil
	Supported date delimiters: /, ., -
	Supported date formats: MM/DD/YYYY, YYYY/MM/DD
	Supported time formats: 12-hour (HH:MM AM/PM) or 24-hour (HH:MM)
	Supported date and time delimeter: , (only comma is supported)
]]
local function getDateTimeFromText(dateTimeStr: string): DateTime?
	local dateStr, timeStr

	-- Check if str is a date and time
	if string.find(dateTimeStr, ",") then
		dateStr, timeStr = dateTimeStr:match("^([^,]+),%s*(.+)$")
	else
		dateStr = dateTimeStr
		timeStr = "00:00"
	end

	if not dateStr or not timeStr then
		return nil
	end

	-- Remove all whitespace from the text
	local trimmedDateStr = dateStr:gsub("%s+", "")

	local hours, minutes = getHoursAndMinutesFromString(timeStr)

	if dateStr then
		-- Determine format by finding the first delimiter position
		local firstDelimiterPos = trimmedDateStr:find("[/%.%-]")

		local success, dateTime = pcall(function()
			if firstDelimiterPos == 3 then
				-- MM/DD/YYYY
				local month, day, year = trimmedDateStr:match("^(%d%d)[/%.%-](%d%d)[/%.%-](%d%d%d%d)$")
				return DateTime.fromLocalTime(tonumber(year), tonumber(month), tonumber(day), hours, minutes, 0)
			elseif firstDelimiterPos == 5 then
				-- YYYY/MM/DD
				local year, month, day = trimmedDateStr:match("^(%d%d%d%d)[/%.%-](%d%d)[/%.%-](%d%d)$")
				return DateTime.fromLocalTime(tonumber(year), tonumber(month), tonumber(day), hours, minutes, 0)
			else
				-- Unsupported format
				error("Invalid date format: " .. trimmedDateStr)
			end
		end)

		if success and dateTime then
			return dateTime
		end
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

local function formatLocalTime(dateTime: DateTime, includeTime: boolean?)
	local localDateTime = dateTime:FormatLocalTime(DATE_COMPOSITE_TOKEN, LocalizationService.RobloxLocaleId)
	if includeTime then
		localDateTime = localDateTime
			.. ", "
			.. dateTime:FormatLocalTime(TIME_COMPOSITE_TOKEN, LocalizationService.RobloxLocaleId)
	end

	return localDateTime
end

return {
	DATE_COMPOSITE_TOKEN = DATE_COMPOSITE_TOKEN,
	TIME_COMPOSITE_TOKEN = TIME_COMPOSITE_TOKEN,
	formatLocalTime = formatLocalTime,
	getDaysInMonth = getDaysInMonth,
	getFirstDayOfWeek = getFirstDayOfWeek,
	getLastDayOfWeek = getLastDayOfWeek,
	getNextMonthInfo = getNextMonthInfo,
	getPrevMonthInfo = getPrevMonthInfo,
	isDateWithinRange = isDateWithinRange,
	getDateTimeFromText = getDateTimeFromText,
	monthMap = monthMap,
	roundDownToNearestMinute = roundDownToNearestMinute,
	roundToStartOfDay = roundToStartOfDay,
	weekdays = weekdays,
}
