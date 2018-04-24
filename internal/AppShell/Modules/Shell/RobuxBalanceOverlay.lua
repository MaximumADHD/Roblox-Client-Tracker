--[[
				// RobuxBalanceOverlay.lua
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local TextService = game:GetService('TextService')

local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local BaseOverlay = require(ShellModules:FindFirstChild('BaseOverlay'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local CurrencyWidgetModule = require(ShellModules:FindFirstChild('CurrencyWidget'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createRobuxBalanceOverlay(platformBalance, totalBalance)
	local this = BaseOverlay()

	local currencyWidget = nil
	local onRobuxChangedCn = nil

	local overlayImage = Utility.Create'ImageLabel'
	{
		Name = "OverlayImage";
		Size = UDim2.new(0, 416, 0, 416);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/AlertIcon.png';
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}
	this:SetImage(overlayImage)

	local titleText = Utility.Create'TextLabel'
	{
		Name = "TitleText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, this.RightAlign, 0, 88);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.HeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("RobuxBalanceOverlayTitle");
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = this.Container;
	}
	local descriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Size = UDim2.new(0, 762, 0, 126);
		Position = UDim2.new(0, this.RightAlign, 0, titleText.Position.Y.Offset + 62);
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextWrapped = true;
		Text = Strings:LocalizedString("RobuxBalanceOverlayPhrase");
		Parent = this.Container;
	}
	local platformBalanceTitle = Utility.Create'TextLabel'
	{
		Name = "platformBalanceTitle";
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("PlatformBalanceTitle");
		Parent = this.Container;
	}
	local offsetSize = TextService:GetTextSize(platformBalanceTitle.Text, 42, GlobalSettings.RegularFont, Vector2.new())
	platformBalanceTitle.Size = UDim2.new(0, offsetSize.x, 0, offsetSize.y)
	platformBalanceTitle.AnchorPoint = Vector2.new(0, 0.5)
	platformBalanceTitle.Position = UDim2.new(0, this.RightAlign, 0, descriptionText.Position.Y.Offset + descriptionText.Size.Y.Offset + 60)

	local totalBalanceTitle = platformBalanceTitle:Clone()
	totalBalanceTitle.Name = "TotalBalanceTitle"
	totalBalanceTitle.Text = Strings:LocalizedString("TotalBalanceTitle");
	totalBalanceTitle.Parent = this.Container
	offsetSize = TextService:GetTextSize(totalBalanceTitle.Text, 42, GlobalSettings.RegularFont, Vector2.new())
	totalBalanceTitle.Size = UDim2.new(0, offsetSize.x, 0, offsetSize.y)
	totalBalanceTitle.AnchorPoint = Vector2.new(0, 0.5)
	totalBalanceTitle.Position = UDim2.new(0, this.RightAlign, 0, platformBalanceTitle.Position.Y.Offset + platformBalanceTitle.Size.Y.Offset + 16)

	local platformBalanceText = Utility.Create'TextLabel'
	{
		Name = "XboxBalanceText";
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextColor3 = GlobalSettings.GreenTextColor;
		Parent = this.Container;
	}

	local function setPlatformBalance(newBalance)
		platformBalanceText.Text = Utility.FormatNumberString(newBalance)
		offsetSize = TextService:GetTextSize(platformBalanceText.Text, 42, GlobalSettings.RegularFont, Vector2.new())
		platformBalanceText.Size = UDim2.new(0, offsetSize.x, 0, offsetSize.y)
		platformBalanceText.AnchorPoint = Vector2.new(0, 0.5)
		platformBalanceText.Position = UDim2.new(0, this.RightAlign + platformBalanceTitle.Size.X.Offset + 8, 0, platformBalanceTitle.Position.Y.Offset)
	end
	setPlatformBalance(platformBalance)

	local totalBalanceText = platformBalanceText:Clone()
	totalBalanceText.Name = "TotalBalanceText"
	totalBalanceText.Parent = this.Container

	local function setTotalBalance(newBalance)
		totalBalanceText.Text = Utility.FormatNumberString(newBalance)
		offsetSize = TextService:GetTextSize(totalBalanceText.Text, 42, GlobalSettings.RegularFont, Vector2.new())
		totalBalanceText.Size = UDim2.new(0, offsetSize.x, 0, offsetSize.y)
		totalBalanceText.Position = UDim2.new(0, this.RightAlign + totalBalanceTitle.Size.X.Offset + 8, 0, totalBalanceTitle.Position.Y.Offset)
	end
	setTotalBalance(totalBalance)

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
		Text = Strings:LocalizedString("OkWord");
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(okButton, okButton, GlobalSettings.TextHorizontalPadding)

	--[[ Input Events ]]--
	okButton.MouseButton1Click:connect(function()
		this:Close()
	end)

	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('RobuxBalanceOverlayId')}
	end

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(this)
		Utility.SetSelectedCoreObject(okButton)

		-- listen to robux changing
		if not currencyWidget then
			currencyWidget = CurrencyWidgetModule()
		end
		onRobuxChangedCn = Utility.DisconnectEvent(onRobuxChangedCn)
		onRobuxChangedCn = currencyWidget.RobuxChanged:connect(function(newPlatformBalance)
			setPlatformBalance(newPlatformBalance)
			setTotalBalance(UserData.GetTotalUserBalanceAsync())
		end)
	end

	function this:ScreenRemoved()
		onRobuxChangedCn = Utility.DisconnectEvent(onRobuxChangedCn)
		currencyWidget:Destroy()
		currencyWidget = nil
	end

	return this
end

return createRobuxBalanceOverlay
