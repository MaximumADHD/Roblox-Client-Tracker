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
	return Roact.createElement("ScrollingFrame", {
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 5000, 0, 0),
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		[Roact.Ref] = self.scrollingRef,
		[Roact.Change.AbsoluteSize] = function()
			wait(0)
			self:updateWindowSize()
		end,
	}, {
		Roact.createElement(DefaultMetricsGridView, {
			renderItem = function(i)
				return Roact.createElement("TextLabel", {
					Text = i,
					LayoutOrder = i,
					Size = UDim2.new(1, 0, 1, 0),
				})
			end,
			getItemHeight = function(width)
				return width
			end,
			getItemMetrics = GridMetrics.getSmallMetrics,
			windowSize = self.state.windowSize,
			itemPadding = Vector2.new(12, 12),
			items = { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20 },
		})
	})
end

function DemoComponent:didMount()
	self:updateWindowSize()
end

return function(target)
	local handle = Roact.mount(Roact.createElement(DemoComponent), target, "CarouselGrid")

	return function()
		Roact.unmount(handle)
	end
end
