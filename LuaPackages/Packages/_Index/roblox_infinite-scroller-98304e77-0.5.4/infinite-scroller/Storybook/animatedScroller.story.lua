local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Story")

function Story:init()
	local startingItems = {}
	for i = 1, 50 do
		table.insert(startingItems, i)
	end
	self:setState({
		items = startingItems,
		lock = 1,
		width = 260,
		itemSize = 30,
	})

	self.focus = 1
end

function Story:render()
	print("animatedScrollerResize.story")
	print(self.state)
	return Roact.createFragment({
		Roact.createElement("Frame", {
			Size = UDim2.new(0, self.state.width, 0, self.state.itemSize + 30),
			BackgroundTransparency = 1,
		},{
			Roact.createElement(Scroller, Cryo.Dictionary.join({
				BackgroundColor3 = Color3.fromRGB(255, 0, 0),
				Size = UDim2.new(1, 0, 1, 0),
				orientation = Scroller.Orientation.Right,
				padding = UDim.new(0, 5),
				itemList = self.state.items,
				focusIndex = self.focus,
				focusLock = self.state.lock,
				anchorLocation = UDim.new(1, -15),
				loadingBuffer = 2,
				mountingBuffer = 99,
				estimatedItemSize = 10,
				dragBuffer = 120,
				animateScrolling = true,
				identifier = function(item)
					assert(item)
					return item
				end,
				renderItem = function(item, _)
					return Roact.createElement("TextLabel", {
						Size = UDim2.new(0, self.state.itemSize, 0, self.state.itemSize),
						Text = tostring(item),
						BackgroundColor3 = Color3.fromRGB(255, item*5, (51 - item)*5),
					}, {
						["INDEX" .. tostring(item)] = Roact.createElement("Frame"),
					})
				end,
				onScrollUpdate = function(data)
					self.focus = data.anchorIndex
					self.animationActive = data.animationActive
				end,
			}, self.props)),
		}),
		Roact.createElement("TextButton", {
			Size = UDim2.new(0, 30, 0, 30),
			Position = UDim2.new(0, 0, 0, 100),
			Text = "<",
			[Roact.Event.Activated] = function()
				if self.animationActive then
					return
				end
				self.focus = math.max(self.focus - 4, 1)
				self:setState({lock = self.state.lock + 1})
			end,
		}),
		Roact.createElement("TextButton", {
			Size = UDim2.new(0, 30, 0, 30),
			Position = UDim2.new(0, 230, 0, 100),
			Text = ">",
			[Roact.Event.Activated] = function()
				if self.animationActive then
					return
				end
				self.focus = math.min(self.focus + 4, #self.state.items)
				self:setState({lock = self.state.lock + 1})
			end,
		}),
		Roact.createElement("TextButton", {
			Size = UDim2.new(0, 60, 0, 30),
			Position = UDim2.new(0, 90, 0, 100),
			Text = "Width -",
			[Roact.Event.Activated] = function()
				if self.animationActive then
					return
				end
				self.focus = math.max(self.focus - 4, 1)
				self:setState({
					width = self.state.width - 10,
				})
			end,
		}),
		Roact.createElement("TextButton", {
			Size = UDim2.new(0, 60, 0, 30),
			Position = UDim2.new(0, 150, 0, 100),
			Text = "Width +",
			[Roact.Event.Activated] = function()
				if self.animationActive then
					return
				end
				self:setState({
					width = self.state.width + 10,
				})
			end,
		}),
	})
end

return Story
