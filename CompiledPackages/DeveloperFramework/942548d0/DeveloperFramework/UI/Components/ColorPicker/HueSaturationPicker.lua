local Framework = script:FindFirstAncestor("UI").Parent
local Roact = require(Framework.Parent.Roact)

export type _Props = {
	LayoutOrder: number,
	Hue: number,
	Saturation: number,
	Value: number,
	OnHueSaturationChanged: (number, number) -> (),
	Style: any,
}

type _Style = {
	Size: UDim2,
	Black: Color3,
	GradientImage: string,
	PositionIndicatorSize: UDim2,
	PositionIndicatorAnchor: Vector2,
	PositionIndicatorImage: string,
}

local HueSaturationPicker = Roact.PureComponent:extend("HueSaturationPicker")

function HueSaturationPicker:init()
	self:setState({
		MouseDown = false,
	})

	self.onMouseDown = function(_rbx)
		self:setState({
			MouseDown = true,
		})
	end

	self.onInputChanged = function(rbx, input)
		if self.state.MouseDown and input.UserInputType == Enum.UserInputType.MouseMovement then
			local pos = Vector2.new(input.Position.X, input.Position.Y) - rbx.AbsolutePosition
			pos /= rbx.AbsoluteSize
			self.props.OnHueSaturationChanged(pos.x, 1 - pos.y)
		end
	end

	self.onInputEnded = function(rbx, input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and self.state.MouseDown then
			local x, y = input.Position.X, input.Position.Y
			local pos = Vector2.new(x, y) - rbx.AbsolutePosition
			pos /= rbx.AbsoluteSize
			pos = Vector2.new(math.clamp(pos.x, 0, 1), math.clamp(pos.y, 0, 1))
			self:setState({
				MouseDown = false,
			})
			self.props.OnHueSaturationChanged(pos.x, 1 - pos.y)
		end
	end
end

function HueSaturationPicker:render()
	local props: _Props = self.props
	local style: _Style = props.Style.HueSaturationPicker

	return Roact.createElement("ImageButton", {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
		Image = style.GradientImage,
		BackgroundColor3 = style.Black,
		AutoButtonColor = false,
		ImageTransparency = 1 - props.Value,

		[Roact.Event.MouseButton1Down] = self.onMouseDown,
		[Roact.Event.InputEnded] = self.onInputEnded,
		[Roact.Event.InputChanged] = self.onInputChanged,
	}, {
		PositionIndicator = Roact.createElement("ImageLabel", {
			Size = style.PositionIndicatorSize,
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(props.Hue, 1 - props.Saturation),
			AnchorPoint = style.PositionIndicatorAnchor,
			Image = style.PositionIndicatorImage,
			ImageColor3 = style.Black,
		}),
	})
end

return HueSaturationPicker
