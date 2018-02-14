local CoreGui = Game:GetService("CoreGui")
local GuiService = game:GetService('GuiService')
local PlayersService = game:GetService("Players")
local ContextActionService = game:GetService("ContextActionService")
local UserInputService = game:GetService("UserInputService")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService("ThirdPartyUserService") end)
local AnalyticsService = game:GetService("AnalyticsService")

local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local XboxNewEngagementFlow = settings():GetFFlag("XboxNewEngagementFlow")
if not XboxNewEngagementFlow then
	return require(ShellModules:FindFirstChild('LegacyEngagementScreen'))
end

local AccountManager = require(ShellModules:FindFirstChild('AccountManager'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SetAccountCredentialsScreen = require(ShellModules:FindFirstChild('SetAccountCredentialsScreen'))
local SignInScreen = require(ShellModules:FindFirstChild('SignInScreen'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local ACCEPTED_KEY_CODES =
{
	[Enum.KeyCode.ButtonA] = true;
	[Enum.KeyCode.ButtonX] = true;
}

local GAMEPAD_INPUT_TYPES =
{
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
}

local RegisterActiveUserResult =
{
	Unknown = -1;
	Success = 0;
	NoUser = 1;
}

local AccountPickResult =
{
	Unknown = -1;
	Success = 0;
	NoUser = 1;
}

local function CreateHomePane(parent)
	local this = {}

	local ButtonBeganConnection, ButtonEndedConnection = nil
	local EngagementHintText = Strings:LocalizedString('EngagementHint')

	local EngagementScreenContainer = Utility.Create'Frame'
	{
		Name = 'EngagementScreen';
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Parent = parent;
	}

		local RobloxLogo = Utility.Create'ImageLabel'
		{
			Name = 'RobloxLogo';
			BackgroundTransparency = 1;
			Size = UDim2.new(0, 594, 0, 209);
			Image = 'rbxasset://textures/ui/Shell/Icons/SplashLogo.png';
			Parent = EngagementScreenContainer;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
		}

		local EngagementHint = Utility.Create'TextLabel'
		{
			Name = 'EngagementHint';
			AnchorPoint = Vector2.new(0.5, 0);
			Position = UDim2.new(0.5, 0, 0, 331);
			Size = UDim2.new(0, 0, 0, 0);
			BackgroundTransparency = 1;
			Text = EngagementHintText;
			TextColor3 = GlobalSettings.WhiteTextColor;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.ButtonSize;
			Parent = RobloxLogo;
		}

		local EngagementIndicatorImage = Utility.Create'ImageLabel'
		{
			Name = 'EngagementIndicator';
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0, 105, 0.5, 0);
			Size = UDim2.new(0, 58, 0, 58);
			BackgroundTransparency = 1;
			Image = 'rbxasset://textures/ui/Shell/ButtonIcons/AButtonEngagementScreen.png';
			Parent = EngagementHint;
		}

		local SwitchAccountHint = Utility.Create'TextLabel'
		{
			Name = 'SwitchAccountHint';
			AnchorPoint = Vector2.new(1, 1);
			Size = UDim2.new(0, 260, 0, 38);
			Position = UDim2.new(1, 0, 1, -13);
			BackgroundTransparency = 1;
			Text = Strings:LocalizedString('SwitchAccountHint');
			TextColor3 = GlobalSettings.WhiteTextColor;
			TextXAlignment = 'Right';
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.ButtonSize;
			Parent = EngagementScreenContainer;
		}

		local SwitchAccountIndicatorImage = Utility.Create'ImageLabel'
		{
			Name = 'SwitchAccountIndicator';
			AnchorPoint = Vector2.new(1, 0.5);
			Position = UDim2.new(0, 0, 0.5, 0);
			Size = UDim2.new(0, 58, 0, 58);
			BackgroundTransparency = 1;
			Image = 'rbxasset://textures/ui/Shell/ButtonIcons/XButtonEngagementScreen.png';
			Parent = SwitchAccountHint;
		}

	local function adjustTextsAndImages()
		local startIndex = string.find(EngagementHintText, "             ")
		if startIndex > 1 then
			EngagementHint.Text = string.sub(EngagementHintText, 1, startIndex - 1)
			Utility.ResizeButtonWithText(EngagementHint, EngagementHint, 0, 0)
			local leftSize = EngagementHint.Size.X.Offset

			EngagementHint.Text = "             "
			Utility.ResizeButtonWithText(EngagementHint, EngagementHint, 0, 0)
			local imageXOffset = EngagementHint.Size.X.Offset/2 + leftSize

			EngagementIndicatorImage.Position = UDim2.new(0, imageXOffset, 0.5, 0);

			EngagementHint.Text = EngagementHintText
			Utility.ResizeButtonWithText(EngagementHint, EngagementHint, 0, 0)
		end

		Utility.ResizeButtonWithText(SwitchAccountHint, SwitchAccountHint, 0, 0)
	end
	adjustTextsAndImages()

	local function displayErrorScreen(err)
		if err == nil then
			err = Errors.Default
		end
		ScreenManager:OpenScreen(ErrorOverlay(err), false)
	end

	-- new flow with new service
	-- TODO: Will need to revist this if we move other calls into new services as errors may be handled differently
	local function beginAuthenticationAsync2(gamepad)
		if UserSettings().GameSettings:InStudioMode() then
			EventHub:dispatchEvent(EventHub.Notifications["AuthenticationSuccess"])
			return
		end

		local function loginAsync()
			-- register active user with user paired to gamepad
			local success, result = pcall(function()
				return ThirdPartyUserService:RegisterActiveUser(gamepad)
			end)
			-- catch pcall API error
			if not success then
				displayErrorScreen(Errors.RegisterActiveUser[RegisterActiveUserResult.Unknown])
				return
			end
			if result ~= RegisterActiveUserResult.Success then
				displayErrorScreen(Errors.RegisterActiveUser[result])
				return
			end

			-- check for linked account
			local hasLinkedAccountResult = AccountManager:HasLinkedAccountAsync()
			if hasLinkedAccountResult == AccountManager.AuthResults.AccountUnlinked then
				AnalyticsService:ReportCounter("Xbox_SignUp_Start")

				local signInScreen = SignInScreen()
				signInScreen:SetParent(EngagementScreenContainer.Parent)
				ScreenManager:OpenScreen(signInScreen, true)
				return
			elseif hasLinkedAccountResult ~= AccountManager.AuthResults.Success then
				displayErrorScreen(Errors.Authentication[hasLinkedAccountResult])
				return
			end

			-- login user
			local loginResult = AccountManager:LoginAsync()
			if loginResult == AccountManager.AuthResults.Success then
				EventHub:dispatchEvent(EventHub.Notifications["AuthenticationSuccess"])
				return
			elseif result == AccountManager.AuthResults.UsernamePasswordNotSet then
				local setAccountCredentialsScreen = SetAccountCredentialsScreen(Strings:LocalizedString("SetCredentialsTitle"),
				Strings:LocalizedString("SetCredentialsPhrase"), Strings:LocalizedString("SetCredentialsWord"))
				setAccountCredentialsScreen:SetParent(EngagementScreenContainer.Parent)
				ScreenManager:OpenScreen(setAccountCredentialsScreen, true)
				return
			else
				displayErrorScreen(Errors.Authentication[loginResult])
				return
			end
		end

		local loader = LoadingWidget(
			{ Parent = RobloxLogo, Position = UDim2.new(0.5, 0, 0, 415) }, { loginAsync })
		loader:AwaitFinished()
		loader:Cleanup()
		loader = nil
	end

	local function onButtonAPressed(gamePad)
		ButtonBeganConnection = Utility.DisconnectEvent(ButtonBeganConnection)
		ButtonEndedConnection = Utility.DisconnectEvent(ButtonEndedConnection)
		EngagementHint.TextColor3 = GlobalSettings.WhiteTextColor
		Utility.PropertyTweener(EngagementHint, 'TextTransparency', 0, 1, 0.25, Utility.EaseOutQuad, true,
			function()
				beginAuthenticationAsync2(gamePad)
			end)
		Utility.PropertyTweener(EngagementIndicatorImage, 'ImageTransparency', 0, 1, 0.25, Utility.EaseOutQuad, true)
		Utility.PropertyTweener(SwitchAccountHint, 'TextTransparency', 0, 1, 0.25, Utility.EaseOutQuad, true)
		Utility.PropertyTweener(SwitchAccountIndicatorImage, 'ImageTransparency', 0, 1, 0.25, Utility.EaseOutQuad, true)
	end

	local function showAccountPicker(gamePad)
		local success, result = pcall(function()
			return PlatformService:ShowAccountPicker(gamePad)
		end)
		-- catch pcall API error
		if not success or result == AccountPickResult.Unknown then
			displayErrorScreen(Errors.RegisterActiveUser[AccountPickResult.Unknown])
			return AccountPickResult.Unknown
		end
		return result
	end

	function this:Show()
		EngagementScreenContainer.Visible = true
	end

	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('EngagementScreenId')}
	end

	function this:Hide()
		EngagementScreenContainer.Visible = false
	end

	function this:Focus()
		EngagementHint.TextColor3 = GlobalSettings.WhiteTextColor
		EngagementHint.TextTransparency = 0
		SwitchAccountHint.TextTransparency = 0
		EngagementIndicatorImage.ImageTransparency = 0
		SwitchAccountIndicatorImage.ImageTransparency = 0

		Utility.DisconnectEvent(ButtonBeganConnection)
		local buttonDown = {}
		ButtonBeganConnection = UserInputService.InputBegan:connect(function(inputObject)
			if GAMEPAD_INPUT_TYPES[inputObject.UserInputType] then
				if inputObject.KeyCode == Enum.KeyCode.ButtonA then
					EngagementHint.TextColor3 = GlobalSettings.GreyTextColor
					buttonDown[inputObject.KeyCode] = true
				elseif inputObject.KeyCode == Enum.KeyCode.ButtonX then
					buttonDown[inputObject.KeyCode] = true
				end
			end
		end)
		Utility.DisconnectEvent(ButtonEndedConnection)
		local isAuthenticating = false
		ButtonEndedConnection = UserInputService.InputEnded:connect(function(inputObject)
			if isAuthenticating then return end
			isAuthenticating = true
			if GAMEPAD_INPUT_TYPES[inputObject.UserInputType] then
				if ACCEPTED_KEY_CODES[inputObject.KeyCode] and buttonDown[inputObject.KeyCode] == true then
					SoundManager:Play('ButtonPress')
					if inputObject.KeyCode == Enum.KeyCode.ButtonA then
						EngagementHint.TextColor3 = GlobalSettings.GreyTextColor
						buttonDown[inputObject.KeyCode] = true
						onButtonAPressed(inputObject.UserInputType)
					elseif inputObject.KeyCode == Enum.KeyCode.ButtonX then
						if PlatformService then
							local showAccountPickerResult = showAccountPicker(inputObject.UserInputType)
							if showAccountPickerResult == AccountPickResult.Success then
								EngagementHint.TextColor3 = GlobalSettings.GreyTextColor
								buttonDown[inputObject.KeyCode] = true
								onButtonAPressed(inputObject.UserInputType)
							end
						end
					end
				end
			end
			isAuthenticating = false
			buttonDown[inputObject.KeyCode] = false
		end)
	end

	function this:RemoveFocus()
		ButtonBeganConnection = Utility.DisconnectEvent(ButtonBeganConnection)
		ButtonEndedConnection = Utility.DisconnectEvent(ButtonEndedConnection)
	end

	function this:SetParent(newParent)
		EngagementScreenContainer.Parent = newParent
	end

	return this
end

return CreateHomePane
