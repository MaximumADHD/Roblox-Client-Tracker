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
local GuiService = game:GetService('GuiService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)

local MULTIPLAYER_SETTING_URI = "ms-settings://CustomizePrivacyMultiplayer"
local GAME_CONTENT_SETTING_URI = "ms-settings://CustomizePrivacyGameContent"
local EnableCPPSettingFailure = Utility.IsFastFlagEnabled("XboxEnableCPPSettingFailure")

local function createGameplaySettingsView(errorCode)
	local this = {}

	local dummySelection = Utility.Create'Frame'
	{
		BackgroundTransparency = 1;
	}

	local Container = Utility.Create'Frame'
	{
		Name = "GameplaySettingsContainer";
		Position = UDim2.new(0, 0, 0, 0);
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		BorderSizePixel = 0;
		Selectable = true;
		SelectionImageObject = dummySelection;
	}

	local function TryLaunchUri(uri)
		if PlatformService then
			PlatformService:LaunchPlatformUri(uri)
		end
	end

	local EnabledStatusButton = nil
	local MultiplayerButton = nil
	local SharedContentButton = nil
	local function createCPPSettingsView()
		local CPPTitleTextLabel = Utility.Create'TextLabel'
		{
			Name = "CPPSettingsTitle";
			TextXAlignment = 'Left';
			TextYAlignment = 'Bottom';
			Size = UDim2.new(0, 0, 0, 0);
			Position = UDim2.new(0, 26, 0, 26);
			BackgroundTransparency = 1;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.SubHeaderSize;
			TextColor3 = GlobalSettings.WhiteTextColor;
			Text = Strings:LocalizedString('CrossPlatformGameplayPhrase');
			Parent = Container;
		}

		EnabledStatusButton = Utility.Create'ImageButton'
		{
			Name = "EnabledStatusButton";
			Position = UDim2.new(0, 26, 0, 46);
			Size = UDim2.new(0, 520, 0, 75);
			BackgroundTransparency = 1;
			ImageTransparency = 0.25;
			ImageColor3 = GlobalSettings.GreyButtonColor;
			Image = GlobalSettings.RoundCornerButtonImage;
			ScaleType = Enum.ScaleType.Slice;
			SliceCenter = Rect.new(16, 16, 16, 16);
			ZIndex = 1;
			Parent = Container;
			SoundManager:CreateSound('MoveSelection');
		}

		local EnabledStatusText = Utility.Create'TextLabel'
		{
			Name = "EnabledStatusText";
			TextXAlignment = 'Left';
			TextYAlignment = 'Center';
			Size = UDim2.new(0, 0, 1, 0);
			Position = UDim2.new(0, 72, 0, 0);
			BackgroundTransparency = 1;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.ButtonSize;
			TextColor3 = GlobalSettings.WhiteTextColor;
			ZIndex = 2;
			Text = Strings:LocalizedString("LoadingWord");
			Parent = EnabledStatusButton;
		}

		local EnabledStatusIcon = Utility.Create'ImageLabel'
		{
			Name = "EnabledStatusIcon";
			Position = UDim2.new(0, 20, 0.5, 0);
			AnchorPoint = Vector2.new(0, 0.5);
			Size = UDim2.new(0, 32, 0, 32);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Shell/Icons/EnabledStatusIcon.png";
			ImageColor3 = Color3.new(1, 1, 1);
			ZIndex = 2;
			Parent = EnabledStatusButton;
		}

		local DescriptionText = Utility.Create'TextLabel'
		{
			Name = "DescriptionText";
			Position = UDim2.new(0,26, 0, 135);
			Size = UDim2.new(0, 520, 0, 110);
			Text = "";
			TextXAlignment = 'Center';
			TextYAlignment = 'Top';
			BackgroundTransparency = 1;
			Font = GlobalSettings.BoldFont;
			TextColor3 = GlobalSettings.GreyTextColor;
			FontSize = GlobalSettings.SmallTitleSize;
			TextWrapped = true;
			Parent = Container;
		}

		--Make the EnabledStatusButton big enough
		Utility.ResizeButtonWithDynamicText(EnabledStatusButton, EnabledStatusText,
			{Strings:LocalizedString("EnabledWord"), Strings:LocalizedString("DisabledWord"), Strings:LocalizedString("LoadingWord")},
			GlobalSettings.TextHorizontalPadding + EnabledStatusText.Position.X.Offset/2)

		local isCPPEnabled = nil
		local cppSettingDebounce = false
		local function onCPPStatusChanged(val)
			isCPPEnabled = val
			if isCPPEnabled then
				EnabledStatusIcon.ImageColor3 = Color3.new(0, 0.9, 0);
				EnabledStatusText.Text = Strings:LocalizedString("EnabledWord");
				DescriptionText.Text = Strings:LocalizedString("CrossplayEnabledDescription");
			else
				EnabledStatusIcon.ImageColor3 = Color3.new(0.9, 0, 0);
				EnabledStatusText.Text = Strings:LocalizedString("DisabledWord");
				DescriptionText.Text = Strings:LocalizedString("CrossplayDisabledDescription");
			end
		end

		local function SetCrossplayEnabledCallback(result)
			if result == nil then
				local Errors = require(ShellModules:FindFirstChild('Errors'))
				local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
				ScreenManager:OpenScreen(ErrorOverlay(Errors.CPPSettingError.SetCPPSettingError), false)
			else
				onCPPStatusChanged(result)
				if result then
					ScreenManager:OpenScreen(EnableCrossplayOverlay(
						{
							Title = Strings:LocalizedString("EnableCrossplayOverlayTitle"),
							Msg = Strings:LocalizedString("EnableCrossplayOverlayMessage"),
							Callback = function() end
						}),
						false
					)
				end
			end
		end

		local function SetCrossplayEnabled(val)
			cppSettingDebounce = true
			GameplaySettingsData.SetCrossplayEnabledStatusAsync(val)
			cppSettingDebounce = false
		end

		EnabledStatusButton.MouseButton1Click:connect(function()
			SoundManager:Play('ButtonPress')
			if isCPPEnabled == nil or cppSettingDebounce then return end
			cppSettingDebounce = true
			if isCPPEnabled then
				ScreenManager:OpenScreen(DisableCrossplayOverlay(
					{
						Title = Strings:LocalizedString("DisableCrossplayOverlayTitle"),
						Msg = Strings:LocalizedString("DisableCrossplayOverlayMessage"),
						Callback = function()
							if not EnableCPPSettingFailure then
								GameplaySettingsData.SetCrossplayEnabledStatusAsync(false)
								onCPPStatusChanged(false)
							else
								SetCrossplayEnabled(false)
							end
						end
					}),
					false
				)
			else
				if not EnableCPPSettingFailure then
					GameplaySettingsData.SetCrossplayEnabledStatusAsync(true)
					onCPPStatusChanged(true)
					ScreenManager:OpenScreen(EnableCrossplayOverlay(
						{
							Title = Strings:LocalizedString("EnableCrossplayOverlayTitle"),
							Msg = Strings:LocalizedString("EnableCrossplayOverlayMessage"),
							Callback = function() end
						}),
						false
					)
				else
					SetCrossplayEnabled(true)
				end
			end
			cppSettingDebounce = false
		end)

		if EnableCPPSettingFailure then
			GameplaySettingsData.UpdateSetCrossplayEnabledStatusAsyncFunc(SetCrossplayEnabledCallback)
		end
		spawn(
			function()
				onCPPStatusChanged(GameplaySettingsData.GetCrossplayEnabledStatusAsync())
			end
		)

		Container.SelectionGained:connect(function()
			Utility.SetSelectedCoreObject(EnabledStatusButton)
		end)
	end

	local function createPrivilegeSettingsView()
		local XASTitleTextLabel = Utility.Create'TextLabel'
		{
			Name = "XboxAccountSettingsTitle";
			TextXAlignment = 'Left';
			TextYAlignment = 'Bottom';
			Size = UDim2.new(0, 0, 0, 0);
			Position = UDim2.new(0, 26, 0, 252 + 26);
			BackgroundTransparency = 1;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.SubHeaderSize;
			TextColor3 = GlobalSettings.WhiteTextColor;
			Text = Strings:LocalizedString('XboxAccountSettingsPhrase');
			Parent = Container;
		}

		MultiplayerButton = Utility.Create'ImageButton'
		{
			Name = "MultiplayerButton";
			Size = UDim2.new(0, 520, 0, 75);
			BackgroundTransparency = 1;
			ImageTransparency = 0.25;
			ImageColor3 = GlobalSettings.GreyButtonColor;
			Image = GlobalSettings.RoundCornerButtonImage;
			ScaleType = Enum.ScaleType.Slice;
			Selectable = true;
			SliceCenter = Rect.new(16, 16, 16, 16);
			ZIndex = 1;
			Parent = Container;
			SoundManager:CreateSound('MoveSelection');
		}
		MultiplayerButton.Position = XASTitleTextLabel.Position + UDim2.new(0, 0, 0, XASTitleTextLabel.Size.Y.Offset + 20)

		SharedContentButton = MultiplayerButton:Clone()
		SharedContentButton.Name = "SharedContentButton"
		SharedContentButton.Parent = Container
		SharedContentButton.Position = SharedContentButton.Position + UDim2.new(0, 0, 0, MultiplayerButton.Size.Y.Offset + 10)

		local MultiplayerButtonLinkable = false
		local MultiplayerButtonSelectable = MultiplayerButton.Selectable
		local SharedContentButtonLinkable = false
		local SharedContentButtonSelectable = SharedContentButton.Selectable

		MultiplayerButton.MouseButton1Click:connect(function()
			if MultiplayerButtonLinkable then
				TryLaunchUri(MULTIPLAYER_SETTING_URI)
			end
		end)
		SharedContentButton.MouseButton1Click:connect(function()
			if SharedContentButtonLinkable then
				TryLaunchUri(GAME_CONTENT_SETTING_URI)
			end
		end)

		local MultiplayerText = Utility.Create'TextLabel'
		{
			Name = "MultiplayerText";
			TextXAlignment = 'Left';
			TextYAlignment = 'Center';
			Size = UDim2.new(0, 0, 1, 0);
			Position = UDim2.new(0, 72, 0, 0);
			BackgroundTransparency = 1;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.ButtonSize;
			TextColor3 = GlobalSettings.WhiteTextColor;
			ZIndex = 2;
			Parent = MultiplayerButton;
			Text = Strings:LocalizedString("MultiplayerWord")..": "..Strings:LocalizedString("LoadingWord");
		}

		local SharedContentText = MultiplayerText:Clone()
		SharedContentText.Name = "SharedContentText"
		SharedContentText.Parent = SharedContentButton
		SharedContentText.Text = Strings:LocalizedString("SharedContentWord")..": "..Strings:LocalizedString("LoadingWord")

		local MultiplayerIcon = Utility.Create'ImageLabel'
		{
			Name = "MultiplayerIcon";
			Position = UDim2.new(0, 20, 0.5, 0);
			AnchorPoint = Vector2.new(0, 0.5);
			Size = UDim2.new(0, 32, 0, 32);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Shell/Icons/EnabledStatusIcon.png";
			ImageColor3 = Color3.new(1, 1, 1);
			ZIndex = 2;
			Parent = MultiplayerButton;
		}

		local SharedContentIcon = MultiplayerIcon:Clone()
		SharedContentIcon.Name = "SharedContentIcon"
		SharedContentIcon.Parent = SharedContentButton

		local MultiplayerLinkIcon = Utility.Create'ImageLabel'
		{
			Name = "MultiplayerLinkIcon";
			Position = UDim2.new(1, -20, 0.5, 0);
			AnchorPoint = Vector2.new(1, 0.5);
			Size = UDim2.new(0, 32, 0, 32);
			BackgroundTransparency = 1;
			Image = "rbxasset://textures/ui/Shell/Icons/ExternalLink.png";
			ImageColor3 = Color3.new(1, 1, 1);
			ZIndex = 2;
			Parent = MultiplayerButton;
		}

		local SharedContentLinkIcon = MultiplayerLinkIcon:Clone()
		SharedContentLinkIcon.Name = "SharedContentLinkIcon"
		SharedContentLinkIcon.Parent = SharedContentButton

		local DescriptionText = Utility.Create'TextLabel'
		{
			Name = "DescriptionText";
			Size = UDim2.new(0, 520, 0, 200);
			Text = "";
			TextXAlignment = 'Center';
			TextYAlignment = 'Top';
			BackgroundTransparency = 1;
			Font = GlobalSettings.BoldFont;
			TextColor3 = GlobalSettings.GreyTextColor;
			FontSize = GlobalSettings.SmallTitleSize;
			TextWrapped = true;
			Parent = Container;
			Text = "";
		}
		DescriptionText.Position = UDim2.new(0, 26, 0, SharedContentButton.Position.Y.Offset + SharedContentButton.Size.Y.Offset + 24)

		local function SetPrivilegeInView(privilegeSettings)
			if privilegeSettings then
				local MultiplayerSetting = privilegeSettings.Multiplayer
				local SharedContentSetting = privilegeSettings.SharedContent

				if MultiplayerSetting.Success and SharedContentSetting.Success then
					if MultiplayerSetting.PrivilegeCheckResult == "NoIssue" and SharedContentSetting.PrivilegeCheckResult == "NoIssue" then
						DescriptionText.Text = Strings:LocalizedString("PrivilegeAllowedPhrase")
					elseif MultiplayerSetting.PrivilegeCheckResult == "Banned" or SharedContentSetting.PrivilegeCheckResult == "Banned" then
						DescriptionText.Text = Strings:LocalizedString("PrivilegeBannedPhrase")
					elseif MultiplayerSetting.PrivilegeCheckResult == "PurchaseRequired" or SharedContentSetting.PrivilegeCheckResult == "PurchaseRequired" then
						DescriptionText.Text = Strings:LocalizedString("PrivilegePurchaseRequiredPhrase")
					else
						DescriptionText.Text = Strings:LocalizedString("PrivilegeDeniedPhrase")
					end
				else
					DescriptionText.Text = Strings:LocalizedString("PrivilegeErrorPhrase")
				end

				MultiplayerIcon.ImageColor3 = MultiplayerSetting.CanJoinGame and Color3.new(0, 0.9, 0) or Color3.new(0.9, 0, 0)
				SharedContentIcon.ImageColor3 = SharedContentSetting.CanJoinGame and Color3.new(0, 0.9, 0) or Color3.new(0.9, 0, 0)
				MultiplayerText.Text = Strings:LocalizedString("MultiplayerWord")..": "..Strings:LocalizedString(MultiplayerSetting.LocalizedStringKey)
				SharedContentText.Text = Strings:LocalizedString("SharedContentWord")..": "..Strings:LocalizedString(SharedContentSetting.LocalizedStringKey)

				SharedContentButtonLinkable = not(SharedContentSetting.PrivilegeCheckResult == "NoIssue" or SharedContentSetting.PrivilegeCheckResult == "Banned" or SharedContentSetting.PrivilegeCheckResult == "PurchaseRequired")
				MultiplayerButtonLinkable = not(MultiplayerSetting.PrivilegeCheckResult == "NoIssue" or MultiplayerSetting.PrivilegeCheckResult == "Banned" or MultiplayerSetting.PrivilegeCheckResult == "PurchaseRequired")
				SharedContentButtonSelectable = SharedContentButtonLinkable
				MultiplayerButtonSelectable = MultiplayerButtonLinkable
			else
				SharedContentIcon.ImageColor3 = Color3.new(1, 1, 1)
				MultiplayerIcon.ImageColor3 = Color3.new(1, 1, 1)
				SharedContentText.Text = Strings:LocalizedString("SharedContentWord")..": "..Strings:LocalizedString("LoadingWord")
				MultiplayerText.Text = Strings:LocalizedString("MultiplayerWord")..": "..Strings:LocalizedString("LoadingWord")
				DescriptionText.Text = ""
				SharedContentButtonLinkable = false
				MultiplayerButtonLinkable = false
				--Buttons are still selectable while loading, just don't launch deep link by click
				SharedContentButtonSelectable = true
				MultiplayerButtonSelectable = true
			end

			SharedContentLinkIcon.Visible = SharedContentButtonLinkable
			MultiplayerLinkIcon.Visible = MultiplayerButtonLinkable
			SharedContentButton.Selectable = SharedContentButtonSelectable
			MultiplayerButton.Selectable = MultiplayerButtonSelectable
			SharedContentButton.ImageTransparency = SharedContentButtonSelectable and 0.25 or 1
			MultiplayerButton.ImageTransparency = MultiplayerButtonSelectable and 0.25 or 1
			if GuiService.SelectedCoreObject == SharedContentButton or GuiService.SelectedCoreObject == MultiplayerButton then
				if not GuiService.SelectedCoreObject.Selectable then
					Utility.SetSelectedCoreObject(Container.EnabledStatusButton)
				end
			end
		end

		SetPrivilegeInView(GameplaySettingsData.GetPrivilegeSettings())
		GameplaySettingsData.OnGetPrivilegeSettingsBegin:connect(SetPrivilegeInView)
		GameplaySettingsData.OnGetPrivilegeSettingsEnd:connect(SetPrivilegeInView)
	end

	createCPPSettingsView()
	local EnableXboxAccountSettings = Utility.IsFastFlagEnabled("XboxAccountSettings") or tostring(UserData.GetRbxUserId()) == Utility.GetFastVariable("XboxAccountSettingsUserId")
	if EnableXboxAccountSettings then
		createPrivilegeSettingsView()
	end

	--[[ Public API ]]--
	function this:SetParent(newParent)
		Container.Parent = newParent
	end

	function this:Focus()
		if EnableXboxAccountSettings then
			if errorCode then
				if errorCode == 113 then
					if MultiplayerButton and MultiplayerButton.Selectable then
						Utility.SetSelectedCoreObject(MultiplayerButton)
					else
						Utility.SetSelectedCoreObject(EnabledStatusButton)
					end
				elseif errorCode == 116 then
					if SharedContentButton and SharedContentButton.Selectable then
						Utility.SetSelectedCoreObject(SharedContentButton)
					else
						Utility.SetSelectedCoreObject(EnabledStatusButton)
					end
				end
			end
		end
	end

	function this:GetContainer()
		return Container
	end

	return this
end

return createGameplaySettingsView
