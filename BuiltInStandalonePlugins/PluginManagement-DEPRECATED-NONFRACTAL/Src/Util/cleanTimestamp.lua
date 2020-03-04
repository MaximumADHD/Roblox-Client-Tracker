-- Removes decimal points from timestamps,
-- which make them incompatible with localization.

-- timestamp : (string)
return function(timestamp)
	local index = timestamp:find("%.")
	if index then
		return timestamp:sub(1, index - 1) .. "Z"
	else
		return timestamp
	end
end