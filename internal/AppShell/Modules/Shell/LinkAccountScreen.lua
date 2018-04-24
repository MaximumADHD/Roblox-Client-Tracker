--[[
				// LinkAccountScreen.lua
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

local function createLinkAccountScreen()
	local this = BaseSignInScreen()

	this:SetTitle(Strings:LocalizedString("LinkAccountTitle"))
	this:SetDescriptionText(Strings:LocalizedString("LinkAccountPhrase"))

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

	this.UsernameObject:SetDefaultText(Strings:LocalizedString("UsernameWord"))
	this.UsernameObject:SetKeyboardTitle(Strings:LocalizedString("UsernameWord"))
	local usernameChangedCn = nil

	this.PasswordObject:SetDefaultText(Strings:LocalizedString("PasswordWord"))
	this.PasswordObject:SetKeyboardTitle(Strings:LocalizedString("PasswordWord"))
	if not UserSettings().GameSettings:InStudioMode() then
		this.PasswordObject:SetKeyboardType(Enum.XboxKeyBoardType.Password)
	end
	local passwordChangedCn = nil

	local function linkAccountAsync()
		local linkResult = nil
		local signInResult = nil

		local function doLinkAccountAsync()
			linkResult = AccountManager:LinkAccountAsync(myUsername, myPassword)

			if linkResult == AccountManager.AuthResults.Success then
				signInResult = AccountManager:LoginAsync()
			end
		end

		local loader = LoadingWidget(
			{ Parent = this.Container }, { doLinkAccountAsync })

		-- set up full screen loader
		ModalOverlay.Parent = GuiRoot
		ContextActionService:BindCoreAction("BlockB", function() end, false, Enum.KeyCode.ButtonB)
		local selectedObject = GuiService.SelectedCoreObject
		Utility.SetSelectedCoreObject(nil)

		-- call loader
		loader:AwaitFinished()

		-- clean up
		loader:Cleanup()
		loader = nil
		Utility.SetSelectedCoreObject(selectedObject)
		ContextActionService:UnbindCoreAction("BlockB")
		ModalOverlay.Parent = nil

		if linkResult ~= AccountManager.AuthResults.Success then
			local err = linkResult and Errors.Authentication[linkResult] or Errors.Default
			ScreenManager:OpenScreen(ErrorOverlay(err), false)
		else
			if signInResult == AccountManager.AuthResults.Success then
				ScreenManager:CloseCurrent()
				EventHub:dispatchEvent(EventHub.Notifications["AuthenticationSuccess"])
			else
				local err = signInResult and Errors.Authentication[signInResult] or Errors.Default
				ScreenManager:OpenScreen(ErrorOverlay(err), false)
			end
		end
	end

	local isSigningIn = false
	this.SignInButton.MouseButton1Click:connect(function()
		if isSigningIn then return end
		isSigningIn = true
		SoundManager:Play('ButtonPress')
		if (myUsername and #myUsername > 0) and (myPassword and #myPassword > 0) then
			linkAccountAsync()
		else
			local err = Errors.SignIn.NoUsernameOrPasswordEntered
			ScreenManager:OpenScreen(ErrorOverlay(err), false)
		end
		isSigningIn = false
	end)

	--[[ Public API ]]--
	--override
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('LinkAccountScreenId')}
	end

	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		usernameChangedCn = this.UsernameObject.OnTextChanged:connect(function(text)
			myUsername = text
			if #myUsername > 0 then
				Utility.SetSelectedCoreObject(this.PasswordSelection)
			else
				Utility.SetSelectedCoreObject(this.UsernameSelection)
			end
		end)
		passwordChangedCn = this.PasswordObject.OnTextChanged:connect(function(text)
			myPassword = text
			if #myPassword > 0 then
				Utility.SetSelectedCoreObject(this.SignInButton)
			else
				Utility.SetSelectedCoreObject(this.PasswordSelection)
			end
		end)
	end

	--override
	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		Utility.DisconnectEvent(usernameChangedCn)
		Utility.DisconnectEvent(passwordChangedCn)
	end

	return this
end

return createLinkAccountScreen
