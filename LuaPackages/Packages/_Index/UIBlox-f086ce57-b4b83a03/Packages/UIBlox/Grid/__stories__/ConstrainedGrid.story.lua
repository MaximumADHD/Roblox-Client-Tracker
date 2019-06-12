local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Roact = require(ReplicatedStorage.Packages.Roact)

local DefaultMetricsGridView = require(script.Parent.Parent.DefaultMetricsGridView)
local GridMetrics = require(script.Parent.Parent.GridMetrics)

local DemoComponent = Roact.PureComponent:extend("DemoComponent")

function DemoComponent:init()
	self.scrollingRef = Roact.createRef()

	self.state = {
		windowSize = Vector2.new(0, 0)
	}
end

function DemoComponent:updateWindowSize()
	self:setState({
		windowSize = self.scrollingRef.current.AbsoluteWindowSize,
	})
end

function DemoComponent:render()
	return Roact.createElement("Frame", {
		BackgroundTransparency = 1,
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		Hint = Roact.createElement("TextLabel", {
			BackgroundTransparency = 1,
			Font = Enum.Font.Gotham,
			Size = UDim2.new(1, 0, 0, 40),
			Text = "  Use Select Preview above and check the size of the grid view",
			TextSize = 20,
			TextXAlignment = Enum.TextXAlignment.Left,
		}),
		GridContainer = Roact.createElement("ScrollingFrame", {
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 0, 40),
			ScrollBarImageColor3 = Color3.new(0, 0, 0),
			Size = UDim2.new(1, 0, 1, -40),
			VerticalScrollBarInset = Enum.ScrollBarInset.Always,
			[Roact.Ref] = self.scrollingRef,
			[Roact.Change.AbsoluteSize] = function()
				wait(0)
				self:updateWindowSize()
			end,
		}, {
			GridView = Roact.createElement(DefaultMetricsGridView, {
				renderItem = function(i)
					return Roact.createElement("TextLabel", {
						LayoutOrder = i,
						Size = UDim2.new(1, 0, 1, 0),
						Text = i,
					})
				end,
				getItemHeight = function(width)
					return width
				end,
				getItemMetrics = GridMetrics.getSmallMetrics,
				itemPadding = Vector2.new(12, 12),
				items = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 },
				maxHeight = self.state.windowSize.Y * 0.5,
			})
		})
	})
end

function DemoComponent:didMount()
	self:updateWindowSize()
end

return function(target)
	local handle = Roact.mount(Roact.createElement(DemoComponent), target, "ConstrainedGrid")

	return function()
		Roact.unmount(handle)
	end
end
