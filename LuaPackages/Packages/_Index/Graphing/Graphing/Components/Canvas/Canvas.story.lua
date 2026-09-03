local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Canvas = require(Graphing.Components.Canvas)
local Grid = require(Graphing.Components.Grid)
local Scale = require(Graphing.Components.Scale)
local Types = require(Graphing.Types)

local function Story(_)
	return React.createElement(Canvas, {
		GraphRect = Rect.new(0, 0, 10, 10),
		children = {
			Grid = React.createElement(Grid, {
				XAxis = {
					Type = "Uniform",
					Unit = 1,
				},
				YAxis = {
					Type = "Uniform",
					Unit = 1,
				},
			}),
		} :: Types.Children,
		childrenUnclipped = {
			XScale = React.createElement(Scale, {
				Side = "Bottom",
				Schema = {
					Type = "Uniform",
					Unit = 2,
				},
			}),
			YScale = React.createElement(Scale, {
				Side = "Left",
				Schema = {
					Type = "Uniform",
					Unit = 2,
				},
			}),
		} :: Types.Children,
	})
end

return {
	summary = "Simple example showing how to create a canvas and give it some children.",
	story = Story,
	controls = {},
}
