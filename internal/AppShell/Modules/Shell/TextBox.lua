--[[
			// TextBox.lua

			// Creates a custom TextBox object that uses the platform virtual keyboard.
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local function createTextBox(size)
	local this = {}

	local spacing = Vector2.new()
	local defaultText = ""

	local keyboardTitle = ""
	local keyboardDescription = ""
	local keyboardType = not UserSettings().GameSettings:InStudioMode() and Enum.XboxKeyBoardType.Default
	local currentInputText = ""

	local keyboardClosedCn = nil
	local isEnabled = true

	this.OnTextChanged = Utility.Signal()

	-- need custom selection box to fit with the spacing
	local SelectionBox = Utility.Create'ImageLabel'
	{
		Name = "SelectionBox";
		Image = 'rbxasset://textures/ui/SelectionBox.png';
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(21,21,41,41);
		BackgroundTransparency = 1;
	}

	local TextBoxFrame = Utility.Create'ImageButton'
	{
		Name = "TextBoxFrame";
		Size = size;
		BackgroundTransparency = 1;
		ImageColor3 = GlobalSettings.TextBoxColor;
		ImageTransparency = GlobalSettings.TextBoxDefaultTransparency;
		Image = GlobalSettings.RoundCornerButtonImage;
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(Vector2.new(4, 4), Vector2.new(28, 28));

		SoundManager:CreateSound('MoveSelection');
	}
	local DefaultTextLabel = Utility.Create'TextLabel'
	{
		Name = "DefaultTextLabel";
		Size = UDim2.new(1, -spacing.x * 2, 1, -spacing.y * 2);
		Position = UDim2.new(0, spacing.x, 0, spacing.y);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.TextSelectedColor;
		TextXAlignment = Enum.TextXAlignment.Left;
		ZIndex = 2;
		Parent = TextBoxFrame;
	}

	local function setTextBoxSizeAndPosition()
		DefaultTextLabel.Size = UDim2.new(1, -spacing.x * 2, 1, -spacing.y * 2)
		DefaultTextLabel.Position = UDim2.new(0, spacing.x, 0, spacing.y)
		SelectionBox.Size = UDim2.new(1, spacing.x * 2 + 24, 1, spacing.y * 2 + 24)
		SelectionBox.Position = UDim2.new(0, -spacing.x - 12, 0, -spacing.y - 12)
	end
	setTextBoxSizeAndPosition()

	--[[ Input ]]--
	local function onKeyboardClosed(inputText)
		if UserSettings().GameSettings:InStudioMode() then
			return
		end
		currentInputText = inputText
		if #currentInputText == 0 then
			DefaultTextLabel.Text = this:GetDefaultText()
		elseif keyboardType == Enum.XboxKeyBoardType.Password then
			DefaultTextLabel.Text = string.rep("*", #currentInputText)
		else
			DefaultTextLabel.Text = currentInputText
		end
		DefaultTextLabel.Visible = true
		Utility.DisconnectEvent(keyboardClosedCn)
		this.OnTextChanged:fire(currentInputText)
	end

	TextBoxFrame.MouseButton1Click:connect(function()
		if isEnabled then
			if UserSettings().GameSettings:InStudioMode() or game:GetService('UserInputService'):GetPlatform() == Enum.Platform.Windows then
				Utility.DebugLog('Warning: virtual keyboard not accessable in studio')
			elseif PlatformService then
				DefaultTextLabel.Visible = false
				PlatformService:ShowKeyboard(keyboardTitle, keyboardDescription,
					currentInputText or "", keyboardType)
			end
			Utility.DisconnectEvent(keyboardClosedCn)
			if PlatformService then
				keyboardClosedCn = PlatformService.KeyboardClosed:connect(onKeyboardClosed)
			end
		end
	end)

	TextBoxFrame.SelectionGained:connect(function()
		Utility.PropertyTweener(TextBoxFrame, "ImageTransparency", GlobalSettings.TextBoxSelectedTransparency,
			GlobalSettings.TextBoxSelectedTransparency, 0, Utility.EaseInOutQuad, true)
	end)
	TextBoxFrame.SelectionLost:connect(function()
		Utility.PropertyTweener(TextBoxFrame, "ImageTransparency", GlobalSettings.TextBoxDefaultTransparency,
			GlobalSettings.TextBoxDefaultTransparency, 0, Utility.EaseInOutQuad, true)
	end)

	function this:SetKeyboardTitle(newTitle)
		keyboardTitle = newTitle
	end
	function this:SetKeyboardDescription(newDescription)
		keyboardDescription = newDescription
	end
	function this:SetKeyboardType(newType)
		keyboardType = newType
	end
	function this:SetEnabled(value)
		isEnabled = value
	end
	function this:SetParent(newParent)
		TextBoxFrame.Parent = newParent
	end
	function this:SetPosition(newPosition)
		TextBoxFrame.Position = newPosition
	end
	function this:SetSpacing(newSpacing)
		spacing = newSpacing
		setTextBoxSizeAndPosition()
	end
	function this:SetDefaultText(newText)
		defaultText = newText
		DefaultTextLabel.Text = defaultText
	end
	function this:SetFont(newFont)
		DefaultTextLabel.Font = newFont
	end
	function this:SetFontSize(newFontSize)
		DefaultTextLabel.FontSize = newFontSize
	end
	function this:SetClipsDescendants(clipsDescendants)
		DefaultTextLabel.ClipsDescendants = clipsDescendants
	end

	function this:GetContainer()
		return TextBoxFrame
	end
	function this:GetTextBox()
		return DefaultTextLabel
	end
	function this:GetDefaultText()
		return defaultText
	end

	return this
end

return createTextBox
