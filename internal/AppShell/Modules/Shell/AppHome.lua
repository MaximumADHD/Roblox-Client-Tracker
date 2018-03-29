-- Written by Kip Turner, Copyright Roblox 2015

-- App's Main
local CoreGui = Game:GetService("CoreGui")
local RobloxGui = CoreGui:FindFirstChild("RobloxGui")
local Modules = RobloxGui:FindFirstChild("Modules")
local ShellModules = Modules:FindFirstChild("Shell")

-- TODO: Will use for re-auth when finished
local UserInputService = game:GetService('UserInputService')
local PlatformService = nil
pcall(function() PlatformService = game:GetService('PlatformService') end)
local ThirdPartyUserService = nil
pcall(function() ThirdPartyUserService = game:GetService('ThirdPartyUserService') end)
local Players = game:GetService("Players")

local GuiRoot = CoreGui:FindFirstChild("RobloxGui")

-- Start up background scene before anything else
require(ShellModules.BackgroundSceneManager)

local Utility = require(ShellModules:FindFirstChild('Utility'))
local GlobalSettings = require(ShellModules:FindFirstChild('GlobalSettings'))
local AppHubModule = require(ShellModules:FindFirstChild('AppHub'))
local ScreenManager = require(ShellModules:FindFirstChild('ScreenManager'))
local Errors = require(ShellModules:FindFirstChild('Errors'))
local ErrorOverlay = require(ShellModules:FindFirstChild('ErrorOverlay'))
local EventHub = require(ShellModules:FindFirstChild('EventHub'))
local GameGenreScreen = require(ShellModules:FindFirstChild('GameGenreScreen'))
local EngagementScreenModule = require(ShellModules:FindFirstChild('EngagementScreen'))
local BadgeScreenModule = require(ShellModules:FindFirstChild('BadgeScreen'))
local AccountScreen = require(ShellModules:FindFirstChild('AccountScreen'))

local FriendsData = require(ShellModules:FindFirstChild('FriendsData'))
local UserData = require(ShellModules:FindFirstChild('UserData'))
local AchievementManager = require(ShellModules:FindFirstChild('AchievementManager'))
local HeroStatsManager = require(ShellModules:FindFirstChild('HeroStatsManager'))
local ControllerStateManager = require(ShellModules:FindFirstChild('ControllerStateManager'))
local Alerts = require(ShellModules:FindFirstChild('Alerts'))
local Strings = require(ShellModules:FindFirstChild('LocalizedStrings'))

local SiteInfoWidget = nil
local SiteInfoWidgetRefactor = Utility.IsFastFlagEnabled("SiteInfoWidgetRefactor")
if SiteInfoWidgetRefactor then
	SiteInfoWidget = require(ShellModules:FindFirstChild('SiteInfoWidget'))
else
	SiteInfoWidget = require(ShellModules:FindFirstChild('SiteInfoWidgetOld'))
end

local GameDetailModule = require(ShellModules:FindFirstChild('GameDetailScreen'))

-- Initialize AppState and in turn initialize the Store
local AppState = require(ShellModules.AppState)

local AppContainer = require(ShellModules.AppContainer)
local TitleSafeContainer = AppContainer.TitleSafeContainer

local EngagementScreen = EngagementScreenModule()
EngagementScreen:SetParent(TitleSafeContainer)

-- Site Info View
if SiteInfoWidgetRefactor then
	SiteInfoWidget.new()
else
	if PlatformService then
		spawn(function()
			local text = PlatformService:GetSiteInfo();
			if text and text ~= "" then
				local siteInfoWidget = SiteInfoWidget()
				siteInfoWidget:SetText(text)
				siteInfoWidget:SetParent(TitleSafeContainer)
			end
		end)
	end
end

-- Account Age View
local AccountAgeStatus = require(ShellModules.Components.AccountAgeStatus).new(AppState.store, TitleSafeContainer)

local function returnToEngagementScreen()
	if ScreenManager:ContainsScreen(EngagementScreen) then
		while ScreenManager:GetTopScreen() ~= EngagementScreen do
			ScreenManager:CloseCurrent()
		end
	else
		while ScreenManager:GetTopScreen() do
			ScreenManager:CloseCurrent()
		end
		ScreenManager:OpenScreen(EngagementScreen)
	end
end

