local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Rhodium Story - Swap a large list for a smaller one")
Story.defaultProps = {
	anchorLocation = UDim.new(1, -10),
	focusIndex = 1,
	orientation = Scroller.Orientation.Up,
	size = UDim2.new(0, 400, 0, 300),

	shortToLong = false, -- Swap from a short list to a long list when true, swap from a long list to a short list when false
	longItemList =  {"a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"},
	shortItemList = {"Z", "X", "Y"},
}

function Story:init()
	self.state = {
		items = self.props.shortToLong and self.props.shortItemList or self.props.longItemList,
	}
end

function Story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 1,
	}, {
		scroller = Roact.createElement(Scroller, Cryo.Dictionary.join(
			{
				BackgroundColor3 = Color3.fromRGB(56, 19, 18),
				Size = self.props.size,
				orientation = self.props.orientation,
				itemList = self.state.items,
				focusLock = self.state.items[1],
				focusIndex = self.props.focusIndex,
				anchorLocation = self.props.anchorLocation,
				estimatedItemSize = 40,
				dragBuffer = 0,
				identifier = function(item)
					return item
				end,
				renderItem = function(item, _)
					return Roact.createElement("Frame", {
						Size = UDim2.new(0, 300, 0, 40),
						BackgroundColor3 = Color3.fromRGB(0, 255, 21),
					}, {
						["INDEX" .. tostring(item)] = Roact.createElement("TextLabel", {
							Size = UDim2.new(1, 0, 1, 0),
							Text = item,
							TextColor3 = Color3.new(0, 0, 0),
							BackgroundTransparency = 1,
						}),
					})
				end,
			},
			self.props,
			{
				shortToLong = Cryo.None,
				longItemList = Cryo.None,
				shortItemList = Cryo.None,
				size = Cryo.None,
			}
		)),
		swapButton = Roact.createElement("TextButton", {
			Size = UDim2.new(0, 100, 0, 50),
			Position = UDim2.new(1, -100, 0, 0),
			Text = "Swap Lists",

			[Roact.Event.Activated] = function()
				-- Swap lists
				if #self.state.items == #self.props.shortItemList then
					self:setState({
						items = self.props.longItemList,
					})
				else
					self:setState({
						items = self.props.shortItemList,
					})
				end
			end,
		}),
	})
end

return Story
