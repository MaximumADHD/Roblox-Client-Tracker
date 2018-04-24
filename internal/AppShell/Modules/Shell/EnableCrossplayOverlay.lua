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

local function createEnableCrossplayOverlay(overlayInfo)
	local this = BaseOverlay()

	local title = overlayInfo.Title
	local message = overlayInfo.Msg
	local callback = overlayInfo.Callback

	this:SetImage(
		Utility.Create'ImageLabel'
		{
			Name = "AlertIcon";
			Size = UDim2.new(0, 416, 0, 416);
			BackgroundTransparency = 1;
			Image = 'rbxasset://textures/ui/Shell/Icons/AlertIcon.png';
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
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

	local okButton = Utility.Create'TextButton'
	{
		Name = "OkButton";
		Position = UDim2.new(0, this.RightAlign, 1, -100 - 66);
		Size = UDim2.new(0, 320, 0, 66);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.BlueButtonColor;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.BlackTextColor;
		Text = Strings:LocalizedString("OkWord");
		Parent = this.Container;

		SoundManager:CreateSound('MoveSelection');
	}
	Utility.ResizeButtonWithText(okButton, okButton, GlobalSettings.TextHorizontalPadding)

	--[[ Input Events ]]--
	function this:GetAnalyticsInfo()
		return
		{
			[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('EnableCrossplayOverlayId');
			Title = overlayInfo.Title;
		}
	end

	okButton.MouseButton1Click:connect(function()
		if this:Close() then
			callback()
		end
	end)

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		Utility.SetSelectedCoreObject(okButton)
	end

	function this:GetOverlaySound()
		return 'OverlayOpen'
	end

	return this
end

return createEnableCrossplayOverlay
