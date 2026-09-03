local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Canvas = require(Graphing.Components.Canvas)
local Grid = require(Graphing.Components.Grid)
local Scrollbar = require(Graphing.Components.Scrollbar)
local Types = require(Graphing.Types)

local function Story(_)
	local graphRect, _setGraphRect = React.useState(Rect.new(0, 0, 10, 10))
	local viewportRect, setViewportRect = React.useState(graphRect)

	return React.createElement(Canvas, {
		GraphRect = graphRect,
		ViewportRect = viewportRect,

		children = {
			Grid = React.createElement(Grid, {
				XAxis = {
					Type = "Uniform",
					Unit = 1,
				},
				XAxisMinor = {
					Type = "Uniform",
					Unit = 0.5,
				},
				YAxis = {
					Type = "Uniform",
					Unit = 1,
				},
				YAxisMinor = {
					Type = "Uniform",
					Unit = 0.5,
				},
			}),
		} :: Types.Children,
		childrenUnclipped = {
			ScrollbarX = React.createElement(Scrollbar, {
				Axis = "X",
				MinZoom = 0.1,
				OnViewChanged = function(min, max)
					setViewportRect(Rect.new(min, viewportRect.Min.Y, max, viewportRect.Max.Y))
				end,
			}),
			ScrollbarY = React.createElement(Scrollbar, {
				Axis = "Y",
				MinZoom = 0.1,
				OnViewChanged = function(min, max)
					setViewportRect(Rect.new(viewportRect.Min.X, min, viewportRect.Max.X, max))
				end,
			}),
		} :: Types.Children,
	})
end

return {
	summary = "Simple example demonstrating how to use scrollbars.",
	story = Story,
	controls = {},
}
