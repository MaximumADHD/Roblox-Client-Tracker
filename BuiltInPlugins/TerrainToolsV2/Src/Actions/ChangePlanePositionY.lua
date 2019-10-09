local Action = require(script.Parent.Action)

return Action(script.Name, function(planePositionY)
	planePositionY = tonumber(planePositionY)
	if planePositionY then
		assert(type(planePositionY) == "number", string.format("Expected planePositionY to be a number, received %s", type(planePositionY)))
	end
	return {
		planePositionY = planePositionY
	}
end)