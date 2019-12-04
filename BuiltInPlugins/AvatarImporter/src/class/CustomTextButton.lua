-- CustomTextButton class

-- imports
local Assets = require(script.Parent.Parent.Assets)

local ButtonColors = {
	Default = {
		Light = Color3.fromRGB(255, 255, 255),
		Dark = Color3.fromRGB(60, 60, 60),
	},
	Hover = {
		Light = Color3.fromRGB(228, 238, 254),
		Dark = Color3.fromRGB(66, 66, 66),
	},
}

local MainButtonColors = {
	Default = {
		Light = Color3.fromRGB(0, 162, 255),
		Dark = Color3.fromRGB(0, 162, 255),
	},
	Hover = {
		Light = Color3.fromRGB(50, 181, 255),
		Dark = Color3.fromRGB(50, 181, 255),
	},
}

local LabelColors = {
	Light = Color3.fromRGB(0, 0, 0),
	Dark = Color3.fromRGB(255, 255, 255),
}

local MainLabelColors = {
	Light = Color3.fromRGB(255, 255, 255),
	Dark = Color3.fromRGB(255, 255, 255),
}

local BorderColors = {
	Light = Color3.fromRGB(184, 184, 184),
	Dark = Color3.fromRGB(60, 60, 60),
}

local MainBorderColors = {
	Light = Color3.fromRGB(0, 162, 255),
	Dark = Color3.fromRGB(0, 162, 255),
}

local Studio = settings().Studio

local CustomTextButton = {}
CustomTextButton.__index = CustomTextButton

function CustomTextButton.new(name, labelText, parent)
	local self = setmetatable({}, CustomTextButton)

	-- private members
	self._name = name
	self._labelText = labelText
	self._isMain = false
	self._hovered = false
	self._pressed = false

	self:_constructUI(parent)
	self:_updateButtonVisual()

	Studio.ThemeChanged:Connect(function()
		self:_updateButtonVisual()
	end)

	return self
end

function CustomTextButton:_constructUI(parent)
	local button = Instance.new("ImageButton")
	button.BackgroundTransparency = 1
	button.Image = Assets.BUTTON_AVATAR_TYPE
	button.Name = self._name
	button.ScaleType = Enum.ScaleType.Slice
	button.Size = UDim2.new(0, 102, 0, 34)
	button.SliceCenter = Rect.new(4, 4, 5, 5)
	button.Parent = parent
	self._button = button

	local border = Instance.new("ImageLabel")
	border.BackgroundTransparency = 1
	border.Image = Assets.BUTTON_AVATAR_TYPE_BORDER
	border.Name = "Border"
	border.ScaleType = Enum.ScaleType.Slice
	border.Size = UDim2.new(1, 0, 1, 0)
	border.SliceCenter = Rect.new(4, 4, 5, 5)
	border.Parent = button
	self._border = border

	local label = Instance.new("TextLabel")
	label.BackgroundTransparency = 1
	label.Font = Enum.Font.SourceSans
	label.Size = UDim2.new(1, 0, 1, 0)
	label.TextSize = 20
	label.Text = self._labelText
	label.Parent = button
	self._label = label

	button.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self._hovered = true
			self:_updateButtonVisual()
		end
	end)

	button.InputEnded:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement then
			self._hovered = false
			self._pressed = false
			self:_updateButtonVisual()
		end
	end)

	button.MouseButton1Down:Connect(function()
		self._pressed = true
		self:_updateButtonVisual()
	end)

	button.MouseButton1Up:Connect(function()
		self._pressed = false
		self:_updateButtonVisual()
	end)
end

function CustomTextButton:_updateButtonVisual()
	local themeName = Studio.Theme.Name
	if self._isMain then
		if self._pressed or self._hovered then
			self._button.ImageColor3 = MainButtonColors.Hover[themeName]
		else
			self._button.ImageColor3 = MainButtonColors.Default[themeName]
		end
		self._label.TextColor3 = MainLabelColors[themeName]
		self._border.ImageColor3 = MainBorderColors[themeName]
	else
		if self._pressed or self._hovered then
			self._button.ImageColor3 = ButtonColors.Hover[themeName]
		else
			self._button.ImageColor3 = ButtonColors.Default[themeName]
		end
		self._label.TextColor3 = LabelColors[themeName]
		self._border.ImageColor3 = BorderColors[themeName]
	end

end

function CustomTextButton:getButton()
	return self._button
end

function CustomTextButton:setIsMain(value)
	self._isMain = value
	self:_updateButtonVisual()
end

return CustomTextButton