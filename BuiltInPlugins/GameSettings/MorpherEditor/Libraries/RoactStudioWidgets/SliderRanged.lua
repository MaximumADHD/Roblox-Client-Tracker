local Roact = require(script.Parent.Internal.RequireRoact)

local CaretAssetEnabled = "rbxasset://textures/RoactStudioWidgets/slider_caret.png"
local CaretAssetDisabled = "rbxasset://textures/RoactStudioWidgets/slider_caret_disabled.png"

local CaretRadius = 5
local CaretDiameter = CaretRadius*2

local SliderRanged = Roact.Component:extend("SliderRanged")

local Caret = {
	Lower = {},
	Upper = {},
	Waiting = {},
	None = {}
}

local getBarStartXOffset = nil
local setValue = nil
local toScaler = nil
local getClosestCaret = nil
local isPressed = nil
local createCaret = nil
local getMin = nil
local getMax = nil
local getPressedClickAreaHeight = nil
local getNormalClickAreaHeight = nil

-- props:
-- float CaretLowerRangeValue
-- float CaretUpperRangeValue
-- void setLowerRangeValue(float)
-- void setUpperRangeValue(float)
function SliderRanged:init()
    self.state = {
        Pressed = Caret.None
    }
end

function SliderRanged:render()
	local Grey = Color3.fromRGB(216, 216, 216)
	local GreyDisabled = Color3.fromRGB(184, 184, 184)
	local BlueEnabled = Color3.fromRGB(0, 163, 255)
	local snapIncrement = self.props.SnapIncrement or 0
	local enabled = self.props.Enabled

	return Roact.createElement("ImageButton", {
		LayoutOrder = self.props.LayoutOrder,
		Size = UDim2.new(0, self.props.Width, 0, getNormalClickAreaHeight(self)),
		Position = UDim2.new(0, 10, 0, 0),
		BackgroundTransparency = 1,
		ZIndex = 1,

		[Roact.Event.InputBegan] = function(rbx, input)
			if enabled and input.UserInputType == Enum.UserInputType.MouseButton1 then
				self.firstX = input.Position.X
				self.firstY = input.Position.Y

				if self.props.CaretLowerRangeValue ~= self.props.CaretUpperRangeValue then
					self.startedEqual = false
					self:setState({
						Pressed = getClosestCaret(self, rbx, input),
					})
					setValue(self, rbx, input, snapIncrement)
				else
					self.startedEqual = true
					self:setState({
						Pressed = Caret.Waiting,
					})
				end
			end
		end,
		[Roact.Event.InputEnded] = function(rbx, input)
			if enabled and input.UserInputType == Enum.UserInputType.MouseButton1 then
				self:setState({
					Pressed = Caret.None,
				})
			end
		end,
	}, {
		PressedSelectionArea = Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 0, getPressedClickAreaHeight(self)),
			BackgroundTransparency = 1,
			ZIndex = 2,
			AnchorPoint = Vector2.new(0.5, 0.5),

			[Roact.Event.InputChanged] = function(rbx, input)
				if enabled and isPressed(self) and input.UserInputType == Enum.UserInputType.MouseMovement then
					if self.startedEqual and self.props.CaretLowerRangeValue == self.props.CaretUpperRangeValue then
						-- When the carets are on top of each other, pick the correct one based on direction of dragging.
						self.startedEqual = false

						if self.firstX > input.Position.X then
							self:setState({
								Pressed = Caret.Lower,
							})
						else
							self:setState({
								Pressed = Caret.Upper,
							})
						end
					end

					setValue(self, rbx, input, snapIncrement)
				end
			end,
		}),
		Bar = Roact.createElement("Frame", {
			Position = UDim2.new(0.5, 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(1, -(getBarStartXOffset() * 2), 0, 4),
			BackgroundTransparency = 0,
			BackgroundColor3 = Grey,
			BorderSizePixel = 0,
			ZIndex = 3,
		}, {
			Fill = Roact.createElement("Frame", {
				Position = UDim2.new(toScaler(self.props.CaretLowerRangeValue, self) , 0, 0, 0),
				Size = UDim2.new(toScaler(self.props.CaretUpperRangeValue, self) -
					toScaler(self.props.CaretLowerRangeValue, self), 0, 1, 0),
				BackgroundTransparency = 0,
				BackgroundColor3 = self.props.Enabled and BlueEnabled or GreyDisabled,
				BorderSizePixel = 0,
				ZIndex = 4,
			}),
			MinCaret = createCaret(self, self.props.CaretLowerRangeValue, self.props.CaretLowerRangeText),
			MaxCaret = createCaret(self, self.props.CaretUpperRangeValue, self.props.CaretUpperRangeText)
		}),
	})
