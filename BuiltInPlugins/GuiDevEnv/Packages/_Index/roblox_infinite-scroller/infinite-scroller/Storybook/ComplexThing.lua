local Root = script:FindFirstAncestor("infinite-scroller").Parent
local Roact = require(Root.Roact)

ComplexThing = Roact.PureComponent:extend("ComplexThing")

ComplexThing.defaultProps = {
	-- things start to lag at 5?
	nestedLayer = 3,
	Size = UDim2.fromScale(0.5, 0.5),
}

function ComplexThing:render()
	--temporary hard limit
	if self.props.nestedLayer > 6 then
		return Roact.createElement("Frame", {
			Size = UDim2.fromOffset(100, 100)
		})
	end

	local children = {}

	if self.props.nestedLayer > 1 then
		children = {
			["TL"..self.props.nestedLayer] = Roact.createElement(ComplexThing, {
				Position = UDim2.fromScale(0, 0),
				nestedLayer = self.props.nestedLayer - 1,
			}),
			["TR"..self.props.nestedLayer] = Roact.createElement(ComplexThing, {
				Position = UDim2.fromScale(0.5, 0),
				nestedLayer = self.props.nestedLayer - 1,
			}),
			["BL"..self.props.nestedLayer] = Roact.createElement(ComplexThing, {
				Position = UDim2.fromScale(0, 0.5),
				nestedLayer = self.props.nestedLayer - 1,
			}),
			["BR"..self.props.nestedLayer] = Roact.createElement(ComplexThing, {
				Position = UDim2.fromScale(0.5, 0.5),
				nestedLayer = self.props.nestedLayer - 1,
			}),
		}
	end

	local r = math.random(255)
	local g = math.random(255)
	local b = math.random(255)

	return Roact.createElement("Frame", {
		Size = self.props.Size,
		Position = self.props.Position,
		BackgroundColor3 = Color3.fromRGB(r, g, b),
		BorderSizePixel = self.props.Size.X.Scale == 0.5 and 0 or 4,
		BorderColor3 = Color3.fromRGB(255, 255, 255),
	}, children)
end

return ComplexThing
