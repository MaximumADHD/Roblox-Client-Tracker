local StyleRoot = script.Parent
local UIBlox = StyleRoot.Parent.Parent
local Roact = require(UIBlox.Parent.Roact)
local StyleConsumer = require(StyleRoot.StyleConsumer)

-- Since our style consumer object receives the whole update-able container,
-- we need to send only the contained style value through to the
-- renderCallback provided
return function(renderCallback)
	assert(type(renderCallback) == "function", "Expect renderCallback to be a function.")
	return Roact.createElement(StyleConsumer, {
		render = function(styleContainer)
			return renderCallback(styleContainer.derivedValues.textSizeOffset)
		end,
	})
end
