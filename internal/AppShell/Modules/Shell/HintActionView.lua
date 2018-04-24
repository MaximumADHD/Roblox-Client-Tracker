--[[
				// HintActionView.lua

				// Creates a hint action view that can be used to bind an action
				// to a button on a gamepad.
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local ContextActionService = game:GetService("ContextActionService")
local TextService = game:GetService('TextService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local TEXT_PADDING = 8

local function createHintActionView(parent, actionName, positionMult)
	if positionMult == nil then
		positionMult = UDim2.new(1, -1, 1, -1)
	end

	local this = {}

	if actionName == nil or #actionName == 0 then
		actionName = "DefaultHintAction"
	end

	-- GUIs
	local container = Utility.Create'Frame'
	{
		Name = "HintActionContainer";
		Size = UDim2.new(0, 0, 0, 0);
		BackgroundTransparency = 1;
		Parent = parent;
	}

	local text = Utility.Create'TextLabel'
	{
		Name = "HintActionText";
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Right;
		Text = "";
		ZIndex = 10;
		Parent = container;
	}

	local buttonImage = Utility.Create'ImageLabel'
	{
		Name = "HintActionImage";
		Size = UDim2.new(0, 83, 0, 83);
		BackgroundTransparency = 1;
		Image = "";
		ZIndex = 10;
		Parent = container;
	}

	local function updateLayout()
		local size = TextService:GetTextSize(text.Text, Utility.ConvertFontSizeEnumToInt(text.FontSize), text.Font, Vector2.new(0, 0))
		text.Size = UDim2.new(0, size.x, 0, buttonImage.Size.Y.Offset)
		text.Position = UDim2.new(1, -size.x, 0, -4)

		size = size.x + buttonImage.Size.X.Offset + TEXT_PADDING

		container.Size = UDim2.new(0, size, 0, buttonImage.Size.Y.Offset)

		container.Position = UDim2.new(
			positionMult.X.Scale,
			positionMult.X.Offset * container.Size.X.Offset,
			positionMult.Y.Scale,
			positionMult.Y.Offset * container.Size.Y.Offset)
	end

	-- Action bind
	function this:BindAction(actionFunc, keyCode)
		if not actionFunc then
			return
		end

		ContextActionService:UnbindCoreAction(actionName)
		ContextActionService:BindCoreAction(actionName, actionFunc, false, keyCode)
	end

	function this:UnbindAction()
		ContextActionService:UnbindCoreAction(actionName)
	end

	function this:SetParent(newParent)
		container.Parent = newParent
	end

	function this:SetVisible(value)
		container.Visible = value
	end

	function this:SetTransparency(value)
		text.TextTransparency = value
		buttonImage.ImageTransparency = value
	end

	function this:SetVisibleWithTween(newValue)
		Utility.PropertyTweener(text, "TextTransparency", text.TextTransparency, newValue, 0.25, Utility.EaseOutQuad, true)
		Utility.PropertyTweener(buttonImage, "ImageTransparency", buttonImage.ImageTransparency, newValue, 0.25, Utility.EaseOutQuad, true)
	end

	function this:SetText(newText)
		if newText == text.Text then
			return
		end

		text.Text = newText
		updateLayout()
	end

	function this:SetImage(newImage)
		if newImage == buttonImage.Image then
			return
		end

		buttonImage.Image = newImage
	end

	return this
end

return createHintActionView
