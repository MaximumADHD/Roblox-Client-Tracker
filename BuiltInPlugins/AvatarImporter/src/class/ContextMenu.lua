-- ContextMenu class

-- imports
local ThemeManager = require(script.Parent.Parent.ThemeManager)

local ContextMenu = {}
ContextMenu.__index = ContextMenu

function ContextMenu.new(screenGui)
	local self = setmetatable({}, ContextMenu)

	-- private members
	self._enabled = false

	self:_constructUI(screenGui)

	return self
end

function ContextMenu:setPosition(x, y)
	self._background.Position = UDim2.new(0, x + 13, 0, y + 23)
end

function ContextMenu:setText(title, top, bottom)
	self._title.Text = title or ""
	self._top.Text = top or ""
	self._bottom.Text = bottom or ""
	local maxWidth = math.max(
		self._title.TextBounds.X,
		self._top.TextBounds.X,
		self._bottom.TextBounds.X
	)
	local amtNonEmpty = 0
	if self._title.Text ~= "" then
		amtNonEmpty = amtNonEmpty + 1
	end
	if self._top.Text ~= "" then
		amtNonEmpty = amtNonEmpty + 1
	end
	if self._bottom.Text ~= "" then
		amtNonEmpty = amtNonEmpty + 1
	end
	local width = maxWidth + 10
	local height = 5 + 14*amtNonEmpty + 5
	self._background.Size = UDim2.new(0, width, 0, height)
end

function ContextMenu:setEnabled(value)
	self._enabled = value
	self._background.Visible = self._enabled
end

function ContextMenu:_constructUI(screenGui)
	local background = Instance.new("Frame")
	background.Name = "ContextMenu"
	background.Size = UDim2.new(0, 140, 0, 52)
	background.Parent = screenGui
	background.Visible = false
	self._background = background
	ThemeManager:setBackgroundColor(background, Enum.StudioStyleGuideColor.MainBackground)
	ThemeManager:setBorderColor(background, Enum.StudioStyleGuideColor.Border)

	local uiListLayout = Instance.new("UIListLayout")
	uiListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	uiListLayout.Parent = background

	local uiPadding = Instance.new("UIPadding")
	uiPadding.PaddingLeft = UDim.new(0, 5)
	uiPadding.PaddingTop = UDim.new(0, 5)
	uiPadding.Parent = background

	local title = Instance.new("TextLabel")
	title.BackgroundTransparency = 1
	title.Font = Enum.Font.SourceSansBold
	title.Name = "Title"
	title.Size = UDim2.new(1, 0, 0, 14)
	title.TextSize = 14
	title.TextXAlignment = Enum.TextXAlignment.Left
	title.TextYAlignment = Enum.TextYAlignment.Top
	title.Parent = background
	self._title = title
	ThemeManager:setTextColor(title, Enum.StudioStyleGuideColor.MainText)

	local top = Instance.new("TextLabel")
	top.BackgroundTransparency = 1
	top.Font = Enum.Font.SourceSans
	top.Name = "TopText"
	top.Size = UDim2.new(1, 0, 0, 14)
	top.TextSize = 14
	top.TextXAlignment = Enum.TextXAlignment.Left
	top.TextYAlignment = Enum.TextYAlignment.Top
	top.Parent = background
	self._top = top
	ThemeManager:setTextColor(top, Enum.StudioStyleGuideColor.MainText)

	local bottom = Instance.new("TextLabel")
	bottom.BackgroundTransparency = 1
	bottom.Font = Enum.Font.SourceSans
	bottom.Name = "BottomText"
	bottom.Size = UDim2.new(1, 0, 0, 14)
	bottom.TextSize = 14
	bottom.TextXAlignment = Enum.TextXAlignment.Left
	bottom.TextYAlignment = Enum.TextYAlignment.Top
	bottom.Parent = background
	self._bottom = bottom
	ThemeManager:setTextColor(bottom, Enum.StudioStyleGuideColor.MainText)
end

return ContextMenu