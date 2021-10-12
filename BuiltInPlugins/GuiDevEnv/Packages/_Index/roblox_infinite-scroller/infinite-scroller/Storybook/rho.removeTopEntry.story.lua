local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Rhodium Story - delete top item test")

local END_OF_LIST_INDEX = 100

function Story:init()
	self.state.items = {}

	if self.props.loadAll then
		for i = 1, END_OF_LIST_INDEX do
			table.insert(self.state.items, {id = i})
		end
	else
		for i = 1, 20 do
			table.insert(self.state.items, {id = i})
		end
	end
end

function Story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		scroll = Roact.createElement(Scroller, Cryo.Dictionary.join(
			{
				BackgroundColor3 = Color3.fromRGB(38, 161, 38),
				Size = UDim2.new(0, 100, 0, 100),
				padding = UDim.new(),
				itemList = self.state.items,
				focusIndex = 1,
				anchorLocation = UDim.new(1, 0),
				estimatedItemSize = 20,
				orientation = Scroller.Orientation.Up,
				BackgroundTransparency = 0,
				dragBuffer = 0,
				ElasticBehavior = Enum.ElasticBehavior.Always,
				ScrollBarThickness = 10,
				VerticalScrollBarInset = Enum.ScrollBarInset.Always,
				identifier = function(item)
					return item.id
				end,
				renderItem = function(item, _)
					return Roact.createElement("TextButton", {
						Size = UDim2.new(0, 20, 0, 20),
						BackgroundColor3 = Color3.fromRGB(200,200, 200),
						Text = tostring(item.id)
					}, {
						["INDEX" .. tostring(item.id)] = Roact.createElement("Frame"),
					})
				end,
				loadNext = function()
					if not self.props.loadAll then
						local newItems = {}
						local n = self.state.items[#self.state.items].id
						local endIndex = math.min(n + 10, END_OF_LIST_INDEX)
						for i = n+1, endIndex do
							table.insert(newItems, {
								id = i,
							})
						end

						if not Cryo.isEmpty(newItems) then
							self:setState({
								items = Cryo.List.join(self.state.items, newItems)
							})
						end
					end
				end,
			},
			self.props,
			{deleteLastItem = Cryo.None},
			{loadAll = Cryo.None}
		)),
		deletion = Roact.createElement("TextButton", {
			Size = UDim2.new(0, 100, 0, 50),
			Position = UDim2.new(0.5, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),
			Text = "Delete",
			[Roact.Event.Activated] = function()
				local indexToDelete = self.props.deleteLastItem and #self.state.items or 1
				local nextItems = Cryo.List.removeIndex(self.state.items, indexToDelete)
				self:setState({
					items = nextItems
				})
			end,
		}),
	})
end

return Story
