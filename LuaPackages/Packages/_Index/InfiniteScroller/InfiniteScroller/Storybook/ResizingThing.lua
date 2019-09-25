local Root = script:FindFirstAncestor("InfiniteScroller").Parent
local Roact = require(Root.Roact)

local Thing = Roact.PureComponent:extend("Thing")

function Thing:init()
	self.state = {clicked = false}
end

function Thing:render()
	return Roact.createElement("Frame", {
		BackgroundColor3 = self.props.color,
		Size = UDim2.new(0, self.props.width, 0, self.state.clicked and 10 or self.props.width),
		LayoutOrder = self.props.LayoutOrder,
		[Roact.Event.InputBegan] = function(rbx, input)
			if input.UserInputType == Enum.UserInputType.MouseButton1 then
				self:setState({clicked = not self.state.clicked})
			end
		end,
	})
end

return Thing
