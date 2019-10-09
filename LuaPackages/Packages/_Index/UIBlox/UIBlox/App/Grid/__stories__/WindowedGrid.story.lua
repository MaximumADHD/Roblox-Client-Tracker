local GridRoot = script.Parent.Parent
local AppRoot = GridRoot.Parent
local UIBloxRoot = AppRoot.Parent
local Packages = UIBloxRoot.Parent
local Roact = require(Packages.Roact)

local GridView = require(GridRoot.GridView)

local items = {}

for i = 1, 100000 do
	table.insert(items, i)
end

local DemoComponent = Roact.PureComponent:extend("DemoComponent")

function DemoComponent:init()
	self.scrollingRef = Roact.createRef()
	self.layoutRef = Roact.createRef()

	self.state = {
		windowSize = Vector2.new(0, 0),
		windowPosition = Vector2.new(0, 0),
	}
end

function DemoComponent:updateWindowSize()
	self:setState({
		windowSize = self.scrollingRef.current.AbsoluteWindowSize,
		windowPosition = self.scrollingRef.current.CanvasPosition,
	})

	self.scrollingRef.current.CanvasSize = UDim2.new(0, 0, 0, self.layoutRef.current.AbsoluteContentSize.Y)
end

function DemoComponent:render()
	return Roact.createElement("ScrollingFrame", {
		BackgroundTransparency = 1,
		ScrollBarImageColor3 = Color3.new(0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
		CanvasSize = UDim2.new(0, 0, 0, self.state.canvasHeight),
		VerticalScrollBarInset = Enum.ScrollBarInset.Always,
		[Roact.Ref] = self.scrollingRef,
		[Roact.Change.AbsoluteSize] = function()
			wait(0)
			self:updateWindowSize()
		end,
		[Roact.Change.CanvasPosition] = function(rbx)
			-- wait(0)
			if self.state.windowPosition ~= rbx.CanvasPosition then
				self:updateWindowSize()
			end
		end,
	}, {
		LayoutMeasurer = Roact.createElement("UIListLayout", {
			[Roact.Ref] = self.layoutRef,
			[Roact.Change.AbsoluteContentSize] = function(rbx)
				self.scrollingRef.current.CanvasSize = UDim2.new(0, 0, 0, rbx.AbsoluteContentSize.Y)
			end,
		}),
		GridView = Roact.createElement(GridView, {
			renderItem = function(i)
				return Roact.createElement("TextLabel", {
					LayoutOrder = i,
					Size = UDim2.new(1, 0, 1, 0),
					Text = i,
				})
			end,
			itemPadding = Vector2.new(12, 12),
			items = items,
			windowHeight = self.state.windowSize.Y,
			itemSize = Vector2.new(100, 100),
		})
	})
end

function DemoComponent:didMount()
	self:updateWindowSize()
end

return function(target)
	local handle = Roact.mount(Roact.createElement(DemoComponent), target, "WindowedGrid")

	return function()
		Roact.unmount(handle)
	end
end
