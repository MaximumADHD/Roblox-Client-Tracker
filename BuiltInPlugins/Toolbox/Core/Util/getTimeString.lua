-- return 1:30:30 formate.
return function (seconds)
	local hour = math.floor(seconds / 3600)
	local min = math.floor(seconds / 60)
	local sec = math.floor(seconds % 60)

	local returnString = ""
	if seconds > 0 then returnString = returnString .. tostring(sec) end
	if min > 0 then returnString = tostring(min) .. ':' .. returnString end
	if hour > 0 then returnString = tostring(hour) .. ':' .. returnString end
	return returnString
end