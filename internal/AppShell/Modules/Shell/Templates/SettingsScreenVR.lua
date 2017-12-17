
local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local VRModules = Modules:FindFirstChild("VR")
local Templates = ShellModules:FindFirstChild("Templates")

local SettingsScreenBase = require(Templates:FindFirstChild('SettingsScreenBase'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local RecenterModule = require(VRModules:FindFirstChild("Recenter"))

local function createSettingsScreenVR(controller)
	local this = SettingsScreenBase(controller)

	local DefaultTransparency = GlobalSettings.TextBoxDefaultTransparency
	local SelectedTransparency = GlobalSettings.TextBoxSelectedTransparency

	local spacing = this.Spacing

	local RecenterButton = Utility.Create'TextButton'
	{
		Name = "RecenterButton";
		Size = UDim2.new(0, 394, 0, 612);
		Position = UDim2.new(0, this.AccountButton.Size.X.Offset + spacing, 0, 238);
		BackgroundTransparency = DefaultTransparency;
		BackgroundColor3 = GlobalSettings.TextBoxColor;
		BorderSizePixel = 0;
		Text = "";
		Parent = this.Container;
		SoundManager:CreateSound('MoveSelection');
	}

	local RecenterButtonIcon = Utility.Create'ImageLabel'
	{
		Name = "RecenterButtonIcon";
		Size = UDim2.new(0, 224, 0, 255);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/VR/recenter.png';
		Parent = RecenterButton;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
	}

	local RecenterButtonText = Utility.Create'TextLabel'
	{
		Name = "RecenterButtonText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 1, -96);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("RecenterButtonWord");
		Parent = RecenterButton;
	}

	local recenterDebounce = false
	RecenterButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		if recenterDebounce then return end
		recenterDebounce = true

		local result = RecenterModule:RequestRecenter()

		recenterDebounce = false
	end)

	RecenterButton.SelectionGained:connect(function()
		Utility.PropertyTweener(RecenterButton, "BackgroundTransparency", SelectedTransparency,
			SelectedTransparency, 0, Utility.EaseInOutQuad, true)
	end)
	RecenterButton.SelectionLost:connect(function()
		RecenterButton.BackgroundTransparency = DefaultTransparency
	end)

	return this
end

return createSettingsScreenVR
