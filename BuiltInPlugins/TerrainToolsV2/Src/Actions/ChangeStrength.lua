local Action = require(script.Parent.Action)

return Action(script.Name, function(strength)
	local strengthNum = tonumber(strength)
	assert(strengthNum, ("Expected strength to be a number, received %s"):format(type(strength)))

	return {
		strength = strengthNum,
	}
end)
