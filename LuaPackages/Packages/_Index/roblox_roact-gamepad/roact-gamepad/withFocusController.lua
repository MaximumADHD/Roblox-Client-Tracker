--!strict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

local FocusContext = require(script.Parent.FocusContext)

local FocusControllerConsumer = Roact.Component:extend("FocusControllerConsumer")

function FocusControllerConsumer(props)
	return Roact.createElement(FocusContext.Consumer, {
		render = function(parentFocusNode)
			local focusController = parentFocusNode.focusController

			return props.render(focusController)
		end,
	})
end

function withFocusController(render)
	return Roact.createElement(FocusControllerConsumer, {
		render = render
	})
end

return withFocusController