local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetScreenSize", function(sizeX, sizeY)
	return {
		sizeX = sizeX,
		sizeY = sizeY,
	}
end)