local CoreGui = game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local AccountLinkingView = require(ShellModules:FindFirstChild('AccountLinkingView'))
local GameplaySettingsView = require(ShellModules:FindFirstChild('GameplaySettingsView'))

local function createAccountScreen(errorCode)
	local this = BaseScreen()

	this:SetTitle(Strings:LocalizedString("AccountSettingsTitle"))

	local AccountLinkingViewContainer = Utility.Create'Frame'
	{
		Name = "AccountLinkingViewContainer";
		Position = UDim2.new(0, 75, 0, 275);
		Size = UDim2.new(0, 765, 0, 630);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Parent = this.Container
	}

	local accountLinkingView = AccountLinkingView()
	accountLinkingView:SetParent(AccountLinkingViewContainer)

	local ScreenDivide = Utility.Create'Frame'
	{
		Name = "ScreenDivide";
		Size = UDim2.new(0, 2, 0, 615);
		Position = UDim2.new(0, 840, 0, 275);
		BorderSizePixel = 0;
		BackgroundColor3 = GlobalSettings.PageDivideColor;
		Parent = this.Container;
	}

	local gameplaySettingsViewContainer = Utility.Create'Frame'
	{
		Name = "GameplaySettingsViewContainer";
		Position = UDim2.new(0, 840, 0, 275);
		Size = UDim2.new(0, 765, 0, 630);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Parent = this.Container;
	}

	local gameplaySettingsView = GameplaySettingsView(errorCode)
	gameplaySettingsView:SetParent(gameplaySettingsViewContainer)

	--[[ Public API ]]--
	function this:GetAnalyticsInfo()
		return {[Analytics.WidgetNames('WidgetId')] = Analytics.WidgetNames('UnlinkAccountScreenId')}
	end

	-- Override
	function this:GetDefaultSelectionObject()
		return accountLinkingView:GetUnlinkButton()
	end

	-- Override
	local baseFocus = this.Focus
	function this:Focus()
		baseFocus(self)
		accountLinkingView:Focus()
		gameplaySettingsView:Focus()
	end

	-- Override
	local baseRemoveFocus = this.RemoveFocus
	function this:RemoveFocus()
		baseRemoveFocus(self)
		accountLinkingView:RemoveFocus()
	end

	return this
end

return createAccountScreen
