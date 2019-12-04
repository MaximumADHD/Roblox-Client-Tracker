local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Rhodium Story - infinite scroll in both directions")

function Story:init()
	self.state.items = {
		{
			token = 0,
			color = Color3.fromRGB(255, 255, 255),
		}
	}

	self.loadPrevious = function()
		local newItems = {}
		local n = self.state.items[1].token
		for i = n-10, n-1 do
			table.insert(newItems, {
				token = i,
				color = Color3.fromRGB(0, 128 - i, 128 + i),
			})
		end
		self:setState({
			items = Cryo.List.join(newItems, self.state.items)
		})
	end

	self.loadNext = function()
		local newItems = {}
		local n = self.state.items[#self.state.items].token
		for i = n+1, n+10 do
			table.insert(newItems, {
				token = i,
				color = Color3.fromRGB(0, 128 - i, 128 + i),
			})
		end
		self:setState({
			items = Cryo.List.join(self.state.items, newItems)
		})
	end
end

function Story:render()
	return Roact.createElement(Scroller, Cryo.Dictionary.join({
		BackgroundColor3 = Color3.fromRGB(255, 0, 0),
		Size = UDim2.new(0, 50, 0, 50),
		padding = UDim.new(0, 3),
		itemList = self.state.items,
		loadNext = self.loadNext,
		loadPrevious = self.loadPrevious,
		focusIndex = 1,
		anchorLocation = UDim.new(0.5, 0),
		orientation = Scroller.Orientation.Up,
		estimatedItemSize = 10,
		mountingBuffer = 50,
		identifier = function(item)
			return item.token
		end,
		renderItem = function(item, _)
			assert(item.token, "Item's token is unset")
			assert(item.color, "Item's color is unset")
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				BackgroundColor3 = item.color,
			}, {
				["INDEX" .. tostring(item.token)] = Roact.createElement("Frame"),
			})
		end,
	}, self.props))
end

return Story