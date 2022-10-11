local Plugin = script.Parent.Parent.Parent.Parent
local Roact = require(Plugin.Packages.Roact)
local Framework = require(Plugin.Packages.Framework)

local ContextServices = Framework.ContextServices
local withContext = ContextServices.withContext
local Analytics = ContextServices.Analytics

local Stylizer = Framework.Style.Stylizer

export type Props = {
	LayoutOrder: number,
	Hue: number,
	Saturation: number,
	Value: number,
	OnHueSaturationChanged: ((number, number) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Stylizer: any,
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
		if
			self.state.MouseDown
			and input.UserInputType == Enum.UserInputType.MouseMovement
		then
			local pos = Vector2.new(input.Position.X, input.Position.Y) - rbx.AbsolutePosition
			pos = pos / rbx.AbsoluteSize
			self.props.OnHueSaturationChanged(pos.x, 1 - pos.y)
		end
	end

	self.onInputEnded = function(rbx, input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			and self.state.MouseDown
		then
			local x, y = input.Position.X, input.Position.Y
			local pos = Vector2.new(x, y) - rbx.AbsolutePosition
			pos = pos / rbx.AbsoluteSize
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
	local style: _Style = props.Stylizer.HueSaturationPicker

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

HueSaturationPicker = withContext({
	Analytics = Analytics,
	Stylizer = Stylizer,
})(HueSaturationPicker)

return HueSaturationPicker
