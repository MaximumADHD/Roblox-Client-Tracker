--[[
	A utility for elements that need to display on top of all other elements,
	and elements that need to capture focus and block input to all other elements.

	Uses Portals to place elements in the main PluginGui. You will need to
	pass in the main PluginGui when creating a FocusProvider.

		withFocus(pluginGui)
			Gets the top-level PluginGui. Useful for querying its size or state.
			For example, a Tooltip queries the size of the pluginGui to avoid
			clipping the tooltip off of the right or bottom side of the screen.

		ShowOnTop
			A Roact component that wraps its children such that they will be
			rendered on top of all other components.
			Props:
				int Priority = The ZIndex of this component relative to other
					focused elements.

		CaptureFocus
			A Roact component that wraps its children such that they will be
			rendered on top of all other components, and will block input to all
			other components.

			Props:
				int Priority = The ZIndex of this component relative to other
					focused elements.
				callback OnFocusLost = A callback for when the user clicks
					outside of the focused element.
]]

local FOCUSED_ZINDEX = 100000

local Roact = require(script.Parent.Parent.Roact)
local Symbol = require(script.Parent.Parent.Roact.Symbol)
local focusKey = Symbol.named("UILibraryFocus")

local FocusProvider = Roact.PureComponent:extend("UILibraryFocusProvider")
function FocusProvider:init()
	local pluginGui = self.props.pluginGui
	assert(pluginGui ~= nil, "No pluginGui was given to this FocusProvider.")

	self._context[focusKey] = pluginGui
end
function FocusProvider:render()
	return Roact.oneChild(self.props[Roact.Children])
end

-- the consumer should complain if it doesn't have a focus
local FocusConsumer = Roact.PureComponent:extend("UILibraryFocusConsumer")
function FocusConsumer:init()
	assert(self._context[focusKey] ~= nil, "No FocusProvider found.")
	assert(self.props.focusedRender ~= nil, "Use withFocus, not FocusConsumer.")
	self.pluginGui = self._context[focusKey]
end

function FocusConsumer:render()
	return self.props.focusedRender(self.pluginGui)
end

-- withFocus should provide a simple way to make components that use focus
-- callback : function<RoactElement>(FocusConsumer)
local function withFocus(callback)
	return Roact.createElement(FocusConsumer, {
		focusedRender = callback
	})
end

local CaptureFocus = Roact.PureComponent:extend("UILibraryCaptureFocus")
function CaptureFocus:render()
	return withFocus(function(pluginGui)
		local priority = self.props.Priority or 0
		return Roact.createElement(Roact.Portal, {
			target = pluginGui,
		}, {
			-- Consume all clicks outside the element to close it when it loses focus
			TopLevelDetector = Roact.createElement("ImageButton", {
				ZIndex = priority + FOCUSED_ZINDEX,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
				[Roact.Event.Activated] = self.props.OnFocusLost,
			}, {
				-- Also block all scrolling events going through
				ScrollBlocker = Roact.createElement("ScrollingFrame", {
					Size = UDim2.new(1, 0, 1, 0),
					-- We need to have ScrollingEnabled = true for this frame for it to block
					-- But we don't want it to actually scroll, so its canvas must be same size as the frame
					ScrollingEnabled = true,
					CanvasSize = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
					ScrollBarThickness = 0,
				}, self.props[Roact.Children]),
			}),
		})
	end)
end

local ShowOnTop = Roact.PureComponent:extend("UILibraryShowOnTop")
function ShowOnTop:render()
	return withFocus(function(pluginGui)
		local priority = self.props.Priority or 0
		return Roact.createElement(Roact.Portal, {
			target = pluginGui,
		}, {
			TopLevelFrame = Roact.createElement("Frame", {
				ZIndex = priority + FOCUSED_ZINDEX,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundTransparency = 1,
			}, self.props[Roact.Children]),
		})
	end)
end

return {
	Provider = FocusProvider,
	Consumer = FocusConsumer,
	CaptureFocus = CaptureFocus,
	ShowOnTop = ShowOnTop,
	withFocus = withFocus,
}