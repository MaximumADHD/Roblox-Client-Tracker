local FFlagDevFrameworkSplitPane = game:GetFastFlag("DevFrameworkSplitPane")
if not FFlagDevFrameworkSplitPane then
	return
end

local Framework = script.Parent.Parent.Parent
local Roact = require(Framework.Parent.Roact)

local SplitPane = require(script.Parent)
local TextLabel = require(Framework.UI.TextLabel)
local ScrollingFrame = require(Framework.UI.ScrollingFrame)

local Dash = require(Framework.packages.Dash)
local join = Dash.join

local ControlledSplitPane = Roact.PureComponent:extend("ControlledSplitPane")

function ControlledSplitPane:init()
	self.state = {
		sizes = self.props.InitialSizes
	}
	self.onSizesChange = function(sizes)
		self:setState({
			sizes = sizes
		})
	end
end

function ControlledSplitPane:render()
	local props = self.props
	local state = self.state
	return Roact.createElement(SplitPane, join({
		Sizes = state.sizes,
		OnSizesChange = self.onSizesChange,
		MinSizes = props.MinSizes,
		PaneStyle = "BorderBox",
		BarStyle = "BorderBox",
	}, props))
end

return {
	stories = {
		{
			name = "Fixed pane",
			story = function()
				return Roact.createElement(ControlledSplitPane, {
					UseScale = true,
					ClampSize = true,
					Size = UDim2.fromOffset(500, 300),
					MinSizes = {UDim.new(0.1, 0), UDim.new(0.1, 0), UDim.new(0.1, 0), UDim.new(0.1, 0)},
					InitialSizes = {UDim.new(0.25, 0), UDim.new(0.25, 0), UDim.new(0.25, 0), UDim.new(0.25, 0)},
				}, {
					Roact.createElement(TextLabel, {
						Text = "This content appears in the first pane and will wrap based on the pane size",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
					Roact.createElement(TextLabel, {
						Text = "This content appears in the second pane and will wrap based on the pane size",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
					Roact.createElement(TextLabel, {
						Text = "This content appears in the third pane and will wrap based on the pane size",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
					Roact.createElement(TextLabel, {
						Text = "This content appears in the fourth pane and will wrap based on the pane size",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
				})
			end,
		},
		{
			name = "Dynamic pane",
			story = function()
				return Roact.createElement(ScrollingFrame, {
					CanvasSize = UDim2.fromScale(0, 0),
					AutomaticCanvasSize = Enum.AutomaticSize.XY,
					Size = UDim2.fromOffset(500, 100),
					ScrollingDirection = Enum.ScrollingDirection.X,
				}, {
					Child = Roact.createElement(ControlledSplitPane, {
						AutomaticSize = Enum.AutomaticSize.X,
						Size = UDim2.fromOffset(0, 100),
						MinSizes = {
							UDim.new(0, 50),
							UDim.new(0, 50),
							UDim.new(0, 50),
							UDim.new(0, 50)
						},
						InitialSizes = {
							UDim.new(0, 250),
							UDim.new(0, 300),
							UDim.new(0, 250),
							UDim.new(0, 100)
						},
					}, {
						Roact.createElement(TextLabel, {
							Text = "First",
							Size = UDim2.new(1, -20, 1, -20),
							Position = UDim2.fromOffset(10, 10),
							TextWrapped = true,
						}),
						Roact.createElement(TextLabel, {
							Text = "Second",
							Size = UDim2.new(1, -20, 1, -20),
							Position = UDim2.fromOffset(10, 10),
							TextWrapped = true,
						}),
						Roact.createElement(TextLabel, {
							Text = "Third",
							Size = UDim2.new(1, -20, 1, -20),
							Position = UDim2.fromOffset(10, 10),
							TextWrapped = true,
						}),
						Roact.createElement(TextLabel, {
							Text = "Fourth",
							Size = UDim2.new(1, -20, 1, -20),
							Position = UDim2.fromOffset(10, 10),
							TextWrapped = true,
						}),
					})
				})
			end,
		},
		{
			name = "Vertical pane",
			story = function()
				return Roact.createElement(ControlledSplitPane, {
					ClampSize = true,
					Layout = Enum.FillDirection.Vertical,
					Size = UDim2.fromOffset(300, 500),
					MinSizes = {UDim.new(0, 100), UDim.new(0, 100), UDim.new(0, 100)},
					InitialSizes = {UDim.new(0.25, 0), UDim.new(0.25, 0), UDim.new(0.25, 0)},
				}, {
					Roact.createElement(TextLabel, {
						Text = "First",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
					Roact.createElement(TextLabel, {
						Text = "Second",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
					Roact.createElement(TextLabel, {
						Text = "Third",
						Size = UDim2.new(1, -20, 1, -20),
						Position = UDim2.fromOffset(10, 10),
						TextWrapped = true,
					}),
				})
			end,
		},
	}
}
