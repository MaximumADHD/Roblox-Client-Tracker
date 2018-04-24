local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local BaseOverlay = require(ShellModules:FindFirstChild('BaseOverlay'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createDisableCrossplayOverlay(overlayInfo)
	local this = BaseOverlay()

	local title = overlayInfo.Title
	local message = overlayInfo.Msg
	local callback = overlayInfo.Callback

	this:SetImage(
		Utility.Create'ImageLabel'
		{
			Name = "ReportIcon";
			Position = UDim2.new(0, 226, 0, 204);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Shell/Icons/ErrorIconLargeCopy@1080.png";
			Size = UDim2.new(0,321,0,264);
		}
	)

	local titleText = Utility.Create'TextLabel'
	{
		Name = "TitleText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, this.RightAlign, 0, 136);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.HeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = title;
		TextXAlignment = Enum.TextXAlignment.Left;
		Parent = this.Container;
	}

	local descriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Size = UDim2.new(0, 762, 0, 304);
		Position = UDim2.new(0, this.RightAlign, 0, titleText.Position.Y.Offset + 62);
		BackgroundTransparency = 1;
		TextXAlignment = Enum.TextXAlignment.Left;
		TextYAlignment = Enum.TextYAlignment.Top;
		Font = GlobalSettings.LightFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextWrapped = true;
		Text = message;
		Parent = this.Container;
	}

	local keepEnabledButton = Utility.Create'TextButton'
	{
		Name = "KeepEnabledButton";
		Position = UDim2.new(0, this.RightAlign, 1, -100 - 66);
		Size = UDim2.new(0, 320, 0, 66);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.BlueButtonColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.BlackTextColor;
		Text = Strings:LocalizedString("KeepEnabledPhrase");
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(keepEnabledButton, keepEnabledButton, GlobalSettings.TextHorizontalPadding)

	local disableButton = Utility.Create'TextButton'
	{
		Name = "OkButton";
		Position = UDim2.new(0, keepEnabledButton.Position.X.Offset + keepEnabledButton.Size.X.Offset + 10, 1, -100 - 66);
		Size = UDim2.new(0, 320, 0, 66);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.GreyButtonColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("DisableWord");
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(disableButton, disableButton, GlobalSettings.TextHorizontalPadding)

	keepEnabledButton.SelectionGained:connect(function()
		keepEnabledButton.BackgroundColor3 = GlobalSettings.GreySelectedButtonColor
		keepEnabledButton.TextColor3 = GlobalSettings.TextSelectedColor
	end)
	keepEnabledButton.SelectionLost:connect(function()
		keepEnabledButton.BackgroundColor3 = GlobalSettings.GreyButtonColor
		keepEnabledButton.TextColor3 = GlobalSettings.WhiteTextColor
	end)

	disableButton.SelectionGained:connect(function()
		disableButton.BackgroundColor3 = GlobalSettings.GreySelectedButtonColor
		disableButton.TextColor3 = GlobalSettings.TextSelectedColor
	end)
	disableButton.SelectionLost:connect(function()
		disableButton.BackgroundColor3 = GlobalSettings.GreyButtonColor
		disableButton.TextColor3 = GlobalSettings.WhiteTextColor
	end)


	--[[ Input Events ]]--
	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('DisableCrossplayOverlayId');
			Title = overlayInfo.Title;
		}
	end

	disableButton.MouseButton1Click:connect(function()
		if this:Close() then
			callback()
		end
	end)

	keepEnabledButton.MouseButton1Click:connect(function()
		this:Close()
	end)

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		Utility.SetSelectedCoreObject(keepEnabledButton)
	end

	function this:GetOverlaySound()
		return 'Error'
	end

	return this
end

return createDisableCrossplayOverlay
