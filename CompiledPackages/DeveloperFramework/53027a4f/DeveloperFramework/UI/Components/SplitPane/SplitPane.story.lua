local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

local SplitPane = require(script.Parent)
local Pane = require(Framework.UI.Components.Pane)
local ScrollingFrame = require(Framework.UI.Components.ScrollingFrame)
local TextLabel = require(Framework.UI.Components.TextLabel)

local Dash = require(Framework.Parent.Dash)
local join = Dash.join

local ControlledSplitPane = Roact.PureComponent:extend("ControlledSplitPane")

function ControlledSplitPane:init()
	self.state = {
		sizes = self.props.InitialSizes,
	}
	self.onSizesChange = function(sizes)
		self:setState({
			sizes = sizes,
		})
	end
end

function ControlledSplitPane:render()
	local props = self.props
	local state = self.state
	return Roact.createElement(
		SplitPane,
		join({
			Sizes = state.sizes,
			OnSizesChange = self.onSizesChange,
			MinSizes = props.MinSizes,
			PaneStyle = "BorderBox",
			BarStyle = "BorderBox",
		}, props)
	)
end

return {
	stories = {
		{
			name = "Clamped and Scaled",
			summary = "This component is clamped to the size of the container, and panes scale proportionally when resized",
			story = function()
				return Roact.createElement(ControlledSplitPane, {
					UseScale = true,
					ClampSize = true,
					Size = UDim2.new(1, 0, 0, 300),
					MinSizes = { UDim.new(0.1, 0), UDim.new(0.1, 0), UDim.new(0.1, 0), UDim.new(0.1, 0) },
					MaxSizes = { nil, nil, UDim.new(0.1, 0), nil },
					InitialSizes = { UDim.new(0.25, 0), UDim.new(0.25, 0), UDim.new(0.1, 0), UDim.new(0.4, 0) },
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
						Text = "Fixed Size Pane",
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
			name = "Hidden Drag bars",
			summary = "The drag bars can be hidden to allow style customization",
			story = function()
				return Roact.createElement(ControlledSplitPane, {
					UseScale = true,
					ClampSize = true,
					HideBars = true,
					Size = UDim2.new(1, 0, 0, 40),
					MinSizes = { UDim.new(0.1, 0), UDim.new(0.1, 0), UDim.new(0.1, 0), UDim.new(0.1, 0) },
					MaxSizes = { nil, nil, UDim.new(0.1, 0), nil },
					InitialSizes = { UDim.new(0.25, 0), UDim.new(0.25, 0), UDim.new(0.1, 0), UDim.new(0.4, 0) },
				}, {
					Roact.createElement(Pane, {
						Style = "SubtleBorderBox",
					}, {
						Label = Roact.createElement(TextLabel, {
							Text = "Row A",
							Size = UDim2.fromScale(1, 1),
						}),
					}),
					Roact.createElement(Pane, {
						Style = "SubtleBorderBox",
					}, {
						Label = Roact.createElement(TextLabel, {
							Text = "Row B",
							Size = UDim2.fromScale(1, 1),
						}),
					}),
					Roact.createElement(Pane, {
						Style = "SubtleBorderBox",
					}, {
						Label = Roact.createElement(TextLabel, {
							Text = "Fixed",
							Size = UDim2.fromScale(1, 1),
						}),
					}),
					Roact.createElement(Pane, {
						Style = "SubtleBorderBox",
					}, {
						Label = Roact.createElement(TextLabel, {
							Text = "Row D",
							Size = UDim2.fromScale(1, 1),
						}),
					}),
				})
			end,
		},
		{
			name = "Clamped with Deficit",
			summary = "This component is clamped to the size of the container, with the last pane filling remaining space when resized",
			story = function()
				return Roact.createElement(ControlledSplitPane, {
					UseDeficit = true,
					ClampSize = true,
					Size = UDim2.new(1, 0, 0, 300),
					MinSizes = { UDim.new(0, 100), UDim.new(0, 100), UDim.new(0, 100), UDim.new(0, 100) },
					MaxSizes = { nil, nil, UDim.new(0, 100), nil },
					InitialSizes = { UDim.new(0, 100), UDim.new(0, 100), UDim.new(0, 100), UDim.new(1, -300) },
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
						Text = "Fixed Size Pane",
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
			name = "Unclamped",
			summary = "When not clamped, the component can grow horizontally as children are resized",
			story = function()
				return Roact.createElement(Pane, {
					Style = "BorderBox",
					Size = UDim2.fromOffset(500, 100),
					Padding = 2,
				}, {
					Split = Roact.createElement(ScrollingFrame, {
						CanvasSize = UDim2.fromScale(0, 0),
						AutomaticCanvasSize = Enum.AutomaticSize.XY,
						ScrollingDirection = Enum.ScrollingDirection.X,
						ClipsDescendants = true,
					}, {
						Child = Roact.createElement(ControlledSplitPane, {
							AutomaticSize = Enum.AutomaticSize.X,
							PaneStyle = "Default",
							Size = UDim2.fromOffset(0, 95),
							MinSizes = {
								UDim.new(0, 50),
								UDim.new(0, 50),
								UDim.new(0, 50),
								UDim.new(0, 50),
							},
							InitialSizes = {
								UDim.new(0, 250),
								UDim.new(0, 300),
								UDim.new(0, 250),
								UDim.new(0, 100),
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
						}),
					}),
				})
			end,
		},
		{
			name = "Vertical",
			summary = "Split Pane will also display vertical layout",
			story = function()
				return Roact.createElement(ControlledSplitPane, {
					ClampSize = true,
					Layout = Enum.FillDirection.Vertical,
					Size = UDim2.fromOffset(300, 500),
					MinSizes = { UDim.new(0, 100), UDim.new(0, 100), UDim.new(0, 100) },
					InitialSizes = { UDim.new(0, 100), UDim.new(0, 100), UDim.new(0, 100) },
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
	},
}
