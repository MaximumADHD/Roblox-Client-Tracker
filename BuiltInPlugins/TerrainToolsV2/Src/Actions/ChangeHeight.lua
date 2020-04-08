local Action = require(script.Parent.Action)

return Action(script.Name, function(height)
	local heightNum = tonumber(height)
	assert(heightNum, ("Expected height to be a number, received %s"):format(type(height)))

	return {
		height = heightNum,
	}
end)
