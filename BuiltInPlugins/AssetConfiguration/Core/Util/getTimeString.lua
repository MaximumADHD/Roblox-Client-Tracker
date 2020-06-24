-- Returns a time in seconds to a 00:00 (min:sec) format
return function (seconds, minSeconds)
	local min = math.floor(seconds / 60)
	local sec = math.floor(seconds % 60)

	if minSeconds ~= nil and sec == 0 then
		sec = math.max(sec, minSeconds)
	end

	return string.format("%d:%02d", min, sec)
end