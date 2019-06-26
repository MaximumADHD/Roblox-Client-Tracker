local UIBloxRoot = script.Parent.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local ImageSetConsumer = require(UIBloxRoot.ImageSet.ImageSetConsumer)

--[[
	This is a utility function that will wrap ImageSetConsumer.
	`renderCallback` will be invoked with the current imageset. It should return a Roact element.
]]
return function(renderCallback)
	assert(type(renderCallback) == "function", "Expect renderCallback to be a function.")
	return Roact.createElement(ImageSetConsumer, { render = renderCallback })
end