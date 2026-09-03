local Graphing = script:FindFirstAncestor("Graphing")
local Packages = Graphing.Parent
local React = require(Packages.React)

local Canvas = require(Graphing.Components.Canvas)
local Grid = require(Graphing.Components.Grid)
local ResizablePanel = require(Graphing.Components.ResizablePanel)
local Types = require(Graphing.Types)

local function Story(_)
	local graphRect, _setGraphRect = React.useState(Rect.new(0, 0, 10, 10))
	local panelRect, setPanelRect = React.useState(Rect.new(1, 1, 3, 3))
	local panel2Rect, setPanel2Rect = React.useState(Rect.new(7, 7, 9, 9))

	return React.createElement(Canvas, {
		GraphRect = graphRect,

		children = {
			Grid = React.createElement(Grid, {
				XAxis = {
					Type = "Uniform",
					Unit = 0.5,
				},
				YAxis = {
					Type = "Uniform",
					Unit = 1,
				},
			}),

			Panel = React.createElement(ResizablePanel, {
				Rect = panelRect,
				SetRect = setPanelRect,
				MinSize = Vector2.new(1, 1),

				DragEnabled = true,
				CornerBottomRightEnabled = true,
				EdgeRightEnabled = true,
				EdgeBottomEnabled = true,

				XSnap = 0.125,
				YSnap = 0.25,

				BackgroundTransparency = 0,
				ZIndex = 2,
			}, {
				Text = React.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					Text = "this panel can be resized from the right or the bottom",
					TextColor3 = Color3.new(1, 1, 1),
					TextWrapped = true,

					-- the text isn't interactable, so z-sort it behind the panel's drag detection
					ZIndex = -1,
				}),
			}),

			Panel2 = React.createElement(ResizablePanel, {
				Rect = panel2Rect,
				SetRect = setPanel2Rect,
				MinSize = Vector2.new(1, 1),

				DragEnabled = true,
				CornerTopLeftEnabled = true,
				EdgeLeftEnabled = true,
				EdgeTopEnabled = true,

				XSnap = 0.125,
				YSnap = 0.25,

				BackgroundTransparency = 0,
				BackgroundColor3 = Color3.new(0.4, 0.8, 0.4),
				ZIndex = 1,
			}, {
				Text = React.createElement("TextLabel", {
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					Size = UDim2.fromScale(1, 1),
					Text = "this panel can be resized from the left or the top",
					TextColor3 = Color3.new(0, 0, 0),
					TextWrapped = true,

					-- the text isn't interactable, so z-sort it behind the panel's drag detection
					ZIndex = -1,
				}),
			}),
		} :: Types.Children,
	})
end

return {
	summary = "Example with two moveable, resizable panels with handles on different sides.",
	story = Story,
	controls = {},
}
