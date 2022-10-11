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
	Color: Color3,
	OnTextChangedHex: ((string, boolean) -> ()),
	OnTextChangedRGB: ((string, boolean) -> ()),
	OnTextChangedHSV: ((string, boolean) -> ()),
}

type _Props = Props & {
	Analytics: any,
	Stylizer: any,
}

type _Style = {
	Size: UDim2,
	Black: Color3,
	White: Color3,
	Position: UDim2,
	AnchorPoint: Vector2,
	GradientImage: string,
	PositionIndicatorSize: UDim2,
	PositionIndicatorAnchor: Vector2,
	PositionIndicatorImage: string,
}

local ColorValueSlider = Roact.PureComponent:extend("ColorValueSlider")

function ColorValueSlider:init()
	self.state = {
		mouseDown = false,
	}
	self._rootRef = Roact.createRef()

	self.onMouseDown = function(_rbx, x, _y)
		self:setState({
			MouseDown = true,
		})
	end

	self.onInputChanged = function(rbx, input)
		if
			self.state.MouseDown
			and input.UserInputType == Enum.UserInputType.MouseMovement
		then
			self.props.updatePosition(self:xToAlpha(input.Position.X))
		end
	end

	self.onInputEnded = function(rbx, input)
		if
			input.UserInputType == Enum.UserInputType.MouseButton1
			and self.state.MouseDown
		then
			self:setState({
				MouseDown = false,
			})
			self.props.updatePosition(self:xToAlpha(input.Position.X))
		end
	end

end

function ColorValueSlider:xToAlpha(x)
	local rbx = self._rootRef.current

	return math.clamp((x - rbx.AbsolutePosition.X) / rbx.AbsoluteSize.X, 0, 1)
end

function ColorValueSlider:render()
	local props: _Props = self.props
	local style: _Style = props.Stylizer.ColorValueSlider

	return Roact.createElement("ImageButton", {
		LayoutOrder = props.LayoutOrder,
		Size = style.Size,
		Image = style.GradientImage,
		ImageColor3 = Color3.fromHSV(props.Hue, props.Saturation, 1),
		AutoButtonColor = false,
		[Roact.Ref] = self._rootRef,

		[Roact.Event.MouseButton1Down] = self.onMouseDown,
		[Roact.Event.InputEnded] = self.onInputEnded,
		[Roact.Event.InputChanged] = self.onInputChanged,
	}, {
		PositionIndicator = Roact.createElement("ImageLabel", {
			Size = style.PositionIndicatorSize,
			BackgroundTransparency = 1,
			Position = UDim2.fromScale(props.Value, 0),
			AnchorPoint = style.PositionIndicatorAnchor,
			Image = style.PositionIndicatorImage,
			ImageColor3 = style.White,
		}),
	})
end

ColorValueSlider = withContext({
	Analytics = Analytics,
	Stylizer = Stylizer,
})(ColorValueSlider)

return ColorValueSlider
