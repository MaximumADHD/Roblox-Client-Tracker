local Action = require(script.Parent.Action)

return Action(script.Name, function(planePositionY)
	local planePositionYNum = tonumber(planePositionY)
	assert(planePositionYNum, ("Expected planePositionY to be a number, received %s"):format(type(planePositionY)))

	return {
		planePositionY = planePositionYNum,
	}
end)
