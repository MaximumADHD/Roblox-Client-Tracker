--[[
				// BadgeOverlay.lua

			// Displays information for a single badge
			// Used by GameDetail and BadgeScreen
]]
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local GuiService = game:GetService('GuiService')
local ContextActionService = game:GetService("ContextActionService")

local AssetManager = require(ShellModules:FindFirstChild('AssetManager'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScrollingTextBox = require(ShellModules:FindFirstChild('ScrollingTextBox'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local BaseOverlay = require(ShellModules:FindFirstChild('BaseOverlay'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local createBadgeOverlay = function(badgeData)
	local this = BaseOverlay()

	local hasBadge = badgeData["IsOwned"]
	this:SetImageBackgroundTransparency(0)
	this:SetImageBackgroundColor(hasBadge and GlobalSettings.BadgeOwnedColor or GlobalSettings.BadgeOverlayColor)

	local badgeImage = Utility.Create'ImageLabel'
	{
		Name = "BadgeImage";
		Size = UDim2.new(0, 394, 0, 394);
		BackgroundTransparency = 1;
		Image = 'http://www.roblox.com/Thumbs/Asset.ashx?width='..
				tostring(250)..'&height='..tostring(250)..'&assetId='..tostring(badgeData.AssetId);
	}
	badgeImage.Position = UDim2.new(0.5, -197, 0.5, -197)
	this:SetImage(badgeImage)

	local titleText = Utility.Create'TextLabel'
	{
		Name = "TitleText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, this.RightAlign, 0, 88);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.HeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = badgeData.Name;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = this.Container;
	}

	--[[ Has Badge ]]--
	local hasBadgeContainer = nil
	if hasBadge then
		hasBadgeContainer = Utility.Create'Frame'
		{
			Name = "HasBadgeContainer";
			Position = UDim2.new(0, titleText.Position.X.Offset, 0, titleText.Position.Y.Offset + 34);
			BackgroundTransparency = 1;
			Parent = this.Container;
		}
		local hasBadgeImage = Utility.Create'ImageLabel'
		{
			Name = "HasBadgeImage";
			BackgroundTransparency = 1;
			Parent = hasBadgeContainer;
			Image = "rbxasset://textures/ui/Shell/Icons/Checkmark@1080.png";
			Size = UDim2.new(0,35,0,35);
		}
		hasBadgeContainer.Size = UDim2.new(0, 200, 0, hasBadgeImage.Size.Y.Offset)
		local hasBadgeText = Utility.Create'TextLabel'
		{
			Name = "HasBadgeText";
			Size = UDim2.new(0, 0, 0, 0);
			Position = UDim2.new(0, hasBadgeImage.Size.X.Offset + 12, 0.5, 0);
			BackgroundTransparency = 1;
			Font = GlobalSettings.ItalicFont;
			FontSize = GlobalSettings.DescriptionSize;
			TextColor3 = GlobalSettings.GreenTextColor;
			TextXAlignment = Enum.TextXAlignment.Left;
			Text = Strings:LocalizedString("HaveBadgeWord");
			Parent = hasBadgeContainer;
		}
	end

	--[[ Description ]]--
	local descriptionYOffset = hasBadgeContainer and hasBadgeContainer.Position.Y.Offset + hasBadgeContainer.Size.Y.Offset + 10 or
		titleText.Position.Y.Offset + 40

	local descriptionScrollingTextBox = ScrollingTextBox(UDim2.new(0, 762, 0, 304),
		UDim2.new(0, titleText.Position.X.Offset, 0, descriptionYOffset),
		this.Container)
	descriptionScrollingTextBox:SetText(badgeData.Description)
	descriptionScrollingTextBox:SetFontSize(GlobalSettings.TitleSize)
	local descriptionFrame = descriptionScrollingTextBox:GetContainer()

	local okButton = Utility.Create'TextButton'
	{
		Name = "OkButton";
		Size = UDim2.new(0, 320, 0, 66);
		Position = UDim2.new(0, titleText.Position.X.Offset, 1, -66 - 55);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.BlueButtonColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.TextSelectedColor;
		Text = Utility.Upper(Strings:LocalizedString("OkWord"));
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(okButton, okButton, GlobalSettings.TextHorizontalPadding)

	--[[ Input Events ]]--
	okButton.MouseButton1Click:connect(function()
		this:Close()
	end)
	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(this)
		Utility.SetSelectedCoreObject(okButton)
	end

	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')]  = Analytics.WidgetNames('BadgeOverlayId');
			AssetId = badgeData.AssetId;
		}
	end

	return this
end

return createBadgeOverlay
