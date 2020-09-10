local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Rhodium Story - item shuffle test")

local NUM_ITEMS = 10
function Story:init()
	self.state.items = {}
	for i = 1,NUM_ITEMS do
		table.insert(self.state.items, {id = i})
	end

	self.state.focusLock = 1
end

function Story:render()
	return Roact.createElement("Frame", {
		Size=UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		scroll = Roact.createElement(Scroller, Cryo.Dictionary.join(
			{
				BackgroundColor3 = Color3.fromRGB(255, 0, 0),
				Size = UDim2.new(0, 100, 0, 100),
				padding = UDim.new(),
				itemList = self.state.items,
				focusIndex = 1,
				focusLock = self.state.focusLock,
				anchorLocation = UDim.new(1, 0),
				loadingBuffer = 2,
				mountingBuffer = 99,
				estimatedItemSize = 10,
				identifier = function(item)
					return item.id
				end,
				renderItem = function(item, _)
					return Roact.createElement("Frame", {
						Size = UDim2.new(0, 20, 0, 20),
						BackgroundColor3 = Color3.fromRGB(0, 128 - 8*item.id, 128 + 8*item.id),
					}, {
						["INDEX" .. tostring(item.id)] = Roact.createElement("TextLabel", {
							Size = UDim2.new(1, 0, 1, 0),
							Text = item.id,
							TextColor3 = Color3.new(1, 1, 1),
							BackgroundTransparency = 1,
						}),
					})
				end,
			},
			self.props,
			{toDelete = Cryo.None}
		)),
		shuffle = Roact.createElement("TextButton", {
			Size = UDim2.new(0, 100, 0, 50),
			Position = UDim2.new(0.5, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),
			Text = "Shuffle",
			[Roact.Event.Activated] = function()
				local nextItems = self.state.items

				for _, v in pairs(nextItems) do
					v.id = v.id+1
					if v.id > NUM_ITEMS then
						v.id = 1
					end
				end

				self:setState({
					items = nextItems,
					focusLock = self.state.focusLock + 1,
				})
			end,
		}),
	})
end

return Story
