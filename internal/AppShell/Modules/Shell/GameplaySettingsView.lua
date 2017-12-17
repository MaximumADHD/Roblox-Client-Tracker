local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local GameplaySettingsData = require(ShellModules:FindFirstChild('GameplaySettingsData'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local DisableCrossplayOverlay = require(ShellModules:FindFirstChild('DisableCrossplayOverlay'))
local EnableCrossplayOverlay = require(ShellModules:FindFirstChild('EnableCrossplayOverlay'))
local UserData = require(ShellModules:FindFirstChild('UserData'))


local function createGameplaySettingsView(loadFinishedCallback)
	local this = {}

	local gamerTag = UserData:GetDisplayName() or ""
	local robloxName = UserData:GetRobloxName() or ""
	local rbxuid = UserData:GetRbxUserId()
	local linkedAsPhrase = string.format(Strings:LocalizedString('LinkedAsPhrase'), gamerTag, robloxName)

	local Container = Utility.Create'Frame'
	{
		Name = "Container";
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(0, 765, 0, 630);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Parent = this.Container;
	}

	Utility.Create'TextLabel'
	{
		Name = "SectionTitle";
		TextXAlignment = 'Left';
		TextYAlignment = 'Bottom';
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, 40, 0, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString('GameplaySettingsTitle');
		Parent = Container;
	}

	Utility.Create'TextLabel'
	{
		Name = "SubsectionTitle";
		TextXAlignment = 'Left';
		TextYAlignment = 'Bottom';
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0, 40, 0, 50);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.SubHeaderSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString('Cross-Platform Gameplay');
		Parent = Container;
	}

	local EnabledStatusButton = Utility.Create'ImageButton'
	{
		Name = "EnabledStatusButton";
		Position = UDim2.new(0, 40, 0, 100);
		Size = UDim2.new(0, 450, 0, 80);

		BackgroundTransparency = 0.9;
		BackgroundColor3 = GlobalSettings.GreySelectedButtonColor;

		ZIndex = 1;
		Parent = Container;

		Selectable = false;

		SoundManager:CreateSound('MoveSelection');
	}

	local EnabledStatusText = Utility.Create'TextLabel'
	{
		Name = "EnabledStatusText";

		TextXAlignment = 'Left';
		TextYAlignment = 'Center';

		Size = UDim2.new(1, 0, 1, 0);
		Position = UDim2.new(0, 32, 0, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.ButtonSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		ZIndex = 2;
		Selectable = false;

		Parent = EnabledStatusButton;
	}

	local EnabledStatusIcon = Utility.Create'ImageLabel'
	{
		Name = "EnabledStatusIcon";
		Position = UDim2.new(1, -64, 0.5, -16);
		Size = UDim2.new(0, 32, 0, 32);
		BackgroundTransparency = 1;
		Image = "rbxasset://textures/ui/Shell/Icons/EnabledStatusIcon.png";
		ZIndex = 2;
		Selectable = false;

		Parent = EnabledStatusButton;
	}
	--Make the EnabledStatusButton big enough
	Utility.ResizeButtonWithDynamicText(EnabledStatusButton, EnabledStatusText,
		{Strings:LocalizedString("EnabledWord"), Strings:LocalizedString("DisabledWord"), Strings:LocalizedString("LoadingWord")},
		GlobalSettings.TextHorizontalPadding + EnabledStatusText.Position.X.Offset/2)
	EnabledStatusButton.Size = UDim2.new(EnabledStatusButton.Size.X.Scale, EnabledStatusButton.Size.X.Offset + EnabledStatusIcon.Size.X.Offset + 32,
		EnabledStatusButton.Size.Y.Scale, EnabledStatusButton.Size.Y.Offset)

	local isEnabled = true

	local function SetCrossplayEnabled(val)
		GameplaySettingsData.SetCrossplayEnabledStatus(val)
		SetIsEnabledInView(val)
	end

	EnabledStatusButton.MouseButton1Click:connect(function()
		if isEnabled then
			ScreenManager:OpenScreen(DisableCrossplayOverlay(
				{
					Title = Strings:LocalizedString("DisableCrossplayOverlayTitle"),
					Msg = Strings:LocalizedString("DisableCrossplayOverlayMessage"),
					Callback = function()
						SetCrossplayEnabled(false)
					end
				}),
				false
			)
		else
			SetCrossplayEnabled(true)
			ScreenManager:OpenScreen(EnableCrossplayOverlay(
				{
					Title = Strings:LocalizedString("EnableCrossplayOverlayTitle"),
					Msg = Strings:LocalizedString("EnableCrossplayOverlayMessage"),
					Callback = function() end
				}),
				false
			)
		end

		SoundManager:Play('ButtonPress')
	end)

	local DescriptionText = Utility.Create'TextLabel'
	{
		Name = "DescriptionText";
		Position = UDim2.new(0, 40, 0, 220);
		Size = UDim2.new(0, 450, 0, 120);

		Text = "";
		TextXAlignment = 'Left';
		TextYAlignment = 'Top';

		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		TextColor3 = GlobalSettings.GreyTextColor;
		FontSize = GlobalSettings.SubHeaderSize;
		TextWrapped = true;
		Parent = Container;
	}

	function SetIsEnabledInView(val)
		isEnabled = val
		if isEnabled then
			EnabledStatusIcon.ImageColor3 = Color3.new(0, 0.9, 0);
			EnabledStatusText.Text = Strings:LocalizedString("EnabledWord");
			DescriptionText.Text = Strings:LocalizedString("CrossplayEnabledDescription");
		else
			EnabledStatusIcon.ImageColor3 = Color3.new(0.9, 0, 0);
			EnabledStatusText.Text = Strings:LocalizedString("DisabledWord");
			DescriptionText.Text = Strings:LocalizedString("CrossplayDisabledDescription");
		end
	end

	EnabledStatusIcon.ImageColor3 = Color3.new(1, 1, 1);
	EnabledStatusText.Text = Strings:LocalizedString("LoadingWord");
	DescriptionText.Text = ""

	spawn(
		function()
			local val = GameplaySettingsData.GetCrossplayEnabledStatus()
			SetIsEnabledInView(val)
			loadFinishedCallback(this)
		end
	)

	--[[ Public API ]]--
	function this:SetParent(newParent)
		Container.Parent = newParent
	end

	function this:GetEnabledStatusButton()
		return EnabledStatusButton
	end

	return this
end

return createGameplaySettingsView
