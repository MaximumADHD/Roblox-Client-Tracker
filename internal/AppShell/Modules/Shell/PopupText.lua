--[[
			// PopupText.lua

			// Creates a transparent text label that pops up when
			// its parent it selected
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local TextService = game:GetService('TextService')

local VERTICAL_PADDING = 12
local HORIZONTAL_PADDING = 18
local SELECTION_BORDER = 7

local createPopupText = function(parent, text)
	local this = {}

	local tweenTime = 0.3
	local easingStyle = Enum.EasingStyle.Quad
	local easingDirection = Enum.EasingDirection.Out

	local currentZIndex = 2

	local clipFrame = Utility.Create'Frame'
	{
		Name = "ClipFrame";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		ZIndex = currentZIndex;
		ClipsDescendants = true;
		Parent = parent
	}

	local bg = Utility.Create'Frame'
	{
		Name = "PopupBG";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 1, 5);
		BackgroundTransparency = GlobalSettings.ModalBackgroundTransparency;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = currentZIndex;
		Parent = clipFrame;
	}
	local nameLabel = Utility.Create'TextLabel'
	{
		Name = "NameLabel";
		Size = UDim2.new(1, -HORIZONTAL_PADDING, 1, -VERTICAL_PADDING);
		Position = UDim2.new(0, HORIZONTAL_PADDING/2 + SELECTION_BORDER, 0, VERTICAL_PADDING/2);
		BackgroundTransparency = 1;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextWrapped = true;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		ZIndex = currentZIndex;
		Text = text;
		Parent = bg;
	}

	-- resize based on text bounds
	local function resizeBounds()
		local nameLabelTextSize = TextService:GetTextSize(
			nameLabel.Text,
			Utility.ConvertFontSizeEnumToInt(nameLabel.FontSize),
			nameLabel.Font,
			Vector2.new(clipFrame.AbsoluteSize.x - SELECTION_BORDER - HORIZONTAL_PADDING, clipFrame.AbsoluteSize.y - SELECTION_BORDER -VERTICAL_PADDING))

		local newSizeX = nameLabelTextSize.x + HORIZONTAL_PADDING
		local newSizeY = math.min(nameLabelTextSize.y + VERTICAL_PADDING, parent.AbsoluteSize.y * 0.75)
		bg.Size = UDim2.new(0, newSizeX + SELECTION_BORDER, 0, newSizeY + SELECTION_BORDER)
	end
	spawn(function()
		resizeBounds()
	end)

	parent.SelectionGained:connect(function()
		if #nameLabel.Text > 0 then
			resizeBounds()
			Utility.TweenPositionOrSet(bg, UDim2.new(0, 0, 1, -bg.Size.Y.Offset), easingDirection, easingStyle, tweenTime, true)
		end
	end)
	parent.SelectionLost:connect(function()
		Utility.TweenPositionOrSet(bg, UDim2.new(0, 0, 1, 5), easingDirection, easingStyle, tweenTime, true)
	end)

	function this:SetTweenTime(value)
		tweenTime = value
	end
	function this:SetEasingStyle(style)
		easingStyle = style
	end
	function this:SetEasingDirection(direction)
		easingDirection = direction
	end
	function this:SetText(text)
		nameLabel.Text = text
		resizeBounds()
		if #text == 0 then
			bg.Position = UDim2.new(0, 0, 1, 5)
		end
	end
	function this:SetZIndex(zindex)
		if zindex ~= currentZIndex then
			currentZIndex = zindex

			clipFrame.ZIndex = currentZIndex
			bg.ZIndex = currentZIndex
			nameLabel.ZIndex = currentZIndex
		end
	end

	return this
end

return createPopupText
