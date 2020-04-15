local StyleRoot = script.Parent
local UIBloxRoot = StyleRoot.Parent
local Roact = require(UIBloxRoot.Parent.Roact)
local StyleConsumer = require(StyleRoot.StyleConsumer)

--[[
	This is a utility function that will wrap StyleConsumer.
	`renderCallback` will be invoked with the current style. It should return a Roact element.
]]
return function(renderCallback)
	assert(type(renderCallback) == "function", "Expect renderCallback to be a function.")
	return Roact.createElement(StyleConsumer, { render = renderCallback })
end