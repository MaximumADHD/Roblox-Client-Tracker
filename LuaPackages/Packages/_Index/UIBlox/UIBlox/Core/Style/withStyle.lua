local StyleRoot = script.Parent
local UIBlox = StyleRoot.Parent.Parent
local Roact = require(UIBlox.Parent.Roact)
local StyleConsumer = require(StyleRoot.StyleConsumer)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)

type AppStyle = StyleTypes.AppStyle

return function(renderCallback: (style: AppStyle) -> any)
	assert(type(renderCallback) == "function", "Expect renderCallback to be a function.")
	return Roact.createElement(StyleConsumer, {
		render = function(styleContainer)
			return renderCallback(styleContainer.style)
		end,
	})
end