end

getMin = function(self)
	return self.props.Min or 0
end

getMax = function(self)
	return self.props.Max or 1
end

getPressedClickAreaHeight = function()
	return CaretDiameter + 300
end

getNormalClickAreaHeight = function()
	return CaretDiameter + 5
end

createCaret = function(self, value, text)
	if self.props.Enabled then
		return Roact.createElement("ImageLabel", {
			Position = UDim2.new(toScaler(value, self), 0, 0.5, 0),
			AnchorPoint = Vector2.new(0.5, 0.5),
			Size = UDim2.new(0, CaretDiameter, 0, CaretDiameter),
			Image = self.props.Enabled and CaretAssetEnabled or CaretAssetDisabled,
			BorderSizePixel = 0,
			ZIndex = 5,
			BackgroundTransparency = 1,
		}, {
			Label = Roact.createElement("TextLabel", {
				Position = UDim2.new(0.5, 0, 0, -10),
	            Text = text or "",
	            TextColor3 = self.props.TextColor or Color3.fromRGB(160, 160, 160),
	            BackgroundTransparency = 1,
	            Font = Enum.Font.SourceSans,
	            TextSize = 13,
	            AnchorPoint = Vector2.new(0.5, 1),
	            TextXAlignment = Enum.TextXAlignment.Center,
	            Visible = text and true or false,
	            ZIndex = 5,
	        })
		})
	else
		return nil
	end
end

local function getIncrementSnappedValue(value, min, max, snapIncrement)
	if snapIncrement > 0.001 then
		local prevSnap = math.max(snapIncrement*math.floor(value/snapIncrement), min)
		local nextSnap = math.min(prevSnap+snapIncrement, max)
		return math.abs(prevSnap-value) < math.abs(nextSnap-value) and prevSnap or nextSnap
	end
	return value
end

getBarStartXOffset = function()
	return CaretRadius;
end

local function lerp(min, max, interp)
	return min+(max-min)*interp
end

local function clamp01(val)
	return math.max(0, math.min(1, val))
end

toScaler = function(val, self)
	return clamp01((val-getMin(self))/(getMax(self)-getMin(self)))
end

local function getNormalizedMouseXValue(rbx, input)
	local barStartX = rbx.AbsolutePosition.X + getBarStartXOffset()
	local barSizeX = rbx.AbsoluteSize.X-(getBarStartXOffset()*2)
	return clamp01((input.Position.X - barStartX) / barSizeX)
end

setValue = function(self, rbx, input, snapIncrement)
	local mouseXNormalized = getNormalizedMouseXValue(rbx, input)
	local newValue = getIncrementSnappedValue(lerp(getMin(self), getMax(self), mouseXNormalized),
		getMin(self), getMax(self), snapIncrement)

	if Caret.Lower == self.state.Pressed then
		if self.props.setLowerRangeValue then
			self.props.setLowerRangeValue(math.min(newValue, self.props.CaretUpperRangeValue))
		end
	elseif Caret.Upper == self.state.Pressed then
		if self.props.setUpperRangeValue then
			self.props.setUpperRangeValue(math.max(newValue, self.props.CaretLowerRangeValue))
		end
	end
end

getClosestCaret = function(self, rbx, input)
	local mouseXNormalized = getNormalizedMouseXValue(rbx, input)
	local caretMinNormalized = toScaler(self.props.CaretLowerRangeValue, self)
	local caretMaxNormalized = toScaler(self.props.CaretUpperRangeValue, self)

	if mouseXNormalized < caretMinNormalized then
		return Caret.Lower
	elseif mouseXNormalized > caretMaxNormalized then
		return Caret.Upper
	end

	local diffToMinCaret = math.abs(mouseXNormalized-caretMinNormalized)
	local diffToMaxCaret = math.abs(mouseXNormalized-caretMaxNormalized)

	return diffToMinCaret < diffToMaxCaret and Caret.Lower or Caret.Upper
end

isPressed = function(self)
	return Caret.None ~= self.state.Pressed
end

return SliderRanged