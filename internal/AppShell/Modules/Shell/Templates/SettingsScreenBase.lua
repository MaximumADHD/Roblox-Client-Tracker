
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Templates = ShellModules:FindFirstChild("Templates")


local BaseScreen = require(Templates:FindFirstChild('BaseScreen'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))

local function createSettingsScreenBase(controller)
	local this = BaseScreen(controller)

	local VersionBuildIdText = Utility.Create'TextLabel'
	{
		Name = "VersionBuildIdText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		TextXAlignment = Enum.TextXAlignment.Right;
		TextYAlignment = Enum.TextYAlignment.Bottom;
		Text = '';
		Parent = this.Container;
	}
	do
		local versionInfo = controller:GetVersionInfo()
		local versionStr = string.format(Strings:LocalizedString('VersionIdString'), tostring(versionInfo['Major']) , tostring(versionInfo['Minor']), tostring(versionInfo['Build']), tostring(versionInfo['Revision']))
		VersionBuildIdText.Text = versionStr
	end



	local spacing = 40
	local DefaultTransparency = GlobalSettings.TextBoxDefaultTransparency
	local SelectedTransparency = GlobalSettings.TextBoxSelectedTransparency

	local AccountButton = Utility.Create'TextButton'
	{
		Name = "AccountButton";
		Size = UDim2.new(0, 394, 0, 612);
		Position = UDim2.new(0, 0, 0, 238);
		BackgroundTransparency = DefaultTransparency;
		BackgroundColor3 = GlobalSettings.TextBoxColor;
		BorderSizePixel = 0;
		Text = "";
		Parent = this.Container;
		SoundManager:CreateSound('MoveSelection');
	}
	this.AccountButton = AccountButton
	this.Spacing = spacing


	local AccountIcon = Utility.Create'ImageLabel'
	{
		Name = "AccountIcon";
		Size = UDim2.new(0, 256, 0, 256);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/AccountIcon.png';
		Parent = AccountButton;
		AnchorPoint = Vector2.new(0.5, 0.5);
		Position = UDim2.new(0.5, 0, 0.5, 0);
  }
	local AccountText = Utility.Create'TextLabel'
	{
		Name = "AccountText";
		Size = UDim2.new(0, 0, 0, 0);
		Position = UDim2.new(0.5, 0, 1, -96);
		BackgroundTransparency = 1;
		Font = GlobalSettings.RegularFont;
		FontSize = GlobalSettings.TitleSize;
		TextColor3 = GlobalSettings.WhiteTextColor;
		Text = Strings:LocalizedString("AccountWord");
		Parent = AccountButton;
	}

	AccountButton.SelectionGained:connect(function()
		Utility.PropertyTweener(AccountButton, "BackgroundTransparency", SelectedTransparency,
			SelectedTransparency, 0, Utility.EaseInOutQuad, true)
	end)
	AccountButton.SelectionLost:connect(function()
		AccountButton.BackgroundTransparency = DefaultTransparency
	end)

	--[[ Input ]]--
	AccountButton.MouseButton1Click:connect(function()
		SoundManager:Play('ButtonPress')
		controller:OpenAccountScreen()
	end)



	--[[ Public API ]]--
	--Override
	function this:GetDefaultSelectionObject()
		return AccountButton
	end

	return this
end

return createSettingsScreenBase
