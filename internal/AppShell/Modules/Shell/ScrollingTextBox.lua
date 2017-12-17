--[[
			// ScrollingTextBox.lua

			// Creates a scrolling text box to be used with controlers and selectable
			// guis

			// NOTE: Add any api needed to further expand this module
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local TextService = game:GetService('TextService')

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local EnableThumbStick2Scroll = settings():GetFFlag('EnableThumbStick2Scroll')

local createScrollingTextBox = function(size, position, parent)
	local this = {}

	local SCROLL_BUFFER = 2

	this.OnSelectableChanged = Utility.Signal()

	-- adjust selection image
	local edgeSelectionImage = Utility.Create'ImageLabel'
	{
		Name = "EdgeSelectionImage";
		Size = UDim2.new(1, 32, 1, 32);
		Position = UDim2.new(0, -16, 0, -16);
		Image = 'rbxasset://textures/ui/SelectionBox.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(21,21,41,41);
		BackgroundTransparency = 1;
	}

	local container = Utility.Create'Frame'
	{
		Name = "ScrollingTextBox";
		Size = size or UDim2.new();
		Position = position or UDim2.new();
		BackgroundTransparency = 1;
		Parent = parent;
	}
	local scrollingFrame = Utility.Create'ScrollingFrame'
	{
		Name = "ScrollingBox";
		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		ScrollBarThickness = 0;
		SelectionImageObject = edgeSelectionImage;
		Selectable = false;
		Parent = container;

		SoundManager:CreateSound('MoveSelection');
	}
	local textLabel = Utility.Create'TextLabel'
	{
		Name = "TextLabel";
		Size = UDim2.new(1, 0, 4, 0);
		Position = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.DescriptionSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextWrapped = true;
		Text = "";
		Parent = scrollingFrame;
	}
	local upArrow = Utility.Create'ImageLabel'
	{
		Name = "UpArrow";
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.WhiteTextColor;
		Visible = false;
		Parent = container;
		Image = "rbxasset://textures/ui/Shell/Icons/UpIndicatorIcon@1080.png";
		Size = UDim2.new(0, 20, 0, 18);
		Position = UDim2.new(1, -20, 1, 21);
	}
	local downArrow = Utility.Create'ImageLabel'
	{
		Name = "DownArrow";
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.WhiteTextColor;
		Visible = false;
		Parent = container;
		Image = "rbxasset://textures/ui/Shell/Icons/DownIndicatorIcon@1080.png";
		Size = UDim2.new(0, 20, 0, 18);
		Position = UDim2.new(1, -20, 1, 43);
	}

	local hintImage = Utility.Create'ImageLabel'
	{
		Name = "RightStickHint";
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.WhiteTextColor;
		Visible = false;
		Parent = container;
		Image = "rbxasset://textures/ui/Shell/Icons/RightStickHint@1080.png";
		Size = UDim2.new(0, 32, 0, 32);
		Position = UDim2.new(1, -64, 1, 25);
	}

	--[[ Private Functions ]]--
	local function setArrowState()
		local canvasPosition = scrollingFrame.CanvasPosition
		local maxSizeY = textLabel.AbsoluteSize.y - scrollingFrame.AbsoluteWindowSize.y
		if canvasPosition.y >= maxSizeY - SCROLL_BUFFER then
			downArrow.ImageColor3 = GlobalSettings.GreyTextColor
		else
			downArrow.ImageColor3 = GlobalSettings.WhiteTextColor
		end
		if canvasPosition.y <= SCROLL_BUFFER then
			upArrow.ImageColor3 = GlobalSettings.GreyTextColor
		else
			upArrow.ImageColor3 = GlobalSettings.WhiteTextColor
		end
	end

	local function setScrollSize()
		local textSize = TextService:GetTextSize(textLabel.Text, Utility.ConvertFontSizeEnumToInt(textLabel.FontSize), textLabel.Font, Vector2.new(textLabel.AbsoluteSize.X, 6000))
		local ySize = textSize.y

		textLabel.Size = UDim2.new(1, 0, 0, ySize)
		scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, ySize)
		local areArrowsVisible = ySize > scrollingFrame.AbsoluteSize.y
		this:SetArrowsVisible(areArrowsVisible)
		this:SetSelectable(areArrowsVisible)
		setArrowState();
	end

	--[[ Events ]]--
	scrollingFrame:GetPropertyChangedSignal('CanvasPosition'):connect(function()
		setArrowState()
	end)
	scrollingFrame:GetPropertyChangedSignal('AbsoluteWindowSize'):connect(function()
		setArrowState()
	end)
	if EnableThumbStick2Scroll then
		scrollingFrame.SelectionGained:Connect(function()
			hintImage.Visible = true
		end)
		scrollingFrame.SelectionLost:Connect(function()
			hintImage.Visible = false
		end)
	end


	--[[ Public API ]]--
	function this:SetParent(newParent)
		if scrollingFrame.Parent ~= newParent then
			scrollingFrame.Parent = newParent
			spawn(function()
				setScrollSize()
			end)
		end
	end

	function this:SetPosition(newPosition)
		scrollingFrame.Position = newPosition
	end

	function this:SetSize(newSize)
		if scrollingFrame.Size ~= newSize then
			scrollingFrame.Size = newSize
			spawn(function()
				setScrollSize()
			end)
		end
	end

	function this:SetFontSize(newFontSize)
		if textLabel.FontSize ~= newFontSize then
			textLabel.FontSize = newFontSize
			spawn(function()
				setScrollSize()
			end)
		end
	end

	function this:SetFont(newFont)
		if textLabel.Font ~= newFont then
			textLabel.Font = newFont
			spawn(function()
				setScrollSize()
			end)
		end
	end

	function this:SetText(text)
		if textLabel.Text ~= tostring(text) then
			textLabel.Text = tostring(text)
			spawn(function()
				setScrollSize()
			end)
		end
	end

	function this:SetSelectable(value)
		scrollingFrame.Selectable = value
		this.OnSelectableChanged:fire(value)
	end

	function this:SetZIndex(value)
		container.ZIndex = value
		textLabel.ZIndex = value
		upArrow.ZIndex = value
		downArrow.ZIndex = value
		if EnableThumbStick2Scroll then
			hintImage.ZIndex = value
		end
	end

	function this:SetArrowsVisible(value)
		upArrow.Visible = value
		downArrow.Visible = value
	end

	function this:GetContainer()
		return container
	end

	function this:GetSelectableObject()
		return scrollingFrame
	end

	function this:GetArrowsVisible()
		return upArrow.Visible
	end

	function this:IsSelectable()
		return scrollingFrame.Selectable
	end

	return this
end

return createScrollingTextBox
