local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(Root.InfiniteScroller.Components.Scroller)

local Story = Roact.PureComponent:extend("Rhodium Story - infinite scroll in both directions")

function Story:init()
	self.state.items = {0}

	self.loadPrevious = function()
		local newItems = {}
		local n = self.state.items[1]
		for i = n-10, n-1 do
			table.insert(newItems, i)
		end
		self:setState({
			items = Cryo.List.join(newItems, self.state.items)
		})
	end

	self.loadNext = function()
		local newItems = {}
		local n = self.state.items[#self.state.items]
		for i = n+1, n+10 do
			table.insert(newItems, i)
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
		renderItem = function(item, _)
			return Roact.createElement("Frame", {
				Size = UDim2.new(0, 10, 0, 10),
				BackgroundColor3 = item == 0
					and Color3.fromRGB(255, 255, 255)
					or Color3.fromRGB(0, 128 - item, 128 + item),
			}, {
				["INDEX" .. tostring(item)] = Roact.createElement("Frame"),
			})
		end,
	}, self.props))
end

return Story