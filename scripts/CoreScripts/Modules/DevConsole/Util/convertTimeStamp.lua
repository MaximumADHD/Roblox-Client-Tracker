--!nonstrict
local function numberWithZero(num)
	return (num < 10 and "0" or "") .. num
end

local function convertTimeStamp(timeStamp)
	local localTime = math.floor(timeStamp - os.time() + tick())
	local dayTime = localTime % 86400

	local hour = math.floor(dayTime / 3600)

	dayTime = dayTime - (hour * 3600)
	local minute = math.floor(dayTime / 60)

	dayTime = dayTime - (minute * 60)

	local h = numberWithZero(hour)
	local m = numberWithZero(minute)
	local s = numberWithZero(dayTime)

	return string.format("%s:%s:%s", h, m, s)
end

return convertTimeStamp