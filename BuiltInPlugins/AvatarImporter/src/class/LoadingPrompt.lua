-- LoadingPrompt class

-- imports
local Assets = require(script.Parent.Parent.Assets)
local ThemeManager = require(script.Parent.Parent.ThemeManager)

local LoadingPrompt = {}
LoadingPrompt.__index = LoadingPrompt

function LoadingPrompt.new(screenGui)
	local self = setmetatable({}, LoadingPrompt)

	-- private members
	self._enabled = false

	-- construction logic
	self:_constructUI(screenGui)

	return self
end

function LoadingPrompt:setEnabled(value)
	self._enabled = value
	self.background.Visible = self._enabled
end

function LoadingPrompt:_constructUI(screenGui)
	local background = Instance.new("ImageLabel")
	background.AnchorPoint = Vector2.new(0.5, 0.5)
	background.Position = UDim2.new(0.5, 0, 0.5, 0)
	background.BackgroundTransparency = 1
	background.Image = Assets.BACKGROUND_IMAGE
	background.Name = "LoadingPrompt"
	background.ScaleType = Enum.ScaleType.Slice
	background.Size = UDim2.new(0, 596, 0, 133)
	background.SliceCenter = Rect.new(8, 8, 9, 9)
	background.Visible = false
	background.Parent = screenGui
	self.background = background
	ThemeManager:setImageColor(background, Enum.StudioStyleGuideColor.MainBackground)

	local description = Instance.new("TextLabel")
	description.AnchorPoint = Vector2.new(0.5, 0.5)
	description.BackgroundTransparency = 1
	description.Font = Enum.Font.SourceSans
	description.Name = "Description"
	description.Position = UDim2.new(0.5, 0, 0.5, 0)
	description.Size = UDim2.new(1, 0, 1, 0)
	description.Text = "Importing Avatar, please wait..."
	description.TextSize = 16
	description.TextXAlignment = Enum.TextXAlignment.Center
	description.TextYAlignment = Enum.TextYAlignment.Center
	description.Parent = background
	ThemeManager:setTextColor(description, Enum.StudioStyleGuideColor.MainText)
end

return LoadingPrompt