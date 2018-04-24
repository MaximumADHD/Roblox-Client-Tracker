-- Written by Kip Turner, Copyright Roblox 2015
local CoreGui = game:GetService("CoreGui")
local ContextActionService = game:GetService("ContextActionService")
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService('GuiService')

local GuiRoot = CoreGui:FindFirstChild("RobloxGui")
local Modules = GuiRoot:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

local Analytics = require(ShellModules:FindFirstChild('Analytics'))
local Utility = require(ShellModules:FindFirstChild('Utility'))
local AppTabDockModule = require(ShellModules:FindFirstChild('TabDock'))
local AppTabDockItemModule = require(ShellModules:FindFirstChild('TabDockItem'))
local HomePaneModule = require(ShellModules:FindFirstChild('HomePane'))
local GamesPaneModule = require(ShellModules:FindFirstChild('GamesPane'))
local AvatarPaneModule = require(ShellModules:FindFirstChild('AvatarPane'))

local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local SocialPaneModule = require(ShellModules:FindFirstChild('SocialPane'))

local StorePaneModule = require(ShellModules:FindFirstChild('StorePane'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))
local SettingsScreen = require(ShellModules:FindFirstChild('SettingsScreen'))
local AvatarEditorScreen = require(ShellModules:FindFirstChild('AvatarEditorScreen'))
local GameSearchScreen = require(ShellModules:FindFirstChild('GameSearchScreen'))

local AchievementManager = require(ShellModules:FindFirstChild('AchievementManager'))
local HintActionView = require(ShellModules:FindFirstChild('HintActionView'))

