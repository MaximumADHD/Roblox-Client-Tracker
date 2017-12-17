local CoreGui = Game:GetService("CoreGui")
local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")
local Utility = require(ShellModules:FindFirstChild('Utility'))

local ContextActionService = game:GetService('ContextActionService')
local GuiService = game:GetService('GuiService')

local BaseScreen = require(ShellModules:FindFirstChild('BaseScreen'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local Analytics = require(ShellModules:FindFirstChild('Analytics'))

local AccountLinkingView = require(ShellModules:FindFirstChild('AccountLinkingView'))
local GameplaySettingsView = require(ShellModules:FindFirstChild('GameplaySettingsView'))

local function createAccountScreen()
	local this = BaseScreen()

	this:SetTitle(Strings:LocalizedString("AccountSettingsTitle"))

	local dummySelection = Utility.Create'Frame'
	{
		BackgroundTransparency = 1;
	}

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
		Name = "gameSettingsViewContainer";
		Position = UDim2.new(0, 840, 0, 275);
		Size = UDim2.new(0, 765, 0, 630);
		BorderSizePixel = 0;
		BackgroundTransparency = 1;
		Parent = this.Container;
	}

	local unlinkButton = accountLinkingView:GetUnlinkButton()

	local function connectSelection(gameplaySettingsView)
		local enabledStatusButton = gameplaySettingsView:GetEnabledStatusButton()

		unlinkButton.NextSelectionLeft = unlinkButton
		unlinkButton.NextSelectionRight = enabledStatusButton
		unlinkButton.NextSelectionUp = enabledStatusButton
		unlinkButton.NextSelectionDown = unlinkButton

		enabledStatusButton.NextSelectionLeft = unlinkButton
		enabledStatusButton.NextSelectionRight = enabledStatusButton
		enabledStatusButton.NextSelectionUp = enabledStatusButton
		enabledStatusButton.NextSelectionDown = unlinkButton
	end

	unlinkButton.NextSelectionLeft = unlinkButton
	unlinkButton.NextSelectionRight = unlinkButton
	unlinkButton.NextSelectionUp = unlinkButton
	unlinkButton.NextSelectionDown = unlinkButton

	GameplaySettingsView(connectSelection):SetParent(gameplaySettingsViewContainer)


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
