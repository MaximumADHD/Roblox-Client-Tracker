-- Written by Kip Turner, Copyright Roblox 2015

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

local ANY_KEY_CODES =
{
	[Enum.KeyCode.ButtonA] = true;
	-- [Enum.KeyCode.ButtonB] = true;
	[Enum.KeyCode.ButtonX] = true;
	[Enum.KeyCode.ButtonY] = true;
	[Enum.KeyCode.ButtonStart] = true;
	[Enum.KeyCode.ButtonSelect] = true;
	[Enum.KeyCode.ButtonL1] = true;
	[Enum.KeyCode.ButtonR1] = true;
}

local GAMEPAD_INPUT_TYPES =
{
	[Enum.UserInputType.Gamepad1] = true;
	[Enum.UserInputType.Gamepad2] = true;
	[Enum.UserInputType.Gamepad3] = true;
	[Enum.UserInputType.Gamepad4] = true;
}

local RegisterActiveUserError =
{
	Unknown = -1;
	Success = 0;
	NoUser = 1;
}

local function CreateHomePane(parent)
	local this = {}

	local AnyButtonBeganConnection, AnyButtonEndedConnection = nil

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
			Size = UDim2.new(0, 594, 0, 199);
			Image = 'rbxasset://textures/ui/Shell/Icons/ROBLOXSplashLogo.png';
			Parent = EngagementScreenContainer;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0.5, 0);
		}

		local AnyButtonHint = Utility.Create'TextLabel'
		{
			Name = 'AnyButtonHint';
			Text = Strings:LocalizedString('EngagementScreenHint');
			TextColor3 = GlobalSettings.WhiteTextColor;
			Font = GlobalSettings.RegularFont;
			FontSize = GlobalSettings.ButtonSize;
			Size = UDim2.new(0,0,0,0);
			BackgroundTransparency = 1;
			Parent = RobloxLogo;
			AnchorPoint = Vector2.new(0.5, 0.5);
			Position = UDim2.new(0.5, 0, 0, 415);
		};

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
				displayErrorScreen(Errors.RegisterActiveUser[RegisterActiveUserError.Unknown])
				return
			end
			if result ~= RegisterActiveUserError.Success then
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

	local function onAnyButtonPressed(gamePad)
		AnyButtonBeganConnection = Utility.DisconnectEvent(AnyButtonBeganConnection)
		AnyButtonEndedConnection = Utility.DisconnectEvent(AnyButtonEndedConnection)
		AnyButtonHint.TextColor3 = GlobalSettings.WhiteTextColor
		Utility.PropertyTweener(AnyButtonHint, 'TextTransparency', 0, 1, 0.25, Utility.EaseOutQuad, true,
			function()
				beginAuthenticationAsync2(gamePad)
			end)
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
		AnyButtonHint.TextColor3 = GlobalSettings.WhiteTextColor
		AnyButtonHint.TextTransparency = 0

		Utility.DisconnectEvent(AnyButtonBeganConnection)
		local anyButtonDown = {}
		AnyButtonBeganConnection = UserInputService.InputBegan:connect(function(inputObject)
			if GAMEPAD_INPUT_TYPES[inputObject.UserInputType] then
				if ANY_KEY_CODES[inputObject.KeyCode] then
					AnyButtonHint.TextColor3 = GlobalSettings.GreyTextColor
					anyButtonDown[inputObject.KeyCode] = true
				end
			end
		end)
		Utility.DisconnectEvent(AnyButtonEndedConnection)
		local isAuthenticating = false
		AnyButtonEndedConnection = UserInputService.InputEnded:connect(function(inputObject)
			if isAuthenticating then return end
			isAuthenticating = true
			if GAMEPAD_INPUT_TYPES[inputObject.UserInputType] then
				if ANY_KEY_CODES[inputObject.KeyCode] and anyButtonDown[inputObject.KeyCode] == true then
					SoundManager:Play('ButtonPress')
					onAnyButtonPressed(inputObject.UserInputType)
				end
			end
			isAuthenticating = false
			anyButtonDown[inputObject.KeyCode] = false
		end)
	end

	function this:RemoveFocus()
		AnyButtonBeganConnection = Utility.DisconnectEvent(AnyButtonBeganConnection)
		AnyButtonEndedConnection = Utility.DisconnectEvent(AnyButtonEndedConnection)
	end

	function this:SetParent(newParent)
		EngagementScreenContainer.Parent = newParent
	end

	return this
end

return CreateHomePane