local function CreateAppHub()
	local this = {}

	local AppTabDock = AppTabDockModule(
		UDim2.new(0,0,0.132,0),
		UDim2.new(0,0,0,0))
	local appHubCns = {}

	local isShown = false
	local isFocused = false

	local lastSelectedContentPane = nil
	local lastParent = nil

	local HubContainer = Utility.Create'Frame'
	{
		Name = 'HubContainer';
		Size = UDim2.new(1, 0, 1, 0);
		BackgroundTransparency = 1;
		Visible = false;
	}

	local PaneContainer = Utility.Create'Frame'
	{
		Name = 'PaneContainer';
		Size = UDim2.new(1, 0, 0.786, 0);
		Position = UDim2.new(0,0,0.214,0);
		BackgroundTransparency = 1;
		Parent = HubContainer;
	}

	AppTabDock:SetParent(HubContainer)
	local HomeTab = AppTabDock:AddTab(AppTabDockItemModule(Strings:LocalizedString('HomeWord'), HomePaneModule(PaneContainer)))
	local AvatarTab = AppTabDock:AddTab(AppTabDockItemModule(Strings:LocalizedString('AvatarWord'), AvatarPaneModule(PaneContainer)))
	local GameTab = AppTabDock:AddTab(AppTabDockItemModule(Strings:LocalizedString('GamesWord'), GamesPaneModule(PaneContainer)))
	local SocialTab = AppTabDock:AddTab(AppTabDockItemModule(Strings:LocalizedString('FriendsWord'), SocialPaneModule(PaneContainer)))
	local StoreTab = AppTabDock:AddTab(AppTabDockItemModule(Strings:LocalizedString('CatalogWord'), StorePaneModule(PaneContainer)))


	local RobloxLogo = Utility.Create'ImageLabel'
	{
		Name = 'RobloxLogo';
		Size = UDim2.new(0, 232, 0, 56);
		Position = UDim2.new(0,0,0,0);
		BackgroundTransparency = 1;
		Image = 'rbxasset://textures/ui/Shell/Icons/ROBLOXLogoSmall@1080.png';
		Parent = HubContainer;
	}

	local function SetSelectedTab(newTab)
		AppTabDock:SetSelectedTab(newTab)
	end

	-- Hint Action View
	hintActionView = HintActionView(HubContainer, "OpenHintAction")
	hintActionView:SetImage('rbxasset://textures/ui/Shell/ButtonIcons/XButton.png')	-- always X button for tab views

	hintActionViewY = HintActionView(HubContainer, "OpenYHintAction", UDim2.new(0, 0, 1, -1))
	hintActionViewY:SetImage('rbxasset://textures/ui/Shell/ButtonIcons/YButton.png')

	-- Action Functions
	local seenXButtonPressed = false
	local seenYButtonPressed = false

	local function onOpenSettings(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			seenXButtonPressed = true
		elseif inputState == Enum.UserInputState.End and seenXButtonPressed then
			local settingsScreen = SettingsScreen()
			EventHub:dispatchEvent(EventHub.Notifications["OpenSettingsScreen"], settingsScreen);
		end
	end

	local function onOpenAvatarEditor(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			seenYButtonPressed = true
		elseif inputState == Enum.UserInputState.End and seenYButtonPressed then
			local avatarEditorScreen = AvatarEditorScreen()
			EventHub:dispatchEvent(EventHub.Notifications["OpenAvatarEditorScreen"], avatarEditorScreen);
			seenYButtonPressed = false
		end
	end

	local function onOpenPartyUI(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			seenXButtonPressed = true
		elseif inputState == Enum.UserInputState.End and seenXButtonPressed then
			if UserSettings().GameSettings:InStudioMode() or UserInputService:GetPlatform() == Enum.Platform.Windows then
				ScreenManager:OpenScreen(ErrorOverlay(Errors.Test.FeatureNotAvailableInStudio), false)
			else
				local success, result = pcall(function()
					-- PlatformService may not exist in studio
					return PlatformService:PopupPartyUI(inputObject.UserInputType)
				end)
				if not success then
					ScreenManager:OpenScreen(ErrorOverlay(Errors.PlatformError.PopupPartyUI), false)
				end
			end
		end
	end

	local function onSearchGames(actionName, inputState, inputObject)
		if inputState == Enum.UserInputState.Begin then
			seenXButtonPressed = true
		elseif inputState == Enum.UserInputState.End and seenXButtonPressed then
			if PlatformService then
				PlatformService:ShowKeyboard(Strings:LocalizedString("SearchGamesPhrase"), "", "", Enum.XboxKeyBoardType.Default)
			end
			seenXButtonPressed = false
		end
	end

	local function bindHintAction(actionFunc, actionName)
		hintActionView:SetText(actionName)
		hintActionView:BindAction(actionFunc, Enum.KeyCode.ButtonX)
		hintActionView:SetVisible(true)
	end

	local function setHintAction(selectedTab)
		hintActionView:UnbindAction()
		hintActionView:SetVisible(false)
		hintActionViewY:UnbindAction()
		hintActionViewY:SetVisible(false)

		if selectedTab == HomeTab then
			bindHintAction(onOpenSettings, Strings:LocalizedString("SettingsWord"))
		elseif selectedTab == GameTab then
			if AchievementManager:AllGamesUnlocked() then
				bindHintAction(onSearchGames, Strings:LocalizedString("SearchWord"))
			end
		elseif selectedTab == SocialTab then
			bindHintAction(onOpenPartyUI, Strings:LocalizedString("StartPartyPhrase"))
		elseif selectedTab == AvatarTab then
			hintActionViewY:SetText(Strings:LocalizedString("AvatarEditorWord"))
			hintActionViewY:BindAction(onOpenAvatarEditor, Enum.KeyCode.ButtonY)
			hintActionViewY:SetVisible(true)
		end

		-- NOTE: Avatar Tab has its own HintActionView as it needs to change visibility based on whats selected
	end

	function this:GetName()
		return lastSelectedContentPane and lastSelectedContentPane:GetName() or Strings:LocalizedString('HomeWord')
	end

	--For analytics
	function this:GetAnalyticsInfo()
		local analyticsInfo = {}
		local WidgetId = Analytics.WidgetNames('WidgetId')
		local paneAnalyticsInfo = nil
		if lastSelectedContentPane and type(lastSelectedContentPane.GetAnalyticsInfo) == "function" then
			paneAnalyticsInfo = lastSelectedContentPane.GetAnalyticsInfo()
		end

		--paneAnalyticsInfo should never be nil
		if type(paneAnalyticsInfo) == "table" and paneAnalyticsInfo[WidgetId] then
			analyticsInfo = paneAnalyticsInfo
		else
			analyticsInfo[WidgetId] = Analytics.WidgetNames('AppHubId')
		end
		return analyticsInfo
	end

	function this:Show()
		isShown = true

		HubContainer.Visible = true
		HubContainer.Parent = lastParent

		EventHub:removeEventListener(EventHub.Notifications["NavigateToRobuxScreen"], 'AppHubListenToRobuxScreenSwitch')
		EventHub:addEventListener(EventHub.Notifications["NavigateToRobuxScreen"], 'AppHubListenToRobuxScreenSwitch', function()
			if ScreenManager:ContainsScreen(this) then
				while ScreenManager:GetTopScreen() ~= this and ScreenManager:ContainsScreen(this) do
					ScreenManager:CloseCurrent()
				end
				if ScreenManager:GetTopScreen() == this then
					if AppTabDock:GetSelectedTab() ~= StoreTab then
						SetSelectedTab(StoreTab)
					end
				end
			end
		end)

		local openEquippedDebounce = false
		EventHub:removeEventListener(EventHub.Notifications["NavigateToEquippedAvatar"], 'AppHubListenToAvatarScreenSwitch')
		EventHub:addEventListener(EventHub.Notifications["NavigateToEquippedAvatar"], 'AppHubListenToAvatarScreenSwitch', function()
			if openEquippedDebounce then return end
			openEquippedDebounce = true
			if ScreenManager:ContainsScreen(this) then
				while ScreenManager:GetTopScreen() ~= this and ScreenManager:ContainsScreen(this) do
					ScreenManager:CloseCurrent()
				end
				if ScreenManager:GetTopScreen() == this then
					if AppTabDock:GetSelectedTab() ~= AvatarTab then
						SetSelectedTab(AvatarTab)
					end
				end
			end
			openEquippedDebounce = false
		end)

		if not AchievementManager:AllGamesUnlocked() then
			EventHub:removeEventListener(EventHub.Notifications["UnlockedUGC"], 'AppHubUnlockedUGC')
			EventHub:addEventListener(EventHub.Notifications["UnlockedUGC"], "AppHubUnlockedUGC", function()
				if isShown then
					local selectedTab = AppTabDock:GetSelectedTab()
					if selectedTab and selectedTab == GameTab then
						hintActionView:UnbindAction()
						hintActionView:SetVisible(false)
						bindHintAction(onSearchGames, Strings:LocalizedString("SearchWord"))
					end
				end
			end)
		end

		local currentlySelectedTab = AppTabDock:GetSelectedTab()
		AppTabDock:SetSelectedTab(currentlySelectedTab)
		if lastSelectedContentPane then
			lastSelectedContentPane:Show()
		end
	end

	function this:Hide()
		isShown = false

		if not ScreenManager:ContainsScreen(self) then
			EventHub:removeEventListener(EventHub.Notifications["NavigateToRobuxScreen"], 'AppHubListenToRobuxScreenSwitch')
			EventHub:removeEventListener(EventHub.Notifications["NavigateToEquippedAvatar"], 'AppHubListenToAvatarScreenSwitch')
		end
		EventHub:removeEventListener(EventHub.Notifications["UnlockedUGC"], 'AppHubUnlockedUGC')

		HubContainer.Visible = false
		HubContainer.Parent = nil

		if lastSelectedContentPane then
			lastSelectedContentPane:Hide()
		end
	end

	function this:Focus()
		isFocused = true
		AppTabDock:ConnectEvents()

		local function initTabDock()
			ContextActionService:BindCoreAction("CycleTabDock",
				function(actionName, inputState, inputObject)
					if inputState == Enum.UserInputState.End then
						if not AppTabDock:IsFocused() then
							lastSelectedContentPane:RemoveFocus(true)
							AppTabDock:Focus()
						else
							if inputObject.KeyCode == Enum.KeyCode.ButtonL1 then
								local prevTab = AppTabDock:GetPreviousTab()
								if prevTab then
									AppTabDock:SetSelectedTab(prevTab)
								end
							elseif inputObject.KeyCode == Enum.KeyCode.ButtonR1 then
								local nextTab = AppTabDock:GetNextTab()
								if nextTab then
									AppTabDock:SetSelectedTab(nextTab)
								end
							end
						end
					end
				end,
				false,
				Enum.KeyCode.ButtonL1, Enum.KeyCode.ButtonR1)

			local seenBButtonBegin = false
			ContextActionService:BindCoreAction("CloseAppHub",
				function(actionName, inputState, inputObject)
					if inputState == Enum.UserInputState.Begin then
						seenBButtonBegin = true
					elseif inputState == Enum.UserInputState.End then
						if seenBButtonBegin then
							if not AppTabDock:IsFocused() then
								lastSelectedContentPane:RemoveFocus(true)
								AppTabDock:Focus()
							end
						end
					end
				end,
				false,
				Enum.KeyCode.ButtonB)

			local function focusTab(tab)
				if tab then
					if lastSelectedContentPane then
						lastSelectedContentPane:Hide(true)
						lastSelectedContentPane:RemoveFocus(true)
					end
					local selectedContentPane = tab:GetContentItem()
					if selectedContentPane then
						selectedContentPane:Show(true)
						if not AppTabDock:IsFocused() then
							AppTabDock:Focus()
						end
					end
					lastSelectedContentPane = selectedContentPane

					-- set X actionf
					setHintAction(tab)
				end
			end

			local function onSelectedTabChanged(selectedTab)
				focusTab(selectedTab)
			end
			table.insert(appHubCns, AppTabDock.SelectedTabChanged:connect(onSelectedTabChanged))
		end

		initTabDock()

		local function onSelectedTabClicked(selectedTab)
			local selectedContentPane = selectedTab and selectedTab:GetContentItem()
			if selectedContentPane then
				selectedContentPane:Focus(AppTabDock)
			end
		end
		table.insert(appHubCns, AppTabDock.SelectedTabClicked:connect(onSelectedTabClicked))

		local function onSelectionChanged(prop)
			if prop == "SelectedCoreObject" then
				if AppTabDock:IsFocused() then
					AppTabDock:Show()
					if lastSelectedContentPane then
						lastSelectedContentPane:RemoveFocus()
					end
				end
			end

			if prop == "SelectedObject" then
				local currentSelection = GuiService.SelectedCoreObject
				if currentSelection and lastSelectedContentPane then
					-- first condition checks if function exist
					if lastSelectedContentPane.IsFocused and not lastSelectedContentPane:IsFocused() and lastSelectedContentPane.IsAncestorOf then
						if lastSelectedContentPane:IsAncestorOf(currentSelection) then
							lastSelectedContentPane:Focus(AppTabDock)
						else
							-- lastSelectedContentPane:RemoveFocus()
						end
					end
				end
			end
		end
		table.insert(appHubCns, GuiService.Changed:connect(onSelectionChanged))

		local function onKeyboardClosed(searchWord)
			searchWord = Utility.SpaceNormalizeString(searchWord)
			if #searchWord > 0 then
				local searchScreen = GameSearchScreen(searchWord)
				searchScreen:SetParent(HubContainer.Parent)
				ScreenManager:OpenScreen(searchScreen)
			end
		end
		if PlatformService then
			table.insert(appHubCns, PlatformService.KeyboardClosed:connect(onKeyboardClosed))
		end

		if AppTabDock:GetSelectedTab() == nil then
			AppTabDock:SetSelectedTab(HomeTab)
		end

		if lastSelectedContentPane then
			lastSelectedContentPane:Focus(AppTabDock)
		end

		setHintAction(AppTabDock:GetSelectedTab())
	end

	function this:RemoveFocus()
		isFocused = false
		AppTabDock:DisconnectEvents()

		ContextActionService:UnbindCoreAction("CycleTabDock")
		ContextActionService:UnbindCoreAction("CloseAppHub")

		if lastSelectedContentPane then
			lastSelectedContentPane:RemoveFocus()
		end

		for k,v in pairs(appHubCns) do
			v:disconnect()
			v = nil
			appHubCns[k] = nil
		end

		ContextActionService:UnbindCoreAction("OpenHintAction")
		ContextActionService:UnbindCoreAction("OpenYHintAction")
	end

	function this:SetParent(newParent)
		HubContainer.Parent = newParent
		lastParent = newParent
	end

	local hubID = "AppHub"

	return this
end

return CreateAppHub
