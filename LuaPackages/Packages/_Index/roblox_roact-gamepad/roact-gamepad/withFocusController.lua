--!strict
-- Manages groups of selectable elements, reacting to selection changes for
-- individual items and triggering events for group selection changes
local Packages = script.Parent.Parent
local Roact = require(Packages.Roact)

local FocusContext = require(script.Parent.FocusContext)

local function FocusControllerConsumer(props)
	return Roact.createElement(FocusContext.Consumer, {
		render = function(navContext)
			local focusController = navContext.focusNode.focusController

			return props.render(focusController)
		end,
	})
end

local function withFocusController(render)
	return Roact.createElement(FocusControllerConsumer, {
		render = render
	})
end

return withFocusController