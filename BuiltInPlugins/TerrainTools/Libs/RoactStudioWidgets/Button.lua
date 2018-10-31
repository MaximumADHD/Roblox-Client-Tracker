local Roact = require(script.Parent.Internal.RequireRoact)

local AssetDefault = "rbxasset://textures/RoactStudioWidgets/button_default.png"
local AssetHovered = "rbxasset://textures/RoactStudioWidgets/button_hover.png"
local AssetPressed = "rbxasset://textures/RoactStudioWidgets/button_pressed.png"

local ColorGrey = Color3.fromRGB(102, 102, 102)
local ColorWhite = Color3.fromRGB(255, 255, 255)
local ColorBlack = Color3.fromRGB(0, 0, 0)

local VisualStyle = {
	Disabled={Image=AssetDefault, TextColor3=ColorGrey, ImageColor3=ColorWhite}, 
	Pressed={Image=AssetPressed, TextColor3=ColorWhite, ImageColor3=ColorWhite},
	Hovered={Image=AssetHovered, TextColor3=ColorBlack, ImageColor3=ColorWhite},
	Default={Image=AssetDefault, TextColor3=ColorBlack, ImageColor3=ColorWhite}
}

local Button = Roact.PureComponent:extend("Button")

local function isPressed(self)
	return self.props.Pressed or self.state.pressed
end

local function determineVisualStyle(self)
	if self.props.Disabled then
		return VisualStyle.Disabled.Image, (self.props.DisabledTextColor or VisualStyle.Disabled.TextColor3), (self.props.DisabledImageColor or VisualStyle.Disabled.ImageColor3)
	end

	if isPressed(self) then
		return VisualStyle.Pressed.Image, (self.props.PressedTextColor or VisualStyle.Pressed.TextColor3), (self.props.PressedImageColor or VisualStyle.Pressed.ImageColor3)
	end

	if self.state.hovered then
		return VisualStyle.Hovered.Image, (self.props.HoveredTextColor or VisualStyle.Hovered.TextColor3), (self.props.HoveredImageColor or VisualStyle.Hovered.ImageColor3)
	end
	return VisualStyle.Default.Image, (self.props.DefaultTextColor or VisualStyle.Default.TextColor3), (self.props.DefaultImageColor or VisualStyle.Default.ImageColor3)
end

local function determineImage(self)
	local image = determineVisualStyle(self)
	return image
end

local function determineImageColor(self)
	local notUsed, notUsed2, imageColor = determineVisualStyle(self)
	return imageColor
end

local function determineTextColor(self)
	local notUsed, textColor3 = determineVisualStyle(self)
	return textColor3
end

function Button:render()
	return Roact.createElement("ImageButton", {
		Size = self.props.Size or UDim2.new(0, 150, 0, 24),
		LayoutOrder = self.props.LayoutOrder,

		Image = determineImage(self),
		ImageColor3 = determineImageColor(self),
		Position = self.props.Position,
		BackgroundTransparency = 1,
		ScaleType = Enum.ScaleType.Slice,
		SliceCenter = Rect.new(7, 7, 156, 36),
		AutoButtonColor = false,

		[Roact.Event.InputBegan] = function(rbx, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				self:setState({
					hovered = true
				})
			end
		end,

		[Roact.Event.InputEnded] = function(rbx, input)
			if input.UserInputType == Enum.UserInputType.MouseMovement then
				self:setState({
					hovered = false,
					pressed = false
				})
			end
		end,

		[Roact.Event.MouseButton1Down] = function(rbx)
			self:setState({
				pressed = true
			})
		end,

		[Roact.Event.MouseButton1Up] = function(rbx)
			self:setState({
				pressed = false,
			})
		end,

		[Roact.Event.MouseButton1Click] = function(rbx)
			if self.props.onClick then
				self.props.onClick()
			end
		end,
	}, {
		ButtonLabel = Roact.createElement("TextLabel", {
			Text = self.props.Text or "props.labelText",
			TextColor3 = determineTextColor(self),
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 1, 0),
			Font = Enum.Font.SourceSans,
			TextSize = 15,
		})
	})
end

return Button