local AppHub = nil
local function onAuthenticationSuccess(isNewLinkedAccount)
	-- Set UserData
	UserData:Initialize()

	-- Unwind Screens if needed - this will be needed once we put in account linking
	returnToEngagementScreen()

	AppHub = AppHubModule()
	AppHub:SetParent(TitleSafeContainer)

	-- Account Age Setting
	local SetUnder13 = require(ShellModules.Actions.SetUnder13)
	AppState.store:Dispatch(SetUnder13(Players.LocalPlayer:GetUnder13()))

	EventHub:addEventListener(EventHub.Notifications["OpenGameDetail"], "gameDetail",
		function(placeId)
			local gameDetail = GameDetailModule(placeId)
			gameDetail:SetParent(TitleSafeContainer);
			ScreenManager:OpenScreen(gameDetail);
		end);
	EventHub:addEventListener(EventHub.Notifications["OpenGameGenre"], "gameGenre",
		function(sortName, gameCollection)
			local gameGenre = GameGenreScreen(sortName, gameCollection)
			gameGenre:SetParent(TitleSafeContainer);
			ScreenManager:OpenScreen(gameGenre);
		end);
	EventHub:addEventListener(EventHub.Notifications["OpenBadgeScreen"], "gameBadges",
		function(badgeData, previousScreenName)
			local badgeScreen = BadgeScreenModule(badgeData, previousScreenName)
			badgeScreen:SetParent(TitleSafeContainer);
			ScreenManager:OpenScreen(badgeScreen);
		end)
	EventHub:addEventListener(EventHub.Notifications["OpenSettingsScreen"], "settingsScreen",
		function(settingsScreen)
			settingsScreen:SetParent(TitleSafeContainer);
			ScreenManager:OpenScreen(settingsScreen);
		end)

	EventHub:addEventListener(EventHub.Notifications["OpenAvatarEditorScreen"], "avatarEditorScreen",
		function(screen)
			screen:SetParent(AppContainer.Root);
			ScreenManager:OpenScreen(screen);
		end)

	EventHub:addEventListener(EventHub.Notifications["OpenAccountSettingsScreen"], "accountSettingsScreen",
		function(errorCode)
			local accountScreen = AccountScreen(errorCode)
			accountScreen:SetParent(TitleSafeContainer);
			ScreenManager:OpenScreen(accountScreen);
		end)

	Utility.DebugLog("User and Event initialization finished. Opening AppHub")
	ScreenManager:OpenScreen(AppHub);

	if PlatformService and not PlatformService:SeenCPPWelcomeMsg() then
		ScreenManager:OpenScreen(ErrorOverlay(Alerts.CrossPlatformPlayWelcome), false)
	end

	-- Comment out for now since this has never been called in current flow
	-- show info popup to users on newly linked accounts
--	if isNewLinkedAccount == true then
--		ScreenManager:OpenScreen(ErrorOverlay(Alerts.PlatformLink), false)
--	end
end

local function onReAuthentication(reauthenticationReason)
	Utility.DebugLog("Beging Reauth, cleaning things up")
	-- unwind ScreenManager

	-- Account Age View
	local SetUnder13 = require(ShellModules.Actions.SetUnder13)
	AppState.store:Dispatch(SetUnder13(nil))

	returnToEngagementScreen()

	UserData:Reset()
	AppHub = nil
	EventHub:removeEventListener(EventHub.Notifications["OpenGameDetail"], "gameDetail")
	EventHub:removeEventListener(EventHub.Notifications["OpenGameGenre"], "gameGenre")
	EventHub:removeEventListener(EventHub.Notifications["OpenBadgeScreen"], "gameBadges")
	EventHub:removeEventListener(EventHub.Notifications["OpenSettingsScreen"], "settingsScreen")
	EventHub:removeEventListener(EventHub.Notifications["OpenAvatarEditorScreen"], "avatarEditorScreen")
	EventHub:removeEventListener(EventHub.Notifications["OpenAccountSettingsScreen"], "accountSettingsScreen")

	Utility.DebugLog("Reauth complete. Return to engagement screen.")

	-- show reason overlay
	local alert = Alerts.SignOut[reauthenticationReason] or Alerts.Default

	if reauthenticationReason == 6 then
		alert = nil
	end

	if alert then
		ScreenManager:OpenScreen(ErrorOverlay(alert), false)
	end
end

local function onGameJoin(joinResult, placeId)
	-- 0 is success, anything else is an error
	local joinSuccess = joinResult == 0
	if not joinSuccess then
		local err = Errors.GameJoin[joinResult] or Errors.GameJoin.Default
		ScreenManager:OpenScreen(ErrorOverlay(err), false)
	end
	EventHub:dispatchEvent(EventHub.Notifications["GameJoin"], joinSuccess, placeId)
end

if PlatformService then
	PlatformService.GameJoined:connect(onGameJoin)
end

if ThirdPartyUserService then
	ThirdPartyUserService.ActiveUserSignedOut:connect(onReAuthentication)
end

ControllerStateManager:Initialize()

EventHub:addEventListener(EventHub.Notifications["AuthenticationSuccess"], "authUserSuccess", function(isNewLinkedAccount)
		Utility.DebugLog("User authenticated, initializing app shell")
		onAuthenticationSuccess(isNewLinkedAccount)
	end);
ScreenManager:OpenScreen(EngagementScreen)

UserInputService.MouseIconEnabled = false

return {}
