--[[
			// SetAccountCredentialsScreen.lua
]]
local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local ContextActionService = game:GetService('ContextActionService')
local GuiService = game:GetService('GuiService')

local AccountManager = require(ShellModules:FindFirstChild('AccountManager'))
local BaseSignInScreen = require(ShellModules:FindFirstChild('BaseSignInScreen'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local LoadingWidget = require(ShellModules:FindFirstChild('LoadingWidget'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SoundManager = require(ShellModules:FindFirstChild('SoundManager'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local function createSetAccountCredentialsScreen(title, description, buttonText)
	local this = BaseSignInScreen()

	this:SetTitle(title or "")
	this:SetDescriptionText(description or "")
	this:SetButtonText(buttonText or "")

	local ModalOverlay = Utility.Create'Frame'
	{
		Name = "ModalOverlay";
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = GlobalSettings.ModalBackgroundTransparency;
		BackgroundColor3 = GlobalSettings.ModalBackgroundColor;
		BorderSizePixel = 0;
		ZIndex = 4;
	}

	local myUsername = nil
	local myPassword = nil

	local isUsernameValid = false
	local isPasswordValid = false

	local UserNameProcessingCount = 0
	local PasswordProcessingCount = 0

	this.UsernameObject:SetDefaultText(Strings:LocalizedString("UsernameWord").." ("..
		Strings:LocalizedString("UsernameRulePhrase")..")")
	this.UsernameObject:SetKeyboardTitle(Strings:LocalizedString("UsernameWord"))
	this.UsernameObject:SetKeyboardDescription(Strings:LocalizedString("UsernameRulePhrase"))
	local usernameChangedCn = nil

	this.PasswordObject:SetDefaultText(Strings:LocalizedString("PasswordWord").." ("..
		Strings:LocalizedString("PasswordRulePhrase")..")")
	this.PasswordObject:SetKeyboardTitle(Strings:LocalizedString("PasswordWord"))
	this.PasswordObject:SetKeyboardDescription(Strings:LocalizedString("PasswordRulePhrase"))
	if not UserSettings().GameSettings:InStudioMode() then
		this.PasswordObject:SetKeyboardType(Enum.XboxKeyBoardType.Password)
	end
	local passwordChangedCn = nil

	local function createAndSetCredentialsAsync()
		local result = nil

		local function signupAsync()
			-- legacy check
			-- Users may be in state where they are linked, but have not set credentials from previous
			-- versions of log in logic. If they are in this state, we correct it by having them set their
			-- credentials. Keep this until we can unlink all accounts in this state.
			result = AccountManager:HasLinkedAccountAsync()

			if result == AccountManager.AuthResults.Success then
				result = AccountManager:SetRobloxCredentialsAsync(myUsername, myPassword)
			elseif result == AccountManager.AuthResults.AccountUnlinked then
				result = AccountManager:SignupAsync(myUsername, myPassword)
			end

			if result == AccountManager.AuthResults.Success then
				result = AccountManager:LoginAsync()
			end
		end

		local loader = LoadingWidget(
			{ Parent = ModalOverlay }, { signupAsync } )

		-- set up full screen loader
		ModalOverlay.Parent = GuiRoot
		ContextActionService:BindCoreAction("BlockB", function() end, false, Enum.KeyCode.ButtonB)
		local selectedObject = GuiService.SelectedCoreObject
		GuiService.SelectedCoreObject = nil

		-- call loader
		loader:AwaitFinished()

		-- clean up
		loader:Cleanup()
		loader = nil
		GuiService.SelectedCoreObject = selectedObject
		ContextActionService:UnbindCoreAction("BlockB")
		ModalOverlay.Parent = nil

		if result == AccountManager.AuthResults.Success then
			EventHub:dispatchEvent(EventHub.Notifications["AuthenticationSuccess"])
		else
			local err = result and Errors.Authentication[result] or Errors.Default
			ScreenManager:OpenScreen(ErrorOverlay(err), false)
		end
	end

	local function validatePassword(silent)
		PasswordProcessingCount = PasswordProcessingCount + 1

		local reason = nil
		isPasswordValid, reason = AccountManager:IsValidPasswordAsync(myUsername or "", myPassword)
		if isPasswordValid then
			if myUsername and #myUsername > 0 then
				GuiService.SelectedCoreObject = this.SignInButton
			else
				GuiService.SelectedCoreObject = this.UsernameSelection
			end
		elseif isPasswordValid == false then
			if not silent then
				-- web returns long strings on password error. Lets create our own error type
				GuiService.SelectedCoreObject = this.PasswordSelection
				local err = Errors.Default;
				if reason then
					err = Errors.SignIn.InvalidPassword
					err.Msg = reason
				end
				ScreenManager:OpenScreen(ErrorOverlay(err), false)
			end
		else -- Http failure
			ScreenManager:OpenScreen(ErrorOverlay(Errors.Default), false)
		end

		PasswordProcessingCount = PasswordProcessingCount - 1
	end

	local function validateUsername(silent)
		UserNameProcessingCount = UserNameProcessingCount + 1

		-- 1. Check if valid user name
		local reason = nil
		isUsernameValid, reason = AccountManager:IsValidUsernameAsync(myUsername)
		if isUsernameValid then
			-- 2. if password set, need to recheck password rules
			if myPassword and #myPassword > 0 then
				validatePassword()
			else
				GuiService.SelectedCoreObject = this.PasswordSelection
			end
		elseif isUsernameValid == false then
			if not silent then
				GuiService.SelectedCoreObject = this.UsernameSelection
				-- Use the same errorcode to collect all InvalidUsername errors, diffrentiate by the latest reasons return by Web
				local err = Errors.Default
				if reason then
					err = Errors.SignIn.InvalidUsername
					err.Msg = reason
				end
				ScreenManager:OpenScreen(ErrorOverlay(err), false)
			end
		else -- Http Request failed
			ScreenManager:OpenScreen(ErrorOverlay(Errors.Default), false)
		end

		UserNameProcessingCount = UserNameProcessingCount - 1
	end

	local function onUsernameChanged(text)
		myUsername = text
		if #myUsername > 0 then
			validateUsername()
		else
			GuiService.SelectedCoreObject = this.UsernameSelection
			isUsernameValid = false
		end
	end

	local function onPasswordChanged(text)
		myPassword = text
		if #myPassword > 0 then
			validatePassword()
		else
			GuiService.SelectedCoreObject = this.PasswordSelection
			isPasswordValid = false
		end
	end


	local isSettingCredentials = false
	this.SignInButton.MouseButton1Click:connect(function()
		if isSettingCredentials then return end
		isSettingCredentials = true

		local function stillValidatingUserInfo()
			return UserNameProcessingCount > 0 or PasswordProcessingCount > 0
		end
		local function awaitValidatingUserInfo()
			while stillValidatingUserInfo() do wait() end
		end

		SoundManager:Play('ButtonPress')


		local processingFunctions = nil
		-- Wait for current validation to finish
		if stillValidatingUserInfo() then

			processingFunctions = { awaitValidatingUserInfo }

		-- Retry our username and password validation
		elseif isUsernameValid == nil or isPasswordValid == nil then

			processingFunctions = {}
			if isUsernameValid == nil then
				table.insert(processingFunctions, function() validateUsername(true) awaitValidatingUserInfo() end)
			end
			if isPasswordValid == nil then
				table.insert(processingFunctions, function() validatePassword(true) awaitValidatingUserInfo() end)
			end

		end

		if processingFunctions then
			local processingLoader = LoadingWidget(
				{ Parent = ModalOverlay },
				processingFunctions)

			-- NOTE: may need to get a separate overlay for this spinner
			-- Also should we disable input while overlay is active?
			ModalOverlay.Parent = GuiRoot

			processingLoader:AwaitFinished()
			processingLoader:Cleanup()
			processingLoader = nil

			ModalOverlay.Parent = nil
		end

		if isUsernameValid and isPasswordValid then
			createAndSetCredentialsAsync()
		elseif isUsernameValid == false or isPasswordValid == false then
			local err = Errors.SignIn.NoUsernameOrPasswordEntered
			ScreenManager:OpenScreen(ErrorOverlay(err), false)
		else -- Http failed to validate your password or username
			local err = Errors.SignIn.ConnectionFailed
			ScreenManager:OpenScreen(ErrorOverlay(err), false)
		end
		isSettingCredentials = false
	end)


	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('SetAccountCredentialsScreenId')}
	end

	-- override
	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		usernameChangedCn = this.UsernameObject.OnTextChanged:connect(onUsernameChanged)
		passwordChangedCn = this.PasswordObject.OnTextChanged:connect(onPasswordChanged)
	end

	-- override
	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		Utility.DisconnectEvent(usernameChangedCn)
		Utility.DisconnectEvent(passwordChangedCn)
	end

	return this
end

return createSetAccountCredentialsScreen
