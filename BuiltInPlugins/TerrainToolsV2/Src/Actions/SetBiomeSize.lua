local Action = require(script.Parent.Action)

return Action(script.Name, function(biomeSize)
	local biomeSizeNum = tonumber(biomeSize)
	assert(biomeSizeNum, ("Expected biomeSize to be a number, received %s"):format(type(biomeSize)))

	return {
		biomeSize = biomeSizeNum,
	}
end)
