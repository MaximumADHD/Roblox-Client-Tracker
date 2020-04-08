local Action = require(script.Parent.Action)

return Action(script.Name, function(baseSize)
	local baseSizeNum = tonumber(baseSize)
	assert(baseSizeNum, ("Expected baseSize to be a number, received %s"):format(type(baseSize)))

	return {
		baseSize = baseSizeNum,
	}
end)
