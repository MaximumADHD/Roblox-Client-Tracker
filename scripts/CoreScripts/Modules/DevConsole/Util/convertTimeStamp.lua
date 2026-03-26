--!nonstrict
local FFlagDevConsoleFixTimestampDST = game:DefineFastFlag("DevConsoleFixTimestampDST", false)

local function numberWithZero(num)
	return (num < 10 and "0" or "") .. num
end

local function convertTimeStamp(timeStamp)
	local hour, minute, second

	if FFlagDevConsoleFixTimestampDST then
		local dateTable = os.date("*t", timeStamp)
		hour = dateTable.hour
		minute = dateTable.min
		second = dateTable.sec
	else
		local localTime = math.floor(timeStamp - os.time() + tick())
		local dayTime = localTime % 86400

		hour = math.floor(dayTime / 3600)
		dayTime = dayTime - (hour * 3600)
		minute = math.floor(dayTime / 60)
		dayTime = dayTime - (minute * 60)
		second = dayTime
	end

	local h = numberWithZero(hour)
	local m = numberWithZero(minute)
	local s = numberWithZero(second)

	return string.format("%s:%s:%s", h, m, s)
end

return convertTimeStamp
