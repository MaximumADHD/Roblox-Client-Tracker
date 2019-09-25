local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Roact = require(Root.Roact)
local Cryo = require(Root.Cryo)
local Scroller = require(Root.InfiniteScroller.Components.Scroller)

local Story = Roact.PureComponent:extend("Rhodium Story Alpha - single small item")

function Story:render()
	return Roact.createElement(Scroller, Cryo.Dictionary.join({
		BackgroundColor3 = Color3.fromRGB(255, 0, 0),
		Size = UDim2.new(0, 50, 0, 50),
		itemList = {1},
		anchorLocation = UDim.new(0.5, 0),
		dragBuffer = 0,
		renderItem = function()
			return Roact.createElement("Frame", {Size=UDim2.new(0, 10, 0, 10)})
		end,
	}, self.props))
end

return Story