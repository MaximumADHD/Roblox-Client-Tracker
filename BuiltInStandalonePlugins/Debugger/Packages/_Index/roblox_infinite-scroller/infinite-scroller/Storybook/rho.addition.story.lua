local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Rhodium Story - item addition test")

function Story:init()
	local items = {}
	local numberOfItems = self.props.numberOfItems or 30
	for i = 1, numberOfItems do
		table.insert(items, {id = i})
	end

	self.state = {
		itemList = items,
	}
end

function Story:render()
	local focusIndex = self.props.addToFront and 1 or #self.state.itemList

	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		scroll = Roact.createElement(Scroller, Cryo.Dictionary.join(
			{
				Size = UDim2.new(0, 100, 0, 200),
				focusIndex = focusIndex,
				focusLock = self.state.itemList[focusIndex].id,
				anchorLocation = UDim.new(1, 0),
				dragBuffer = 200,
				itemList = self.state.itemList,
				orientation = Scroller.Orientation.Up,
				identifier = function(item)
					return item.id
				end,
				renderItem = function(item, _)
					local r = 88+88*math.sin(math.rad(8*item.id+90))
					local g = 88+44*math.sin(math.rad(8*item.id+0))
					local b = 88+88*math.sin(math.rad(8*item.id+180))

					return Roact.createElement("Frame", {
						Size = UDim2.new(0, 20, 0, 20),
						BackgroundColor3 = Color3.fromRGB(r, g, b),
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
			{
				addToFront = Cryo.None,
				numberOfItems = Cryo.None,
			}
		)),
		addition = Roact.createElement("TextButton", {
			Size = UDim2.new(0, 100, 0, 50),
			Position = UDim2.new(0.5, 0, 0, 0),
			AnchorPoint = Vector2.new(1, 0),
			Text = "Add Item",

			[Roact.Event.Activated] = function()
				local nextId = #self.state.itemList + 1

				local nextItems
				if self.props.addToFront then
					nextItems = Cryo.List.join({{id = nextId}}, self.state.itemList)
				else
					nextItems = Cryo.List.join(self.state.itemList, {{id = nextId}})
				end

				self:setState({
					itemList = nextItems,
				})
			end,
		}),
	})
end

return Story
