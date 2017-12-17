
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Templates = ShellModules:FindFirstChild("Templates")

local SettingsScreenBase = require(Templates:FindFirstChild('SettingsScreenBase'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))


local function createSettingsScreenConsole(controller)
	local this = SettingsScreenBase(controller)

	local DefaultTransparency = GlobalSettings.TextBoxDefaultTransparency
	local SelectedTransparency = GlobalSettings.TextBoxSelectedTransparency

	local spacing = this.Spacing

	local SwitchProfileButton = Utility.Create'TextButton'
	{
		Name = "SwitchProfileButton";
		Size = UDim2.new(0, 394, 0, 612);
		Position = UDim2.new(0, this.AccountButton.Size.X.Offset + spacing, 0, 238);
		BackgroundTransparency = DefaultTransparency;
		BackgroundColor3 = GlobalSettings.TextBoxColor;
		BorderSizePixel = 0;
		Text = "";
		Parent = this.Container;
		SoundManager:CreateSound('MoveSelection');
	}

	local OverscanButton = SwitchProfileButton:Clone()
	OverscanButton.Name = "OverscanButton"
	OverscanButton.Position = UDim2.new(0, SwitchProfileButton.Position.X.Offset + SwitchProfileButton.Size.X.Offset + spacing, 0, 238)
	OverscanButton.Parent = this.Container

	local HelpButton = OverscanButton:Clone()
	HelpButton.Name = "HelpButton"
	HelpButton.Position = UDim2.new(0, OverscanButton.Position.X.Offset + OverscanButton.Size.X.Offset + spacing, 0, 238)
	HelpButton.Parent = this.Container


	local SwitchProfileIcon = Utility.Create'ImageLabel'
	{
		Name = "SwitchProfileIcon";
		Size = UDim2.new(0, 224, 0, 255);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/ProfileIcon.png';
		Parent = SwitchProfileButton;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}
	local SwitchProfileText = Utility.Create'TextLabel'
	{
		Name = "SwitchProfileText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 1, -96);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("SwitchProfileWord");
		Parent = SwitchProfileButton;
	}

	local OverscanIcon = Utility.Create'ImageLabel'
	{
		Name = "OverscanIcon";
		Size = UDim2.new(0, 256, 0, 181);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/TVIcon.png';
		Parent = OverscanButton;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}
	local OverscanText = SwitchProfileText:Clone()
	OverscanText.Name = "OverscanText";
	OverscanText.Text = Strings:LocalizedString("OverscanWord");
	OverscanText.Parent = OverscanButton

	local HelpIcon = Utility.Create'ImageLabel'
	{
		Name = "HelpIcon";
		Size = UDim2.new(0, 256, 0, 256);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/HelpIcon.png';
		Parent = HelpButton;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}
	local HelpText = SwitchProfileText:Clone()
	HelpText.Name = "HelpText";
	HelpText.Text = Strings:LocalizedString("HelpWord");
	HelpText.Parent = HelpButton


	SwitchProfileButton.SelectionGained:connect(function()
		Utility.PropertyTweener(SwitchProfileButton, "BackgroundTransparency", SelectedTransparency,
			SelectedTransparency, 0, Utility.EaseInOutQuad, true)
	end)
	SwitchProfileButton.SelectionLost:connect(function()
		SwitchProfileButton.BackgroundTransparency = DefaultTransparency
	end)
	OverscanButton.SelectionGained:connect(function()
		Utility.PropertyTweener(OverscanButton, "BackgroundTransparency", SelectedTransparency,
			SelectedTransparency, 0, Utility.EaseInOutQuad, true)
	end)
	OverscanButton.SelectionLost:connect(function()
		OverscanButton.BackgroundTransparency = DefaultTransparency
	end)
	HelpButton.SelectionGained:connect(function()
		Utility.PropertyTweener(HelpButton, "BackgroundTransparency", SelectedTransparency,
			SelectedTransparency, 0, Utility.EaseInOutQuad, true)
	end)
	HelpButton.SelectionLost:connect(function()
		HelpButton.BackgroundTransparency = DefaultTransparency
	end)


	local switchProfileDebounce = false
	SwitchProfileButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		if switchProfileDebounce then return end
		switchProfileDebounce = true

		controller:OpenSwitchProfileScreen()

		switchProfileDebounce = false
	end)

	local overscanDebounce = false
	OverscanButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		if overscanDebounce then return end
		overscanDebounce = true

		controller:OpenOverscanScreen()

		overscanDebounce = false
	end)

	local helpDebounce = false
	HelpButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		if helpDebounce then return end
		helpDebounce = true

		controller:OpenHelpScreen()

		helpDebounce = false
	end)

	return this
end

return createSettingsScreenConsole
