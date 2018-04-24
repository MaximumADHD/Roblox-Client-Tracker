--[[
			// BaseScreen.lua

			// Creates a base screen with breadcrumbs and title. Do not use for a pane/tab
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local function createBaseScreen(controller)
	local this = {}

	local container = Utility.Create'Frame'
	{
		Name = "Container";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
	}
	local backButton = Utility.Create'ImageButton'
	{
		Name = "BackButton";
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Lobby/Buttons/nine_slice_button.png';
		ImageColor3 = GlobalSettings.GreyButtonColor;
		Size = UDim2.new(0,175,0,48);
		ScaleType = Enum.ScaleType.Slice;
		SliceCenter = Rect.new(9,9,39,39);
	}
	local backImage = Utility.Create'ImageLabel'
	{
		Name = "BackImage";
		Size = UDim2.new(0,48,0,48);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/Icons/BackIcon@1080.png";
		Parent = container;
	}
	local backText = Utility.Create'TextLabel'
	{
		Name = "BackText";
		Size = UDim2.new(0, 0, 0, backImage.Size.Y.Offset);
		Position = UDim2.new(0, backImage.Size.X.Offset + 8, 0, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = "";
		Parent = container;
	}
	local titleText = Utility.Create'TextLabel'
	{
		Name = "TitleText";
		Size = UDim2.new(0, 0, 0, 35);
		Position = UDim2.new(0, 16, 0, backImage.Size.Y.Offset + 74);
		BackgroundTransparency = 1;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.HeaderSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = "";
		Parent = container;
	}

	--[[ Public API ]]--
	this.Container = container
	this.BackImage = backImage
	this.BackText = backText
	this.TitleText = titleText

	function this:SetBackText(newText)
		local TextService = game:GetService('TextService')

		local textSize = TextService:GetTextSize(
			newText,
			Utility.ConvertFontSizeEnumToInt(backText.FontSize),
			backText.Font,
			Vector2.new()) -- Essentially, we don't want to bound our textbox

		local spacing = (backButton.Size.Y.Offset - backImage.Size.Y.Offset) / 2

		backText.Text = newText

		backButton.Size = UDim2.new(0, spacing * 2 + textSize.X + backImage.Size.X.Offset + 8,
			backButton.Size.Y.Scale, backButton.Size.Y.Offset)
	end

	this:SetBackText(controller:GetBackText())

	backButton.MouseButton1Click:connect(function()
		controller:OnBackButtonClick()
	end)

	return this
end

return createBaseScreen
