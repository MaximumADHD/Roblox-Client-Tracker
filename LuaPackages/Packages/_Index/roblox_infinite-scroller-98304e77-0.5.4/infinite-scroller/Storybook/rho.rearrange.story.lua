local InfiniteScroller = script:FindFirstAncestor("infinite-scroller")
local Root = InfiniteScroller.Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(InfiniteScroller).Scroller

local Story = Roact.PureComponent:extend("Rhodium Story - enough small items to fill the view")

Story.defaultProps = {
	startItems = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11},
	newItems = {11, 10, 9, 8, 7, 6, 5, 4, 3, 2, 1},
}

function Story:init()
	self.state.items = self.props.startItems
end

function Story:render()
	return Roact.createElement("Frame", {
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
	}, {
		Scroller = Roact.createElement(Scroller, Cryo.Dictionary.join(
			{
				BackgroundColor3 = Color3.fromRGB(255, 0, 0),
				Size = UDim2.fromOffset(50, 50),
				padding = UDim.new(),
				itemList = self.state.items,
				focusIndex = 6,
				anchorLocation = UDim.new(0.5, 0),
				loadingBuffer = 2,
				mountingBuffer = 99,
				estimatedItemSize = 10,
				renderItem = function(item, _)
					return Roact.createElement("Frame", {
						Size = UDim2.new(0, 10, 0, 10),
						BackgroundColor3 = item == 6
							and Color3.fromRGB(255, 255, 255)
							or Color3.fromRGB(0, item*23, item*23),
					}, {
						["INDEX" .. tostring(item)] = Roact.createElement("Frame"),
					})
				end,
			},
			self.props,
			{
				startItems = Cryo.None,
				newItems = Cryo.None,
				clicked = Cryo.None,
			}
		)),
		Button = Roact.createElement("TextButton", {
			Size = UDim2.fromOffset(100, 50),
			Position = UDim2.fromScale(1, 0),
			AnchorPoint = Vector2.new(1, 0),
			Text = "Rearrange",
			[Roact.Event.Activated] = function()
				self:setState({
					items = self.props.newItems,
				})
				if self.props.clicked then
					self.props.clicked()
				end
			end,
		})
	})
end

return Story