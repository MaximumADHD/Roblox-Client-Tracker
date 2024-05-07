--!nonstrict
--!nolint GlobalUsedAsLocal

--[[
				Filename: SettingsHub.lua
				Written by: jeditkacheff
				Version 1.0
				Description: Controls the settings menu navigation and contains the settings pages
--]]

local AnalyticsService = game:GetService("RbxAnalyticsService")
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local Symbol = require(CorePackages.Symbol)
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local IXPService = game:GetService("IXPService")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local Roact = require(CorePackages.Roact)
local Cryo = require(CorePackages.Cryo)
local Otter = require(CorePackages.Otter)

--[[ UTILITIES ]]
local utility = require(RobloxGui.Modules.Settings.Utility)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local PolicyService = require(RobloxGui.Modules.Common.PolicyService)
local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)
local MouseIconOverrideService = require(CorePackages.InGameServices.MouseIconOverrideService)
local isSubjectToDesktopPolicies = require(CorePackages.Workspace.Packages.SharedFlags).isSubjectToDesktopPolicies
local MenuBackButton = require(RobloxGui.Modules.Settings.Components.MenuBackButton)
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)
local IXPServiceWrapper = require(RobloxGui.Modules.Common.IXPServiceWrapper)
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local ScreenshotsPolicy  = require(CorePackages.Workspace.Packages.Screenshots).ScreenshotsPolicy
local InExperienceCapabilities = require(RobloxGui.Modules.Common.InExperienceCapabilities)

local Theme = require(script.Parent.Theme)

--[[ CONSTANTS ]]
local SETTINGS_SHIELD_COLOR = Theme.color("SETTINGS_SHIELD", Color3.new(41/255,41/255,41/255))
local SETTINGS_SHIELD_TRANSPARENCY = Theme.transparency("SETTINGS_SHIELD_TRANSPARENCY", 0.2)
local SETTINGS_SHIELD_VR_TRANSPARENCY = 1
local SETTINGS_SHIELD_INACTIVE_POSITION = Theme.SHIELD_INACTIVE_POSITION
local SETTINGS_BASE_ZINDEX = 2
local DEV_CONSOLE_ACTION_NAME = "Open Dev Console"
local QUICK_PROFILER_ACTION_NAME = "Show Quick Profiler"
local SETTINGS_HUB_MENU_KEY = "SettingsHub"
local VOICE_RECORDING_INDICATOR_FADE_TIME = 5

local SETTINGS_HUB_MOUSE_OVERRIDE_KEY = Symbol.named("SettingsHubCursorOverride")

local VERSION_BAR_HEIGHT = isTenFootInterface and 32 or (utility:IsSmallTouchScreen() and 24 or 26)

local BOTTOM_BUTTON_BAR_HEIGHT = 80
local BOTTOM_BUTTON_10FT_SIZE = 72

-- [[ FAST FLAGS ]]
local FFlagUseNotificationsLocalization = settings():GetFFlag('UseNotificationsLocalization')
local FFlagLocalizeVersionLabels = settings():GetFFlag("LocalizeVersionLabels")

local FFlagEnableInGameMenuDurationLogger = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)()

local isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled)

local GetFFlagAbuseReportEnableReportSentPage = require(RobloxGui.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage)
local GetFFlagVoiceChatUILogging = require(RobloxGui.Modules.Flags.GetFFlagVoiceChatUILogging)
local GetFFlagOldMenuUseSpeakerIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuUseSpeakerIcons)
local GetFFlagMuteButtonRaceConditionFix = require(RobloxGui.Modules.Flags.GetFFlagMuteButtonRaceConditionFix)

local GetFFlagRemoveAssetVersionEndpoint = require(RobloxGui.Modules.Flags.GetFFlagRemoveAssetVersionEndpoint)
local GetFFlagNewEventIngestPlayerScriptsDimensions = require(RobloxGui.Modules.Flags.GetFFlagNewEventIngestPlayerScriptsDimensions)
local FFlagFixMouseIconSettingsMenuWithDeferredEvents = game:DefineFastFlag("FixMouseIconSettingsMenuWithDeferredEvents", false)
local GetFFlagShareInviteLinkContextMenuV1Enabled = require(RobloxGui.Modules.Settings.Flags.GetFFlagShareInviteLinkContextMenuV1Enabled)
local GetFFlagReportAbuseMenuEntrypointAnalytics = require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAbuseMenuEntrypointAnalytics)
local FFlagAvatarChatCoreScriptSupport = require(RobloxGui.Modules.Flags.FFlagAvatarChatCoreScriptSupport)
local GetFFlagVoiceRecordingIndicatorsEnabled = require(RobloxGui.Modules.Flags.GetFFlagVoiceRecordingIndicatorsEnabled)
local GetFFlagEnableTeleportBackButton = require(RobloxGui.Modules.Flags.GetFFlagEnableTeleportBackButton)
local ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)()
local GetFFlagOpenControlsOnMenuOpen = require(RobloxGui.Modules.Chrome.Flags.GetFFlagOpenControlsOnMenuOpen)
local FFlagLuaEnableGameInviteModalSettingsHub = game:DefineFastFlag("LuaEnableGameInviteModalSettingsHub", false)
local GetFFlagFix10ftBottomButtons = require(RobloxGui.Modules.Settings.Flags.GetFFlagFix10ftBottomButtons)
local GetFFlagLuaInExperienceCoreScriptsGameInviteUnification = require(RobloxGui.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification)
local GetFStringGameInviteMenuLayer = require(CorePackages.Workspace.Packages.SharedFlags).GetFStringGameInviteMenuLayer
local GetFFlagFix10ftMenuGap = require(RobloxGui.Modules.Settings.Flags.GetFFlagFix10ftMenuGap)
local GetFFlagFixSettingsHubVRBackgroundError =  require(RobloxGui.Modules.Settings.Flags.GetFFlagFixSettingsHubVRBackgroundError)
local GetFFlagRightAlignMicText =  require(RobloxGui.Modules.Settings.Flags.GetFFlagRightAlignMicText)
local GetFFlagFixResumeSourceAnalytics =  require(RobloxGui.Modules.Settings.Flags.GetFFlagFixResumeSourceAnalytics)
local GetFFlagShouldInitWithFirstPageWithTabHeader =  require(RobloxGui.Modules.Settings.Flags.GetFFlagShouldInitWithFirstPageWithTabHeader)
local FFlagPreventHiddenSwitchPage = game:DefineFastFlag("PreventHiddenSwitchPage", false)
local GetFFlagEnableScreenshotUtility = require(CorePackages.Workspace.Packages.SharedFlags).GetFFlagEnableScreenshotUtility


--[[ SERVICES ]]
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local ContentProvider = game:GetService("ContentProvider")
local StarterGui = game:GetService("StarterGui")
local StarterPlayer = game:GetService("StarterPlayer")
local ContextActionService = game:GetService("ContextActionService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local RunService = game:GetService("RunService")
local VRService = game:GetService("VRService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Settings = UserSettings()
local GameSettings = Settings.GameSettings

local PlatformService = nil -- Clean up along with PlatformFriendsService engine-feature
pcall(function() PlatformService = game:GetService('PlatformService') end)

local PlatformFriendsService = nil
pcall(function() PlatformFriendsService = game:GetService('PlatformFriendsService') end)

--[[ REMOTES ]]
local GetServerVersionRemote = nil
spawn(function()
	GetServerVersionRemote = RobloxReplicatedStorage:WaitForChild("GetServerVersion", math.huge)
end)

--[[ VARIABLES ]]
local log = require(RobloxGui.Modules.Logger):new(script.Name)
local isTouchDevice = UserInputService.TouchEnabled
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local platform = UserInputService:GetPlatform()

local baseUrl = ContentProvider.BaseUrl
local isTestEnvironment = not string.find(baseUrl, "www.roblox.com")
local DevConsoleMaster = require(RobloxGui.Modules.DevConsoleMaster)

local lastInputChangedCon = nil
local chatWasVisible = false

local connectedServerVersion = nil

local SettingsFullScreenTitleBar = require(RobloxGui.Modules.Settings.Components.SettingsFullScreenTitleBar)
local PermissionsButtons = require(RobloxGui.Modules.Settings.Components.PermissionsButtons)
local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)
local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)

local InviteToGameAnalytics = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalytics
local VoiceAnalytics = require(script:FindFirstAncestor("Settings").Analytics.VoiceAnalytics)

local GameInvitePackage, GameInviteModalManager, GameInviteInviteExperimentVariant, GameInviteConstants
if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
	GameInvitePackage = require(CorePackages.Workspace.Packages.GameInvite)
	GameInviteModalManager = GameInvitePackage.GameInviteModalManager
	GameInviteInviteExperimentVariant = GameInvitePackage.GameInviteInviteExperimentVariant
	GameInviteConstants = GameInvitePackage.GameInviteConstants
end

local ScreenshotsApp = require(RobloxGui.Modules.Screenshots.ScreenshotsApp)

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local shouldLocalize = PolicyService:IsSubjectToChinaPolicies()

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local GetFFlagOldMenuNewIcons = require(RobloxGui.Modules.Flags.GetFFlagOldMenuNewIcons)
local GetFFlagPlayerListAnimateMic = require(RobloxGui.Modules.Flags.GetFFlagPlayerListAnimateMic)
local NotchSupportExperiment = require(RobloxGui.Modules.Settings.Experiments.NotchSupportExperiment)
local GetFFlagInGameMenuV1FadeBackgroundAnimation = require(RobloxGui.Modules.Settings.Flags.GetFFlagInGameMenuV1FadeBackgroundAnimation)
local GetFFlagSwitchInExpTranslationsPackage = require(RobloxGui.Modules.Flags.GetFFlagSwitchInExpTranslationsPackage)
local FFlagSettingsHubRaceConditionFix = game:DefineFastFlag("SettingsHubRaceConditionFix", false)

local MuteStatusIcons = {
	MicOn = "rbxasset://textures/ui/Settings/Players/Unmute@2x.png",
	MicOff = "rbxasset://textures/ui/Settings/Players/Muted@2x.png",
	MicDisabled = "rbxasset://textures/ui/Settings/Players/Blocked@2x.png",
	Loading = "rbxasset://textures/ui/Settings/Players/Unmuted-White@2x.png",
}

local PlayerMuteStatusIcons = MuteStatusIcons

if GetFFlagOldMenuNewIcons() then
	MuteStatusIcons = VoiceChatServiceManager.MuteStatusIcons
	PlayerMuteStatusIcons = VoiceChatServiceManager.PlayerMuteStatusIcons
end

local SPRING_PARAMS = {}
if GetFFlagVoiceRecordingIndicatorsEnabled() then
	SPRING_PARAMS = {
		frequency = 4,
		dampingRatio = 1,
	}
end

--[[ Localization Fixes for Version Labels]]
local shouldTryLocalizeVersionLabels = FFlagLocalizeVersionLabels or shouldLocalize
local RobloxTranslator = nil
if shouldTryLocalizeVersionLabels or GetFFlagVoiceRecordingIndicatorsEnabled() then
	RobloxTranslator = require(RobloxGui.Modules:WaitForChild("RobloxTranslator"))
end
local function tryTranslate(key, defaultString)
	if not RobloxTranslator then
		return defaultString
	end
	local succss, result = pcall(RobloxTranslator.FormatByKey, RobloxTranslator, key)
	if succss then return result end
	return defaultString
end


--[[ CORE MODULES ]]
local chat = require(RobloxGui.Modules.ChatSelector)

local SETTINGS_SHIELD_ACTIVE_POSITION
local SETTINGS_SHIELD_SIZE
if not (GetFFlagFix10ftMenuGap() and Theme.UIBloxThemeEnabled) and isTenFootInterface then
	SETTINGS_SHIELD_ACTIVE_POSITION = UDim2.new(0,0,0,0)
	SETTINGS_SHIELD_SIZE = UDim2.new(1,0,1,0)
else
	local topCornerInset, _ = GuiService:GetGuiInset()

	SETTINGS_SHIELD_ACTIVE_POSITION = UDim2.new(0, 0, 0, -topCornerInset.Y)
	SETTINGS_SHIELD_SIZE = UDim2.new(1, 0, 1, topCornerInset.Y)
end

local function GetCorePackagesLoaded(packageList)
	local CorePackages = game:GetService("CorePackages")
	for _, moduleName in pairs(packageList) do
		if not CorePackages:FindFirstChild(moduleName) then
			return false
		end
	end
	return true
end

local function GetServerVersionBlocking()
	if connectedServerVersion then
		return connectedServerVersion
	end
	if not GetServerVersionRemote then
		repeat
			wait()
		until GetServerVersionRemote
	end
	connectedServerVersion = GetServerVersionRemote:InvokeServer()
	return connectedServerVersion
end

local function GetPlaceVersionText()
	if GetFFlagRemoveAssetVersionEndpoint() then
		return game.PlaceVersion
	end

	local text = game.PlaceVersion

	pcall(function()
		local json = HttpRbxApiService:GetAsync(string.format("assets/%d/versions", game.PlaceId))
		local versionData = HttpService:JSONDecode(json)
		local latestVersion = versionData[1].VersionNumber
		text = string.format("%s (Latest: %d)", text, latestVersion)
	end)

	return text
end

local function CreateSettingsHub()
	local this = {}
	this.Visible = false
	this.Active = true
	this.Pages = {CurrentPage = nil, PageTable = {}}
	this.MenuStack = {}
	this.TabHeaders = {}
	this.BottomBarButtons = {}
	this.BottomBarButtonsComponents = {}
	this.ResizedConnection = nil
	this.TakingScreenshot = false
	if GetFFlagEnableTeleportBackButton() then
		this.BackBarVisibleConnection = nil
	end
	this.PreferredTransparencyChangedConnection = nil
	this.TabConnection = nil
	this.LeaveGamePage = require(RobloxGui.Modules.Settings.Pages.LeaveGame)
	this.ResetCharacterPage = require(RobloxGui.Modules.Settings.Pages.ResetCharacter)
	this.SettingsShowSignal = utility:CreateSignal()
	this.CurrentPageSignal = utility:CreateSignal()
	this.OpenStateChangedCount = 0
	this.BottomButtonFrame = nil

	local voiceAnalytics = VoiceAnalytics.new(AnalyticsService, "SettingsHub")

	if GetFFlagVoiceRecordingIndicatorsEnabled() then
		this.isMuted = nil
		this.lastVoiceRecordingIndicatorTextUpdated = nil
	end

	if GetFFlagInGameMenuV1FadeBackgroundAnimation() then
		NotchSupportExperiment.initialize()
	end

	--[[
		Keep the status of whether the user has enabled Self View or not. This is used
		to keep track of the self view button state.
	]]
	if FFlagAvatarChatCoreScriptSupport then
		this.selfViewOpen = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		this.toggleSelfViewSignal = toggleSelfViewSignal:connect(function()
			this.selfViewOpen = not this.selfViewOpen
		end)

		this.selfViewOpen = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) and SelfViewAPI.getSelfViewIsOpenAndVisible()
		this.selfViewVisibilitySignal = selfViewVisibilityUpdatedSignal:connect(function()
			this.selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		end)
	end

	local pageChangeCon = nil

	local PoppedMenuEvent = Instance.new("BindableEvent")
	PoppedMenuEvent.Name = "PoppedMenu"
	this.PoppedMenu = PoppedMenuEvent.Event

	local function shouldShowHubBar(whichPage)
		whichPage = whichPage or this.Pages.CurrentPage
		return whichPage.ShouldShowBottomBar == true
	end

	local function shouldShowBottomBar(whichPage)
		whichPage = whichPage or this.Pages.CurrentPage

		if utility:IsPortrait() or utility:IsSmallTouchScreen() then
			return Theme.AlwaysShowBottomBar()
		end

		return whichPage ~= nil and whichPage.ShouldShowBottomBar == true
	end

	local function setBottomBarBindings()
		if not this.Visible then
			return
		end
		for i = 1, #this.BottomBarButtons do
			local buttonTable = this.BottomBarButtons[i]
			local buttonName = buttonTable[1]
			local hotKeyTable = buttonTable[2]
			ContextActionService:BindCoreAction(buttonName, hotKeyTable[1], false, unpack(hotKeyTable[2]))
		end

		if this.BottomButtonFrame then
			this.BottomButtonFrame.Visible = true
		end
	end

	local function removeBottomBarBindings(delayBeforeRemoving)
		for _, hotKeyTable in pairs(this.BottomBarButtons) do
			ContextActionService:UnbindCoreAction(hotKeyTable[1])
		end

		local myOpenStateChangedCount = this.OpenStateChangedCount
		local removeBottomButtonFrame = function()
			if this.OpenStateChangedCount == myOpenStateChangedCount and this.BottomButtonFrame then
				this.BottomButtonFrame.Visible = false
			end
		end

		if delayBeforeRemoving then
			delay(delayBeforeRemoving, removeBottomButtonFrame)
		else
			removeBottomButtonFrame()
		end
	end

	local function updateButtonPosition(buttonName, position, size)
		-- We need to concat "ButtonButton" because addBottomBarButton creates name+"Button" and sends that to util.createButton
		-- which creates a button instance using name+"Button"...
		local buttonInstance = this.BottomButtonFrame:FindFirstChild(buttonName .. "ButtonButton", true)
		if not buttonInstance then
			return
		end
		buttonInstance.Position = position
		buttonInstance.Size = size
	end

	local function fnOrValue(arg)
		return (type(arg) == "function") and arg() or arg
	end

	local function pollImage()
		local newMuted = VoiceChatServiceManager.localMuted
		local image
		if newMuted == nil then
			image = if GetFFlagOldMenuUseSpeakerIcons() then PlayerMuteStatusIcons.Loading else MuteStatusIcons.Loading
		elseif newMuted then
			image = if GetFFlagOldMenuUseSpeakerIcons() then PlayerMuteStatusIcons.MicOff else MuteStatusIcons.MicOff
		elseif VoiceChatServiceManager.isTalking and GetFFlagPlayerListAnimateMic() then
			local level = math.random()
			local roundedLevel = 20 * math.floor(0.5 + 5*level)
			image = VoiceChatServiceManager:GetIcon("Unmuted" .. tostring(roundedLevel), "MicLight")
		else
			image = if GetFFlagOldMenuUseSpeakerIcons() then PlayerMuteStatusIcons.MicOn else MuteStatusIcons.MicOn
		end
		return image
	end

	local IGMLocalizationStrings = {}
	local VoiceStateStrings = {
		Loading = "",
		MicOff = "",
		MicOn = "",
	}

	local function pollVoiceTextLabel()
		-- Lazy load and cache strings from IGMv3
		local localeId = LocalizationService.RobloxLocaleId
		if not IGMLocalizationStrings[localeId] then

			local Localization
			if GetFFlagSwitchInExpTranslationsPackage() then
				Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
			else
				Localization = require(RobloxGui.Modules.InGameMenu.Localization.Localization)
			end
			IGMLocalizationStrings[localeId] = Localization.new(localeId)
			local strings = IGMLocalizationStrings[localeId]
			VoiceStateStrings.Loading = strings:Format("CoreScripts.InGameMenu.QuickActions.Connecting")
			VoiceStateStrings.MicOff = strings:Format("CoreScripts.InGameMenu.QuickActions.UnmuteSelf")
			VoiceStateStrings.MicOn = strings:Format("CoreScripts.InGameMenu.QuickActions.MuteSelf")
		end

		-- Return string based on local microphone state
		local newMuted = VoiceChatServiceManager.localMuted

		local out = ""
		if newMuted == nil then
			out = VoiceStateStrings.Loading
		elseif newMuted then
			out = VoiceStateStrings.MicOff
		elseif VoiceChatServiceManager.isTalking then
			out = VoiceStateStrings.MicOn
		else
			out = VoiceStateStrings.MicOn
		end

		return out
	end


	local buttonHintCached = nil
	local voiceButtonTextCached = nil

	local function updateIcon()
		if ChromeEnabled then
			return
		end
		local buttonHint, buttonLabel
		if Theme.UseIconButtons then
			if not buttonHintCached then
				buttonHintCached = this.BottomButtonFrame:FindFirstChild("MuteButtonButtonIcon", true)
				voiceButtonTextCached = this.BottomButtonFrame:FindFirstChild("MuteButtonButtonTextLabel", true)
			end
			buttonHint = buttonHintCached
			buttonLabel = voiceButtonTextCached
		else
			buttonHint = this.BottomButtonFrame:FindFirstChild("MuteButtonHint", true)
		end
		if buttonHint then
			buttonHint.Image = pollImage()
		end
		if buttonLabel then
			buttonLabel.Text = pollVoiceTextLabel()
		end
	end

	local function hideVoiceUx()
		local wholeButton = (this :: any).MuteButtonButton
		if wholeButton then
			wholeButton.Visible = false
			wholeButton:Destroy()
		end
		local tenFootButtonHeight = if GetFFlagFix10ftBottomButtons() and Theme.UIBloxThemeEnabled then BOTTOM_BUTTON_10FT_SIZE else 120
		local buttonSize = if isTenFootInterface then UDim2.new(0, 320, 0, tenFootButtonHeight) else UDim2.new(0, 260, 0, Theme.LargeButtonHeight)

		updateButtonPosition("LeaveGame", UDim2.new(0.5, if isTenFootInterface then -160 else -130, 0.5, -25), buttonSize)
		updateButtonPosition("ResetCharacter", UDim2.new(0.5, if isTenFootInterface then -550 else -400, 0.5, -25), buttonSize)
		updateButtonPosition("Resume", UDim2.new(0.5, if isTenFootInterface then 200 else 140, 0.5, -25), buttonSize)
	end


	local IconButtonLayoutOrderCount = 0
	local function addBottomBarIconButton(name, icon, text, gamepadImage, keyboardImage, position, clickFunc, hotkeys)
		local buttonName = name .. "Button"
		local iconBtn = utility:MakeIconButton(buttonName, icon and Theme.Images[icon] or nil , text, nil, clickFunc, nil, this)
		iconBtn.Parent = this.BottomButtonFrame
		iconBtn.Position = position
		iconBtn.LayoutOrder = IconButtonLayoutOrderCount
		IconButtonLayoutOrderCount = IconButtonLayoutOrderCount + 1

		local hotKeyFunc = function(contextName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				clickFunc()
			end
		end

		local hotKeyTable = {hotKeyFunc, hotkeys}
		this.BottomBarButtons[#this.BottomBarButtons + 1] = {buttonName, hotKeyTable}
		this.BottomBarButtonsComponents[#this.BottomBarButtonsComponents + 1] = iconBtn;
	end

	local function addBottomBarButtonOld(name, text, gamepadImage, keyboardImage, position, clickFunc, hotkeys, hotFunc)


		local buttonName = name .. "Button"
		local textName = name .. "Text"

		local size = UDim2.new(0,260,0,Theme.LargeButtonHeight)
		if isTenFootInterface then
			size = if Theme.UIBloxThemeEnabled and GetFFlagFix10ftBottomButtons() then UDim2.new(0,320,0,BOTTOM_BUTTON_10FT_SIZE) else UDim2.new(0,320,0,120)
		end

		this[buttonName], this[textName] = utility:MakeStyledButton(name .. "Button", text, size, clickFunc, nil, this)

		this[buttonName].Position = position
		this[buttonName].Parent = this.BottomButtonFrame
		if isTenFootInterface then
			this[buttonName].ImageTransparency = 1
		end

		this[textName].FontSize = Enum.FontSize.Size24
		local hintLabel = nil

		if not isTouchDevice then

			if Theme.UIBloxThemeEnabled then
				local hintOffset = 9 + 33
				local rightPad = 9
				this[textName].Size = UDim2.new(1,-(hintOffset+rightPad),1.0,0)
				this[textName].Position = UDim2.new(1,-rightPad,0,0)
				this[textName].AnchorPoint = Vector2.new(1,0)
			elseif FFlagUseNotificationsLocalization then
				this[textName].Size = UDim2.new(0.675,0,0.67,0)
				this[textName].Position = UDim2.new(0.275,0,0.125,0)
			else
				this[textName].Size = UDim2.new(0.75,0,0.9,0)
				this[textName].Position = UDim2.new(0.25,0,0,0)
			end

			local hintName = name .. "Hint"
			local image = ""
			if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) or platform == Enum.Platform.XBoxOne then
				image = gamepadImage
			else
				image = keyboardImage
			end

			hintLabel = utility:Create'ImageLabel'
			{
				Name = hintName,
				ZIndex = this.Shield.ZIndex + 2,
				BackgroundTransparency = 1,
				Image = image,
				Parent = this[buttonName]
			};

			if Theme.UIBloxThemeEnabled then
				if image == keyboardImage then
					hintLabel.ImageColor3 = Theme.color("WhiteButtonText", Color3.new(1,1,1))
					hintLabel.ImageTransparency = Theme.transparency("WhiteButtonText", 1)
				end
				hintLabel.Position = UDim2.new(0,9,0.5,0)
				hintLabel.Size = UDim2.new(0,33,0,33)
				hintLabel.AnchorPoint = Vector2.new(0.0,0.5)
			else
				hintLabel.AnchorPoint = Vector2.new(0.5,0.5)
				hintLabel.Size = UDim2.new(0,50,0,50)
				hintLabel.Position = UDim2.new(0.15,0,0.475,0)
			end
		end

		if isTenFootInterface then
			this[textName].FontSize = Enum.FontSize.Size36
		end

		UserInputService.InputBegan:connect(function(inputObject)

			if inputObject.UserInputType == Enum.UserInputType.Gamepad1 or inputObject.UserInputType == Enum.UserInputType.Gamepad2 or
				inputObject.UserInputType == Enum.UserInputType.Gamepad3 or inputObject.UserInputType == Enum.UserInputType.Gamepad4 then
				if hintLabel then
					hintLabel.Image = gamepadImage
					-- if isTenFootInterface then
					-- 	hintLabel.Size = UDim2.new(0,90,0,90)
					-- 	hintLabel.Position = UDim2.new(0,10,0.5,-45)
					-- else
					-- 	hintLabel.Size = UDim2.new(0,60,0,60)
					-- 	hintLabel.Position = UDim2.new(0,10,0,5)
					-- end
				end
			elseif inputObject.UserInputType == Enum.UserInputType.Keyboard then
				if hintLabel then
					hintLabel.Image = keyboardImage
					-- hintLabel.Size = UDim2.new(0,48,0,48)
					-- hintLabel.Position = UDim2.new(0,10,0,8)
				end
			end
		end)

		local hotKeyFunc = function(contextName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				if GetFFlagFixResumeSourceAnalytics() then
					hotFunc()
				else
					clickFunc()
				end
			end
		end

		local hotKeyTable = {hotKeyFunc, hotkeys}
		this.BottomBarButtons[#this.BottomBarButtons + 1] = {buttonName, hotKeyTable}
	end

	local function addBottomBarButton(name, text, gamepadImage, keyboardImage, position, clickFunc, hotkeys, sizeOverride, forceHintButton)
		local buttonName = name .. "Button"
		local textName = name .. "Text"

		local size = sizeOverride or UDim2.new(0,260,0,70)
		if isTenFootInterface then
			size = if Theme.UIBloxThemeEnabled and GetFFlagFix10ftBottomButtons() then UDim2.new(0,320,0,BOTTOM_BUTTON_10FT_SIZE) else UDim2.new(0,320,0,120)
		end

		this[buttonName], this[textName] = utility:MakeStyledButton(name .. "Button", text, size, clickFunc, nil, this)

		this[buttonName].Position = position
		this[buttonName].Parent = this.BottomButtonFrame
		if isTenFootInterface then
			this[buttonName].ImageTransparency = 1
		end

		this[textName].FontSize = Enum.FontSize.Size24
		local hintLabel = nil

		if (not isTouchDevice) or forceHintButton then
			if FFlagUseNotificationsLocalization then
				this[textName].Size = UDim2.new(0.675,0,0.67,0)
				this[textName].Position = UDim2.new(0.275,0,0.125,0)
			else
				this[textName].Size = UDim2.new(0.75,0,0.9,0)
				this[textName].Position = UDim2.new(0.25,0,0,0)
			end
			local hintName = name .. "Hint"
			local image = ""
			if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) or platform == Enum.Platform.XBoxOne then
				image = fnOrValue(gamepadImage)
			else
				image = fnOrValue(keyboardImage)
			end

			hintLabel = utility:Create'ImageLabel'
			{
				Name = hintName,
				ZIndex = this.Shield.ZIndex + 2,
				BackgroundTransparency = 1,
				Image = image,
				Parent = this[buttonName]
			};

			hintLabel.AnchorPoint = Vector2.new(0.5,0.5)
			local imageSize = GetFFlagOldMenuNewIcons() and UDim2.fromOffset(50, 50) or UDim2.fromOffset(30, 40)
			hintLabel.Size = text == "" and imageSize or UDim2.new(0,50,0,50)
			hintLabel.Position = text == "" and UDim2.new(0.5,0,0.475,0) or UDim2.new(0.15,0,0.475,0)

		end

		if isTenFootInterface then
			this[textName].FontSize = Enum.FontSize.Size36
		end

		UserInputService.InputBegan:connect(function(inputObject)

			if inputObject.UserInputType == Enum.UserInputType.Gamepad1 or inputObject.UserInputType == Enum.UserInputType.Gamepad2 or
				inputObject.UserInputType == Enum.UserInputType.Gamepad3 or inputObject.UserInputType == Enum.UserInputType.Gamepad4 then
				if hintLabel then
					-- We use `fnOrValue` here so that gamepadImage can change after "addBottomBarButton" has been called.
					-- Otherwise if we change the image after the fact, it would change to the initial image whenever the user presses
					-- a key or button.
					hintLabel.Image = fnOrValue(gamepadImage)
				end
			elseif inputObject.UserInputType == Enum.UserInputType.Keyboard then
				if hintLabel then
					hintLabel.Image = fnOrValue(keyboardImage)
				end
			end
		end)

		local hotKeyFunc = function(contextName, inputState, inputObject)
			if inputState == Enum.UserInputState.Begin then
				clickFunc()
			end
		end

		local hotKeyTable = {hotKeyFunc, hotkeys}
		this.BottomBarButtons[#this.BottomBarButtons + 1] = {buttonName, hotKeyTable}
	end

	local buttonImageAppend = ""

	if isTenFootInterface then
		buttonImageAppend = "@2x"
	end

	local buttonB = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB" .. buttonImageAppend .. ".png"
	local buttonX = "rbxasset://textures/ui/Controls/DesignSystem/ButtonX" .. buttonImageAppend .. ".png"
	local buttonY = "rbxasset://textures/ui/Controls/DesignSystem/ButtonY" .. buttonImageAppend .. ".png"

	local function appendMicButton()

		if Theme.UseIconButtons then
			if GetFFlagMuteButtonRaceConditionFix() and this.BottomButtonFrame:FindFirstChild("MuteButtonButtonIcon", true) then
				return
			end
		else
			if GetFFlagMuteButtonRaceConditionFix() and this.BottomButtonFrame:FindFirstChild("MuteButtonHint", true) then
				return
			end
		end

		if Theme.UseIconButtons then
			addBottomBarIconButton("MuteButton", nil, "", buttonB, pollImage, UDim2.new(0.5, isTenFootInterface and 300 or 330, 0.5,-25),
				function ()
					VoiceChatServiceManager:ToggleMic("InGameMenu")
					if voiceAnalytics then
						voiceAnalytics:onToggleMuteSelf(this.isMuted)
					end
				end, {})
			updateIcon()
		else
			addBottomBarButton("MuteButton", "", buttonB, pollImage, UDim2.new(0.5, isTenFootInterface and 300 or 330, 0.5,-25),
				function ()
					VoiceChatServiceManager:ToggleMic("InGameMenu")
				end, {}, UDim2.new(0,Theme.LargeButtonHeight,0,Theme.LargeButtonHeight),
				--[[forceHintButton = ]] true
			)
		end

		if not GetFFlagMuteButtonRaceConditionFix() then
			VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
				updateIcon()
			end)

			if GetFFlagPlayerListAnimateMic() then
				local renderStepName = 'settings-hub-renderstep'
				this.SettingsShowSignal:connect(function(isOpen)
					local frame = 0
					local renderSteppedConnected = false
					if isOpen and not renderSteppedConnected then
						renderSteppedConnected = true
						RunService:BindToRenderStep(renderStepName, Enum.RenderPriority.Last.Value, function()
							frame = frame + 1
							-- This looks a little less flickery if we only do it once every 3 frames
							if frame % 3 == 0 then
								updateIcon()
							end
						end)
					elseif renderSteppedConnected then
						renderSteppedConnected = false
						RunService:UnbindFromRenderStep(renderStepName)
					end

					if GetFFlagVoiceRecordingIndicatorsEnabled() then
						if isOpen then
							this.lastVoiceRecordingIndicatorTextUpdated = tick()
							this.voiceRecordingIndicatorTextMotor:setGoal(Otter.instant(0))
						end
					end
				end)
			end
		end
	end

	local function addMuteButtonToBar()
		if ChromeEnabled then
			return
		end
		local buttonSize = UDim2.new(0,235,0,Theme.LargeButtonHeight)
		local buttonOffset = -27.5
		appendMicButton()
		updateButtonPosition("LeaveGame", UDim2.new(0.5,(isTenFootInterface and -160 or -130) + buttonOffset,0.5,-25), buttonSize)
		updateButtonPosition("ResetCharacter", UDim2.new(0.5,(isTenFootInterface and -550 or -400),0.5,-25), buttonSize)
		updateButtonPosition("Resume", UDim2.new(0.5, (isTenFootInterface and 200 or 140) + buttonOffset * 2, 0.5,-25), buttonSize)
	end

	local voiceChatServiceConnected = false
	local voiceEnabled = false
	local function setupVoiceListeners()
		if game:GetEngineFeature("VoiceChatSupported")
			and not voiceChatServiceConnected
		then
			voiceChatServiceConnected = true
			VoiceChatServiceManager:asyncInit():andThen(function()
				voiceEnabled = true
				if GetFFlagVoiceRecordingIndicatorsEnabled() then
					this.VoiceRecordingText.Visible = true
					local VCS = VoiceChatServiceManager:getService()
					VCS.StateChanged:Connect(function(_oldState, newState)
						if newState == (Enum :: any).VoiceChatState.Ended then
							this.VoiceRecordingText.Visible = false
							voiceEnabled = false
							hideVoiceUx()
						elseif newState == (Enum :: any).VoiceChatState.Joined then
							-- If voice has been turned off, but now rejoined
							if voiceEnabled == false then
								addMuteButtonToBar()
							end
							this.VoiceRecordingText.Visible = true
						end
					end)
				end
				VoiceChatServiceManager:SetupParticipantListeners()
				addMuteButtonToBar()
				if GetFFlagMuteButtonRaceConditionFix() then
					VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
						updateIcon()
						if GetFFlagVoiceRecordingIndicatorsEnabled() then
							this.isMuted = muted
							this.lastVoiceRecordingIndicatorTextUpdated = tick()
							this.voiceRecordingIndicatorTextMotor:setGoal(Otter.instant(0))
							if this.isMuted then
								this.VoiceRecordingText.Text = tryTranslate("InGame.CommonUI.Label.MicOff", "Mic Off")
							else
								this.VoiceRecordingText.Text = tryTranslate("InGame.CommonUI.Label.MicOnRecording", "Mic On (recording audio)")
							end
						end
					end)

					if GetFFlagPlayerListAnimateMic() then
						local renderStepName = 'settings-hub-renderstep'
						this.SettingsShowSignal:connect(function(isOpen)
							local frame = 0
							local renderSteppedConnected = false
							if isOpen and not renderSteppedConnected then
								renderSteppedConnected = true
								RunService:BindToRenderStep(renderStepName, Enum.RenderPriority.Last.Value, function()
									frame = frame + 1
									-- This looks a little less flickery if we only do it once every 3 frames
									if frame % 3 == 0 then
										updateIcon()
									end
								end)
							elseif renderSteppedConnected then
								renderSteppedConnected = false
								RunService:UnbindFromRenderStep(renderStepName)
							end

							if GetFFlagVoiceRecordingIndicatorsEnabled() then
								if isOpen then
									this.lastVoiceRecordingIndicatorTextUpdated = tick()
									this.voiceRecordingIndicatorTextMotor:setGoal(Otter.instant(0))
								end
							end
						end)
					end
				end
			end):catch(function(err)
				if GetFFlagVoiceChatUILogging() then
					log:warning("Failed to init VoiceChatServiceManager {}", err)
				end
			end)
		end
	end

	if not FFlagSettingsHubRaceConditionFix then
		setupVoiceListeners()
	end

	local resetEnabled = true
	local function setResetEnabled(value)
		resetEnabled = value
		if this.ResetCharacterButton then
			this.ResetCharacterButton.Selectable = value
			this.ResetCharacterButton.Active = value
			this.ResetCharacterButton.Enabled.Value = value
			local resetHint = this.ResetCharacterButton:FindFirstChild("ResetCharacterHint")
			if resetHint then
				resetHint.ImageColor3 = (value and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100))
			end
			local resetButtonText = this.ResetCharacterButton:FindFirstChild("ResetCharacterButtonTextLabel")
			if resetButtonText then
				resetButtonText.TextColor3 = (value and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100))
			end
		end
	end

	local customCallback = nil
	function this:GetRespawnBehaviour()
		return resetEnabled, customCallback
	end

	this.RespawnBehaviourChangedEvent = Instance.new("BindableEvent")

	StarterGui:RegisterSetCore("ResetButtonCallback", function(callback)
		local isBindableEvent = typeof(callback) == "Instance" and callback:IsA("BindableEvent")
		if isBindableEvent or type(callback) == "boolean" then
			this.ResetCharacterPage:SetResetCallback(callback)
		else
			warn("ResetButtonCallback must be set to a BindableEvent or a boolean")
		end
		if callback == false then
			setResetEnabled(false)
		elseif not resetEnabled and (isBindableEvent or callback == true) then
			setResetEnabled(true)
		end
		if isBindableEvent then
			customCallback = callback
		end
		this.RespawnBehaviourChangedEvent:Fire(resetEnabled, customCallback)
	end)

	local setVisibilityInternal = nil

	local function createPermissionsButtons(shouldFillScreen)
		return Roact.createElement(PermissionsButtons, {
			isTenFootInterface = isTenFootInterface,
			isPortrait = utility:IsPortrait(),
			isSmallTouchScreen = utility:IsSmallTouchScreen(),
			ZIndex = this.Shield.ZIndex,
			LayoutOrder = -1,
			shouldFillScreen = shouldFillScreen,
			selfViewOpen = this.selfViewOpen,
			useNewMenuTheme = Theme.UIBloxThemeEnabled,
		})
	end

	this.createBackgroundFadeGui = function()
		if not this.FullscreenGui then
			this.FullscreenGui = utility:Create("ScreenGui")
			{
				Name = "FSSettingsMenuBackground",
				ScreenInsets = Enum.ScreenInsets.None,
				ClipToDeviceSafeArea = false,
				DisplayOrder = RobloxGui.DisplayOrder - 1,
				Enabled = false,
				Parent = CoreGui,
			}
		end

		if not this.FullscreenBackgroundCover then
			this.FullscreenBackgroundCover = utility:Create("Frame")
			{
				Name = "BackgroundCover",
				Size = UDim2.fromScale(1, 1),
				Position = UDim2.fromScale(0, 0),
				BackgroundColor3 = SETTINGS_SHIELD_COLOR,
				BackgroundTransparency = 1,
				Visible = true,
				Active = true,
				Parent = this.FullscreenGui,
			}
		end
	end

	local function createGui()
		local PageViewSizeReducer = 0
		if utility:IsSmallTouchScreen() then
			PageViewSizeReducer = 5
		end

		this.ClippingShield = utility:Create'Frame'
		{
			Name = "SettingsClippingShield",
			Size = SETTINGS_SHIELD_SIZE,
			Position = SETTINGS_SHIELD_ACTIVE_POSITION,
			BorderSizePixel = 0,
			ClipsDescendants = true,
			BackgroundTransparency = 1,
			Visible = true,
			ZIndex = SETTINGS_BASE_ZINDEX,
			Parent = RobloxGui
		};


		local ShieldInstanceType = "Frame"
		if Theme.UIBloxThemeEnabled then
			ShieldInstanceType = "ImageButton"
		end

		this.CanvasGroup = utility:Create("CanvasGroup")
		{
			Name = "CanvasGroup",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			GroupTransparency = 0,
			Parent = this.ClippingShield
		}

		this.Shield = utility:Create(ShieldInstanceType)
		{
			Name = "SettingsShield",
			Size = UDim2.new(1,0,1,0),
			Position = SETTINGS_SHIELD_INACTIVE_POSITION,
			BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
			BackgroundColor3 = SETTINGS_SHIELD_COLOR,
			BorderSizePixel = 0,
			Visible = false,
			Active = true,
			ZIndex = SETTINGS_BASE_ZINDEX,
			Parent = this.ClippingShield
		};
		this.VRShield = utility:Create("Frame") {
			Name = "VRBackground",
			Parent = this.Shield,

			BackgroundColor3 = SETTINGS_SHIELD_COLOR,
			BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
			Position = UDim2.new(0, -4, 0, 24),
			Size = UDim2.new(1, 8, 1, -40),
			BorderSizePixel = 0,

			Visible = false
		}

		local canGetCoreScriptVersion = game:GetEngineFeature("CoreScriptVersionEnabled")

		if canGetCoreScriptVersion then
			this.VersionContainer = utility:Create("ScrollingFrame") {
				Name = "VersionContainer",
				Parent = this.Shield,

				CanvasSize = UDim2.new(0, 0, 0, VERSION_BAR_HEIGHT),
				BackgroundColor3 = SETTINGS_SHIELD_COLOR,
				BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, VERSION_BAR_HEIGHT),
				AnchorPoint = Vector2.new(0,1),
				BorderSizePixel = 0,
				AutoLocalize = false,
				ScrollingDirection = Enum.ScrollingDirection.X,
				ScrollBarThickness = 0,

				ZIndex = 5,

				Visible = false
			}
		else
			this.VersionContainer = utility:Create("Frame") {
				Name = "VersionContainer",
				Parent = this.Shield,

				BackgroundColor3 = SETTINGS_SHIELD_COLOR,
				BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
				Position = UDim2.new(0, 0, 1, 0),
				Size = UDim2.new(1, 0, 0, VERSION_BAR_HEIGHT),
				AnchorPoint = Vector2.new(0,1),
				BorderSizePixel = 0,
				AutoLocalize = false,

				ZIndex = 5,

				Visible = false
			}
		end

		local _versionContainerLayout = utility:Create("UIListLayout") {
			Name = "VersionContainer",
			Parent = this.VersionContainer,

			Padding = UDim.new(0,6),
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder
		}

		local function addSizeToLabel(label)
			local marginSize = 6
			local defaultSize = UDim2.new(0.2, -6, 1, 0)
			label.Size = canGetCoreScriptVersion and UDim2.new(0, label.TextBounds.X + marginSize, 0, VERSION_BAR_HEIGHT) or defaultSize
		end

		this.ServerVersionLabel = utility:Create("TextLabel") {
			Name = "ServerVersionLabel",
			Parent = this.VersionContainer,
			LayoutOrder = 2,
			BackgroundTransparency = 1,
			TextColor3 = Color3.new(1,1,1),
			TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
			Text = "Server Version: ...",
			Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 5
		}
		spawn(function()
			local serverVersionString = "Server Version: "
			if shouldTryLocalizeVersionLabels then
				serverVersionString = tryTranslate("InGame.HelpMenu.Label.ServerVersion", "Server Version: ")
			end
			this.ServerVersionLabel.Text = serverVersionString..GetServerVersionBlocking()
			addSizeToLabel(this.ServerVersionLabel)
			this.ServerVersionLabel.TextScaled = not (canGetCoreScriptVersion or this.ServerVersionLabel.TextFits)
		end)

		local clientVersionString = "Client Version: "
		if shouldTryLocalizeVersionLabels then
			clientVersionString = tryTranslate("InGame.HelpMenu.Label.ClientVersion", "Client Version: ")
		end

		local robloxVersion = RunService:GetRobloxVersion()
		local success, result = pcall(function()
			return RunService.ClientGitHash
		end)

		if success then
			robloxVersion = string.format("%s (%.6s)", robloxVersion, result)
		end

		this.ClientVersionLabel = utility:Create("TextLabel") {
			Name = "ClientVersionLabel",
			Parent = this.VersionContainer,
			LayoutOrder = 1,
			BackgroundTransparency = 1,
			TextColor3 = Color3.new(1,1,1),
			TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
			Text = clientVersionString..robloxVersion,
			Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 5
		}
		addSizeToLabel(this.ClientVersionLabel)
		this.ClientVersionLabel.TextScaled = not (canGetCoreScriptVersion or this.ClientVersionLabel.TextFits)

		this.PlaceVersionLabel = utility:Create("TextLabel") {
			Name = "PlaceVersionLabel",
			Parent = this.VersionContainer,
			BackgroundTransparency = 1,
			LayoutOrder = 3,
			TextColor3 = Color3.new(1, 1, 1),
			TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
			Text = "Place Version: ...",
			Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 5,
		}
		local function setPlaceVersionText()
			local placeVersionString = "Place Version: "
			if shouldTryLocalizeVersionLabels then
				placeVersionString = tryTranslate("InGame.HelpMenu.Label.PlaceVersion", "Place Version: ")
			end
			this.PlaceVersionLabel.Text = placeVersionString..GetPlaceVersionText()
			addSizeToLabel(this.PlaceVersionLabel)
			this.PlaceVersionLabel.TextScaled = not (canGetCoreScriptVersion or this.PlaceVersionLabel.TextFits)
		end
		game:GetPropertyChangedSignal("PlaceVersion"):Connect(setPlaceVersionText)
		spawn(setPlaceVersionText)

		local shouldShowEnvLabel = not PolicyService:IsSubjectToChinaPolicies()

		if shouldShowEnvLabel then
			this.EnvironmentLabel = utility:Create("TextLabel") {
				Name = "EnvironmentLabel",
				Parent = this.VersionContainer,
				AnchorPoint = Vector2.new(0.5,0),
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1,1,1),
				LayoutOrder = 4,
				TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
				Text = baseUrl,
				Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				ZIndex = 5,
				Visible = isTestEnvironment
			}
			addSizeToLabel(this.EnvironmentLabel)
			this.EnvironmentLabel.TextScaled = not (canGetCoreScriptVersion or this.EnvironmentLabel.TextFits)
		end

		if game:GetEngineFeature("GetPlaySessionIdEnabled") then
			local playSessionId = game:GetPlaySessionId()
			if playSessionId ~= '' then
				local playSessionIdString = "PlaySessionId: " .. playSessionId
				if RobloxTranslator then
					playSessionIdString = RobloxTranslator:FormatByKey("InGame.HelpMenu.Label.PlaySessionId", { RBX_STR = playSessionId })
				end
				this.PlaySessionIdLabel = utility:Create("TextLabel") {
					Name = "PlaySessionIdLabel",
					Parent = this.VersionContainer,
					BackgroundTransparency = 1,
					LayoutOrder = 5,
					TextColor3 = Color3.new(1, 1, 1),
					TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
					Text = playSessionIdString,
					Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
					TextXAlignment = Enum.TextXAlignment.Center,
					TextYAlignment = Enum.TextYAlignment.Center,
					ZIndex = 5,
				}
				addSizeToLabel(this.PlaySessionIdLabel)
				this.PlaySessionIdLabel.TextScaled = not (this.PlaySessionIdLabel.TextFits)
			end
		end

		-- This check relies on the fact that Archivable is false on the default playerscripts we
		-- insert but if a developer has overriden them Archivable will be true. This might be incorrect
		-- if a developer has code in their game to make things UnArchivable though.
		local function getOverridesPlayerScripts()
			local starterPlayerScripts = StarterPlayer:WaitForChild("StarterPlayerScripts")
			local playerScriptLoader = starterPlayerScripts:FindFirstChild("PlayerScriptsLoader")
			local playerModule = starterPlayerScripts:FindFirstChild("PlayerModule")
			if playerModule and playerScriptLoader then
				if not playerModule.Archivable then
					if playerScriptLoader.Archivable then
						if shouldTryLocalizeVersionLabels then
							return tryTranslate("InGame.CommonUI.Label.PossiblyCustom", "Possibly Custom")
						else
							return "Possibly Custom"
						end
					else
						if shouldTryLocalizeVersionLabels then
							return tryTranslate("InGame.CommonUI.Label.Default", "Default")
						else
							return "Default"
						end
					end
				end
			end
			local cameraScript = starterPlayerScripts:FindFirstChild("CameraScript")
			local controlScript = starterPlayerScripts:FindFirstChild("ControlScript")
			if cameraScript or controlScript then
				if shouldTryLocalizeVersionLabels then
					return tryTranslate("InGame.CommonUI.Label.CustomOld", "Custom Old")
				else
					return "Custom Old"
				end
			end
			if shouldTryLocalizeVersionLabels then
				return tryTranslate("InGame.CommonUI.Label.Custom", "Custom")
			else
				return "Custom"
			end
		end

		this.OverridesPlayerScriptsLabel = utility:Create("TextLabel") {
			Name = "OverridesPlayerScriptsLabel",
			Parent = this.VersionContainer,
			AnchorPoint = Vector2.new(0.5,0),
			BackgroundTransparency = 1,
			TextColor3 = Color3.new(1,1,1),
			LayoutOrder = 5,
			TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
			Text = "PlayerScripts: ",
			Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
			TextXAlignment = Enum.TextXAlignment.Center,
			TextYAlignment = Enum.TextYAlignment.Center,
			ZIndex = 5,
			Visible = false
		}

		spawn(function()
			local playerPermissionsModule = require(RobloxGui.Modules.PlayerPermissionsModule)
			if not Players.LocalPlayer then
				Players:GetPropertyChangedSignal("LocalPlayer"):Wait()
			end
			local playerScriptsString = "PlayerScripts: "
			if shouldTryLocalizeVersionLabels then
				playerScriptsString = tryTranslate("InGame.HelpMenu.Label.PlayerScripts", "PlayerScripts: ")
			end

			local playerScriptStatus = getOverridesPlayerScripts()

			AnalyticsService:setRBXEventStream(Constants.AnalyticsTargetName, "player_scripts_status", "player_scripts_status_action", {
				defaultPlayerScripts = playerScriptStatus == "Default",
				placeID = tostring(game.PlaceId),
				rawValue = if GetFFlagNewEventIngestPlayerScriptsDimensions() then playerScriptStatus else nil,
				context = if GetFFlagNewEventIngestPlayerScriptsDimensions() then "IGMv1"else nil,
			})

			this.OverridesPlayerScriptsLabel.Text = playerScriptsString .. playerScriptStatus
			this.OverridesPlayerScriptsLabel.Visible = isTestEnvironment or playerPermissionsModule.IsPlayerAdminAsync(Players.LocalPlayer)
			addSizeToLabel(this.OverridesPlayerScriptsLabel)
			this.OverridesPlayerScriptsLabel.TextScaled = not (canGetCoreScriptVersion or this.OverridesPlayerScriptsLabel.TextFits)

		end)

		if canGetCoreScriptVersion then
			local coreScriptVersionString = "Client CoreScript Version: "
			if shouldTryLocalizeVersionLabels then
				coreScriptVersionString = tryTranslate("InGame.HelpMenu.Label.ClientCoreScriptVersion", "Client CoreScript Version: ")
			end
			this.CoreScriptVersionLabel = utility:Create("TextLabel") {
				Name = "CoreScriptVersionLabel",
				Parent = this.VersionContainer,
				LayoutOrder = 6,
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1, 1, 1),
				TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
				Text = coreScriptVersionString..RunService:GetCoreScriptVersion(),
				Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				ZIndex = 5
			}
			addSizeToLabel(this.CoreScriptVersionLabel)

			local frame = this.VersionContainer
			_versionContainerLayout:GetPropertyChangedSignal("AbsoluteContentSize"):Connect(function()
				frame.CanvasSize = UDim2.new(0,_versionContainerLayout.AbsoluteContentSize.X, 0, VERSION_BAR_HEIGHT)
			end)
		end

		this.Modal = utility:Create'TextButton' -- Force unlocks the mouse, really need a way to do this via UIS
		{
			Name = 'Modal',
			BackgroundTransparency = 1,
			Position = UDim2.new(0, 0, 1, -1),
			Size = UDim2.new(1, 0, 1, 0),
			Modal = true,
			Text = '',
			Parent = this.Shield,
			Selectable = false
		}

		if Theme.EnableDarkenBackground then
			this.DarkenBackground = utility:Create("Frame")
			{
				Name = 'DarkenBackground',
				ZIndex = this.Shield.ZIndex-1,
				BackgroundTransparency = 1,
				BackgroundColor3 = Theme.color("DarkenBackground"),
				Size = UDim2.new(1,0,1,0),
				Parent = this.ClippingShield,
			}
		end

		local menuPos = Theme.MenuContainerPosition()
		this.MenuContainer = utility:Create(ShieldInstanceType)
		{
			Name = 'MenuContainer',
			ZIndex = this.Shield.ZIndex,
			BackgroundTransparency = Theme.transparency("MenuContainer", 1),
			BackgroundColor3 = Theme.color("MenuContainer"),
			Position = menuPos.Position,
			Size = menuPos.Size,
			AnchorPoint = menuPos.AnchorPoint,
			AutomaticSize = menuPos.AutomaticSize,
			Parent = this.Shield
		}
		this.MenuContainerPadding = utility:Create'UIPadding'
		{
			Parent = this.MenuContainer,
		}
		if not isTenFootInterface then
			local topCornerInset = GuiService:GetGuiInset()
			local paddingTop = topCornerInset.Y
			if FFlagAvatarChatCoreScriptSupport or (GetFFlagVoiceRecordingIndicatorsEnabled() and not NotchSupportExperiment.enabled()) then
				-- Audio/Video permissions bar takes up padding, but not voice recording indicator.
				paddingTop = 0
			end
			this.MenuContainerPadding.PaddingTop = UDim.new(0, paddingTop)
		end

		local menuParent = this.MenuContainer

		if Theme.UIBloxThemeEnabled then
			local pad = Theme.HubPadding()
			this.MenuContainer.AutoButtonColor = false
			this.MenuContainerPadding.PaddingLeft = pad.PaddingLeft
			this.MenuContainerPadding.PaddingRight = pad.PaddingRight
			this.MenuContainerPadding.PaddingBottom = pad.PaddingBottom
			this.MenuContainerPadding.PaddingTop = pad.PaddingTop

			utility:Create'UICorner'
			{
				CornerRadius = Theme.MenuContainerCornerRadius,
				Parent = this.MenuContainer,
			}

			if Theme.EnableVerticalBottomBar then

				this.MainColumn = utility:Create'Frame'
				{
					Name = 'MainColumn',
					BackgroundTransparency =1,
					Position = menuPos.Position,
					Size = menuPos.Size,
					AutomaticSize =Enum.AutomaticSize.XY,
					Parent = this.MenuContainer
				}

				menuParent = this.MainColumn

				this.VerticalMenuDivider = utility:Create'Frame'
				{
					Name = 'VerticalMenuDivider',
					BackgroundTransparency = Theme.transparency("Divider"),
					BackgroundColor3 = Theme.color("Divider"),
					Size = UDim2.new(0,1, 1, -100),
					Visible = true,
					Parent = this.MenuContainer
				}
				this.VerticalMenu = utility:Create'Frame'
				{
					Name = 'VerticalMenu',
					BackgroundTransparency =1,
					Size = UDim2.new(0, Theme.VerticalMenuWidth, 0, 100),
					Visible = false,
					Parent = this.MenuContainer
				}
				utility:Create'UIListLayout'
				{
					Name = "MenuListLayout",
					Padding = UDim.new(0, 10),
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Parent = this.VerticalMenu
				}

				this.MenuListLayout = utility:Create'UIListLayout'
				{
					Name = "MenuListLayout",
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Parent = this.MenuContainer
				}

			end

		end

		if FFlagAvatarChatCoreScriptSupport then
			-- Create the settings buttons for audio/camera permissions.
			if Theme.UIBloxThemeEnabled then
				this.permissionsButtonsRoot = Roact.mount(createPermissionsButtons(true), this.Shield, "PermissionsButtons")
			else
				this.permissionsButtonsRoot = Roact.mount(createPermissionsButtons(true), this.MenuContainer, "PermissionsButtons")
			end
		end

		this.MenuListLayout = utility:Create'UIListLayout'
		{
			Name = "MenuListLayout",
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = if Theme.UIBloxThemeEnabled then Enum.VerticalAlignment.Top else Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = menuParent
		}
		this.MenuAspectRatio = utility:Create'UIAspectRatioConstraint'
		{
			Name = 'MenuAspectRatio',
			AspectRatio = 800 / 600,
			AspectType = Enum.AspectType.ScaleWithParentSize,
			Parent = if Theme.UIBloxThemeEnabled then nil else menuParent
		}

		if Theme.UIBloxThemeEnabled then
			this.HubBar = utility:Create'ImageLabel'
			{
				Name = "HubBar",
				BackgroundColor3 = Theme.color("HubBarContainer"),
				BackgroundTransparency = Theme.transparency("HubBarContainerTransparency"),
				ZIndex = this.Shield.ZIndex + 1,
				BorderSizePixel = 0,
				AnchorPoint = Vector2.new(0.5, 0),
				LayoutOrder = 0,
				Parent = menuParent
			}
			utility:Create'Frame'
			{
				BackgroundColor3 = Theme.color("Divider"),
				BackgroundTransparency = Theme.transparency("Divider"),
				BorderSizePixel = 0,
				Size = UDim2.new(1,0,0,1),
				Position = UDim2.new(0,0,1,0),
				AnchorPoint = Vector2.new(0,1),
				Parent = this.HubBar,
			}

		else
			this.HubBar = utility:Create'ImageLabel'
			{
				Name = "HubBar",
				ZIndex = this.Shield.ZIndex + 1,
				BorderSizePixel = 0,
				BackgroundColor3 = Color3.new(78/255, 84/255, 96/255),
				BackgroundTransparency = 1,
				Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuBackground.png",
				ScaleType = Enum.ScaleType.Slice,
				SliceCenter = Rect.new(4,4,6,6),
				AnchorPoint = Vector2.new(0.5, 0),
				LayoutOrder = 0,
				Parent = menuParent
			}
		end

		this.HubBarListLayout = utility:Create'UIListLayout'
		{
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = this.HubBar
		}

		if GetFFlagEnableTeleportBackButton() then
			this.BackBarRef = Roact.createRef()
			this.BackBar = Roact.createElement(RoactAppExperiment.Provider, {
				value = IXPService,
			}, {
				Roact.createElement(MenuBackButton,{BackBarRef=this.BackBarRef, HubBar=this.HubBar}),
			})
			Roact.mount(this.BackBar, menuParent, "BackBar")
		end

		if utility:IsSmallTouchScreen() then
			if Theme.UIBloxThemeEnabled then
				this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-100, 0, 50)
			else
				this.HubBar.Size = UDim2.new(1,-10,0,40)
			end
			this.HubBar.Position = UDim2.new(0.5,0,0,6)
		elseif isTenFootInterface then
			this.HubBar.Size = UDim2.new(0,1200,0,100)
			this.HubBar.Position = UDim2.new(0.5,0,0.1,0)
		else
			this.HubBar.Size = UDim2.new(0,800,0,60)
			this.HubBar.Position = UDim2.new(0.5,0,0.1,0)
		end

		this.VoiceRecordingIndicatorFrame = if GetFFlagVoiceRecordingIndicatorsEnabled() and not FFlagAvatarChatCoreScriptSupport then utility:Create'Frame'
			{
				Size = if GetFFlagRightAlignMicText() and ChromeEnabled then UDim2.new(1, 0, 0, 100) else UDim2.fromOffset(0, 100),
				Position = UDim2.new(0,0,0,0),
				Parent = this.HubBar,
				BackgroundTransparency = 1,
			} else nil

		this.VoiceRecordingText = if GetFFlagVoiceRecordingIndicatorsEnabled() then utility:Create'TextLabel'
			{
				Parent = this.VoiceRecordingIndicatorFrame,
				Text = "",
				Visible = false,
				Position = UDim2.new(0,60,0,0),
				TextSize = 12,
				Font = AppFonts.default:getMedium(),
				Size = UDim2.fromScale(1, 1),
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				TextColor3 = Color3.fromRGB(255,255,255),
				BackgroundTransparency = 1,
			} else nil

		if GetFFlagVoiceRecordingIndicatorsEnabled() then
			if utility:IsSmallTouchScreen() then
				this.VoiceRecordingText.Size = UDim2.fromScale(1, 1)
				this.VoiceRecordingText.AnchorPoint = Vector2.new(0,0)
				if GetFFlagRightAlignMicText() and ChromeEnabled then
					this.VoiceRecordingText.TextXAlignment = Enum.TextXAlignment.Right
					this.VoiceRecordingText.Position = UDim2.new(0,0,0,-60)
				else
					this.VoiceRecordingText.Position = UDim2.new(0,60,0,-60)
				end
			elseif isTenFootInterface then
				this.VoiceRecordingText.AnchorPoint = Vector2.new(0, 1)
				if GetFFlagRightAlignMicText() and ChromeEnabled then
					this.VoiceRecordingText.TextXAlignment = Enum.TextXAlignment.Right
					this.VoiceRecordingText.Size = UDim2.new(1,0,0,100)
					this.VoiceRecordingText.Position = UDim2.new(0,0,0.1,0)
				else
					this.VoiceRecordingText.Size = UDim2.new(0,1200,0,100)
					this.VoiceRecordingText.Position = UDim2.new(0.5,0,0.1,0)
				end
			else
				this.VoiceRecordingText.AnchorPoint = Vector2.new(0, 1)
				if GetFFlagRightAlignMicText() and ChromeEnabled then
					this.VoiceRecordingText.TextXAlignment = Enum.TextXAlignment.Right
					this.VoiceRecordingText.Size = UDim2.new(1, 0, 0, 60)
					this.VoiceRecordingText.Position = UDim2.new(0,0,0.1,0)
				else
					this.VoiceRecordingText.Size = UDim2.new(0, 800, 0, 60)
					this.VoiceRecordingText.Position = UDim2.new(0.5,0,0.1,0)
				end
			end

			this.voiceRecordingIndicatorTextMotor = Otter.createSingleMotor(0)
			this.voiceRecordingIndicatorTextMotor:onStep(function(value)
				this.VoiceRecordingText.TextTransparency = value
			end)

			spawn(function()
				RunService:BindToRenderStep("VoiceRecordingIndicator", 1, function()
					if this.isMuted ~= nil and this.lastVoiceRecordingIndicatorTextUpdated ~= nil then
						local timeDiff = tick() - this.lastVoiceRecordingIndicatorTextUpdated
						if timeDiff >= VOICE_RECORDING_INDICATOR_FADE_TIME and this.isMuted then
							this.voiceRecordingIndicatorTextMotor:setGoal(Otter.spring(1, SPRING_PARAMS))
							this.voiceRecordingIndicatorTextMotor:start()
						end
					end
				end)
			end)
		end

		this.PageViewClipper = utility:Create'Frame'
		{
			Name = 'PageViewClipper',
			BackgroundTransparency = 1,
			Size = UDim2.new(this.HubBar.Size.X.Scale,this.HubBar.Size.X.Offset,
				1, -this.HubBar.Size.Y.Offset - this.HubBar.Position.Y.Offset - PageViewSizeReducer),
			Position = UDim2.new(this.HubBar.Position.X.Scale, this.HubBar.Position.X.Offset,
				this.HubBar.Position.Y.Scale, this.HubBar.Position.Y.Offset + this.HubBar.Size.Y.Offset + 1),
			AnchorPoint = Vector2.new(0.5, 0),
			ClipsDescendants = true,
			LayoutOrder = 1,
			Parent = menuParent,

			utility:Create'ImageButton'{
				Name = 'InputCapture',
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = ''
			}
		}

		this.PageView = utility:Create'ScrollingFrame'
		{
			Name = "PageView",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = if Theme.UIBloxThemeEnabled then UDim2.new(0.5, 0, 0.5, 2) else UDim2.new(0.5, 0, 0.5, 0),
			Size = UDim2.new(1, 0, 1, -20),
			CanvasSize = UDim2.new(1, 0, 1, 0),
			ZIndex = this.Shield.ZIndex,
			ScrollingDirection = Enum.ScrollingDirection.Y,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Selectable = false,
			ScrollBarThickness = Theme.DefaultScrollBarThickness,
			Parent = this.PageViewClipper,
		};
		this.PageView.VerticalScrollBarInset = Enum.ScrollBarInset.ScrollBar

		this.lastPageViewCanvasPosition = this.PageView.CanvasPosition
		this.handelPageViewScroll = function()
			local lastPosY = math.clamp(this.lastPageViewCanvasPosition.Y, 0, this.PageView.MaxCanvasPosition.Y)
			local newPosY = math.clamp(this.PageView.CanvasPosition.Y, 0, this.PageView.MaxCanvasPosition.Y)
			local diffY = lastPosY - newPosY
			if math.abs(diffY) > 5 then
				if diffY < 0 then
					-- User is scrolling down
					this:animateOutBottomBar()
				else
					-- User is scrolling up
					this:animateInBottomBar()
				end
				this.lastPageViewCanvasPosition = Vector2.new(this.PageView.CanvasPosition.x, newPosY)
			end
		end

		this.pageViewScrollChangeCon = nil
		if Theme.UseStickyBar() then
			this.PageView.AutomaticCanvasSize = Enum.AutomaticSize.Y
			if utility:IsPortrait() == false then
				this.defaultPageViewClipperSize = nil
				this.showStickyBottomBar = true
				this.pageViewScrollChangeCon = this.PageView:GetPropertyChangedSignal("CanvasPosition"):connect(this.handelPageViewScroll)
			end
		end

		this.PageViewInnerFrame = utility:Create'Frame'
		{
			Name = "PageViewInnerFrame",
			Position = UDim2.new(0, 0, 0, 0),
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = this.Shield.ZIndex,
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Selectable = false,
			Parent = this.PageView,
			LayoutOrder = 1,
		};
		if Theme.UIBloxThemeEnabled then
			utility:Create'UIPadding'
			{
				PaddingTop = UDim.new(0, 5),
				Parent = this.PageViewInnerFrame,
			}
		end

		this.InnerCanvasGroupShow = utility:Create("CanvasGroup")
		{
			Name = "InnerCanvasGroupShow",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			GroupTransparency = 0,
			Parent = this.PageViewInnerFrame
		}

		this.InnerCanvasGroupHide = utility:Create("CanvasGroup")
		{
			Name = "InnerCanvasGroupHide",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			GroupTransparency = 0,
			Parent = this.PageViewInnerFrame
		}

		if Theme.UseStickyBar() then
			this.PageView.AutomaticCanvasSize = Enum.AutomaticSize.Y
			utility:Create'UIListLayout'
			{
				FillDirection = Enum.FillDirection.Vertical,
				VerticalAlignment = Enum.VerticalAlignment.Top,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = this.PageView,
			}
			this.PageViewInnerFrame.AutomaticSize = Enum.AutomaticSize.Y
			this.PageViewInnerFrame.ClipsDescendants = false
		end

		if UserInputService.MouseEnabled then
			this.PageViewClipper.Size = UDim2.new(this.HubBar.Size.X.Scale,this.HubBar.Size.X.Offset,
				0.5, -(this.HubBar.Position.Y.Offset - this.HubBar.Size.Y.Offset))
		end

		this.BottomButtonFrame = utility:Create'Frame'
		{
			Name = "BottomButtonFrame",
			Size = this.HubBar.Size,
			Position = UDim2.new(0.5, -this.HubBar.Size.X.Offset/2, 1-this.HubBar.Position.Y.Scale-this.HubBar.Size.Y.Scale, -this.HubBar.Position.Y.Offset-this.HubBar.Size.Y.Offset),
			ZIndex = this.Shield.ZIndex + 1,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Parent = menuParent
		};

		if Theme.UIBloxThemeEnabled then
			this.BottomButtonFrame.Size = UDim2.new(1,0, 0, 80)
			this.MenuListLayout = utility:Create'UIListLayout'
			{
				Padding = UDim.new(0, 12),
				FillDirection = Enum.FillDirection.Horizontal,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = this.BottomButtonFrame
			}

		end

		local leaveGameFunc = function()
			if FFlagPreventHiddenSwitchPage and this:GetVisibility() == false then
				return
			end

			this:AddToMenuStack(this.Pages.CurrentPage)
			this.HubBar.Visible = false
			removeBottomBarBindings()
			this:SwitchToPage(this.LeaveGamePage, nil, 1, true)
		end

		local resumeFunc = function(source)
			setVisibilityInternal(false)
			AnalyticsService:SetRBXEventStream(
				Constants.AnalyticsTargetName,
				Constants.AnalyticsResumeGameName,
				Constants.AnalyticsMenuActionName,
				{ source = if Theme.UIBloxThemeEnabled then
					if GetFFlagFixResumeSourceAnalytics() then source else Constants.AnalyticsResumeShieldSource
				else Constants.AnalyticsResumeButtonSource }
			)
		end

		if Theme.UIBloxThemeEnabled then
			this.Shield.Activated:Connect(if GetFFlagFixResumeSourceAnalytics() then
				function() resumeFunc(Constants.AnalyticsResumeShieldSource) end
				else resumeFunc
			)
		end

		local leaveGameText = "Leave"

		if InExperienceCapabilities.canNavigateHome then
			if Theme.UseIconButtons then
				addBottomBarIconButton("LeaveGame", "icons/actions/leave", leaveGameText, buttonX,
					"rbxasset://textures/ui/Settings/Help/LeaveIcon.png", UDim2.new(0.5,isTenFootInterface and -160 or -130,0.5,-25),
					leaveGameFunc, {Enum.KeyCode.L, Enum.KeyCode.ButtonX}
				)
			else
				addBottomBarButtonOld("LeaveGame", leaveGameText, buttonX,
					"rbxasset://textures/ui/Settings/Help/LeaveIcon.png", UDim2.new(0.5,isTenFootInterface and -160 or -130,0.5,-25),
					leaveGameFunc, {Enum.KeyCode.L, Enum.KeyCode.ButtonX}, leaveGameFunc
				)
			end
		end


		local resetCharFunc = function()
			if resetEnabled then
				this:AddToMenuStack(this.Pages.CurrentPage)
				this.HubBar.Visible = false
				removeBottomBarBindings()
				this:SwitchToPage(this.ResetCharacterPage, nil, 1, true)
			end
		end

		if Theme.UseIconButtons then
			addBottomBarIconButton("ResetCharacter", "icons/actions/respawn", "Reset Character", buttonY,
				"rbxasset://textures/ui/Settings/Help/ResetIcon.png", UDim2.new(0.5,isTenFootInterface and -550 or -400,0.5,-25),
				resetCharFunc, {Enum.KeyCode.R, Enum.KeyCode.ButtonY}
			)
		else
			addBottomBarButtonOld("ResetCharacter", "Reset Character", buttonY,
				"rbxasset://textures/ui/Settings/Help/ResetIcon.png", UDim2.new(0.5,isTenFootInterface and -550 or -400,0.5,-25),
				resetCharFunc, {Enum.KeyCode.R, Enum.KeyCode.ButtonY}, resetCharFunc
			)
		end

		local resumeGameText = "Resume"
		local resumeButtonFunc = if GetFFlagFixResumeSourceAnalytics() then
			function() resumeFunc(Constants.AnalyticsResumeButtonSource) end
			else resumeFunc
		local resumeHotkeyFunc = if GetFFlagFixResumeSourceAnalytics() then
			function() resumeFunc(Constants.AnalyticsResumeGamepadSource) end
			else nil
		addBottomBarButtonOld("Resume", resumeGameText, buttonB,
			"rbxasset://textures/ui/Settings/Help/EscapeIcon.png", UDim2.new(0.5,isTenFootInterface and 200 or 140,0.5,-25),
			resumeButtonFunc, {Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart}, resumeHotkeyFunc
		)

		if Theme.UIBloxThemeEnabled or isSubjectToDesktopPolicies() then
			if Theme.UIBloxThemeEnabled then
				this.HubBarContainer = utility:Create'ImageLabel'
				{
					Name = "HubBarContainer",
					ZIndex = this.Shield.ZIndex + 2,
					BorderSizePixel = 0,
					BackgroundColor3 = Theme.color("HubBarContainer"),
					BackgroundTransparency = Theme.transparency("HubBarContainerTransparency"),
					Size = if Theme.ShowHomeButton then UDim2.new(1, -70, 1, 0) else UDim2.new(1, 0, 1, 0),
					Position = if Theme.ShowHomeButton then UDim2.new(0, 70, 0, 0) else UDim2.new(0, 0, 0, 0),
					Parent = this.HubBar
				}
			else
				this.HubBarContainer = utility:Create'ImageLabel'
				{
					Name = "HubBarContainer",
					ZIndex = this.Shield.ZIndex + 2,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuBackground.png",
					ScaleType = Enum.ScaleType.Slice,
					SliceCenter = Rect.new(4, 4, 6, 6),
					Size = UDim2.new(1, -70, 1, 0),
					Position = UDim2.new(0, 70, 0, 0),
					Parent = this.HubBar
				}
			end

			this.HubBar.ImageTransparency = 1
			this.HubBarListLayout.Parent = this.HubBarContainer

			if Theme.ShowHomeButton then
				if Theme.UIBloxThemeEnabled then
					this.HubBarHomeButton = utility:Create'ImageButton'
					{
						Name = "HubBarHomeButton",
						ZIndex = this.Shield.ZIndex + 2,
						BorderSizePixel = 0,
						AutoButtonColor = false,
						BackgroundColor3 = Theme.color("HubBarHomeButton"),
						BackgroundTransparency = Theme.transparency("HubBarHomeButtonTransparency"),
						Size = UDim2.new(1, 0, 1, 0),
						Position = UDim2.new(0, 0, 0, 0),
						Parent = this.HubBar
					}
					utility:Create'UICorner'
					{
						CornerRadius = Theme.DefaultCornerRadius,
						Parent = this.HubBarHomeButton,
					}
				else
					this.HubBarHomeButton = utility:Create'ImageButton'
					{
						Name = "HubBarHomeButton",
						ZIndex = this.Shield.ZIndex + 2,
						BorderSizePixel = 0,
						BackgroundTransparency = 1,
						Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuBackground.png",
						ScaleType = Enum.ScaleType.Slice,
						SliceCenter = Rect.new(4, 4, 6, 6),
						Size = UDim2.new(1, 0, 1, 0),
						Position = UDim2.new(0, 0, 0, 0),
						Parent = this.HubBar
					}
				end
				this.HubBarHomeButtonAspectRatio = utility:Create'UIAspectRatioConstraint'
				{
					AspectRatio = 1,
					DominantAxis = Enum.DominantAxis.Height,
					Parent = this.HubBarHomeButton
				}
				this.HubBarHomeButtonIcon = utility:Create'ImageLabel'
				{
					Name = "HubBarHomeButtonIcon",
					ZIndex = this.Shield.ZIndex + 3,
					BorderSizePixel = 0,
					BackgroundTransparency = 1,
					Image = "rbxasset://textures/ui/Settings/MenuBarIcons/HomeTab.png",
					Size = UDim2.new(0.7,0,0.7,0),
					Position = UDim2.new(0.16,0,0.18,0),
					Parent = this.HubBarHomeButton
				}
				this.HubBarHomeButton:GetPropertyChangedSignal("AbsoluteSize"):Connect(function()
					local newWidth = this.HubBarHomeButton.AbsoluteSize.X + 10
					this.HubBarContainer.Size = UDim2.new(1, -newWidth, 1, 0)
					this.HubBarContainer.Position = UDim2.new(0, newWidth, 0, 0)
				end)
				this.HubBarHomeButton.MouseEnter:Connect(function()
					if Theme.UIBloxThemeEnabled then
						this.HubBarHomeButton.BackgroundColor3 = Theme.color("HubBarHomeButtonHover")
						this.HubBarHomeButton.BackgroundTransparency = Theme.transparency("HubBarHomeButtonTransparencyHover")
					else
						this.HubBarHomeButton.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuSelection@2x.png"
					end
				end)
				this.HubBarHomeButton.MouseLeave:Connect(function()
					if Theme.UIBloxThemeEnabled then
						this.HubBarHomeButton.BackgroundColor3 = Theme.color("HubBarHomeButton")
						this.HubBarHomeButton.BackgroundTransparency = Theme.transparency("HubBarHomeButtonTransparency")
					else
						this.HubBarHomeButton.Image = "rbxasset://textures/ui/Settings/MenuBarAssets/MenuBackground.png"
					end
				end)

				local leaveToHomeFunc = function()
					this:AddToMenuStack(this.Pages.CurrentPage)
					this.HubBar.Visible = false
					removeBottomBarBindings()
					this:SwitchToPage(this.LeaveGameToHomePage, nil, 1, true)
				end

				this.HubBarHomeButton.Activated:Connect(leaveToHomeFunc)
			end

		end

		if isSubjectToDesktopPolicies() then
			this.FullScreenTitleBar = SettingsFullScreenTitleBar.mount({}, this.Shield, "FullScreenTitleBar")
		end

		local function cameraViewportChanged()
			utility:FireOnResized()
		end

		local viewportSizeChangedConn = nil
		local function onWorkspaceChanged(prop)
			if prop == "CurrentCamera" then
				cameraViewportChanged()
				if viewportSizeChangedConn then viewportSizeChangedConn:disconnect() end
				viewportSizeChangedConn = (workspace.CurrentCamera :: Camera):GetPropertyChangedSignal("ViewportSize"):Connect(cameraViewportChanged)
			end
		end
		onWorkspaceChanged("CurrentCamera")
		-- This is here in the case that createGUI gets called After voice is done initializing
		if GetFFlagMuteButtonRaceConditionFix() and voiceEnabled then
			addMuteButtonToBar()
		end
		workspace.Changed:Connect(onWorkspaceChanged)
	end

	local function resizeBottomBarButtons()
		local bottomButtonFrameWidth = this.BottomButtonFrame.AbsoluteSize.X

		local numberOfButton = #this.BottomBarButtons
		if numberOfButton == 4 then
			bottomButtonFrameWidth = bottomButtonFrameWidth - 48 - 12
			numberOfButton = numberOfButton - 1
		end

		local maxButtonWidth = (bottomButtonFrameWidth - ((numberOfButton - 1) * 12) - 12) / numberOfButton
		for i = 1, #this.BottomBarButtons do
			local button = this.BottomBarButtons[i]
			local buttonName = button[1]

			if buttonName ~= "MuteButtonButton" then
				this[buttonName].Size = UDim2.fromOffset(maxButtonWidth, this[button[1]].Size.Y.Offset)
			end
		end
	end

	local function onScreenSizeChanged()
		local function getBackBarVisible()
			if not this.BackBarRef:getValue() then
				return false
			end
			return this.BackBarRef:getValue().Visible
		end

		local menuPos = Theme.MenuContainerPosition()
		local largestPageSize = 600
		local fullScreenSize = RobloxGui.AbsoluteSize.y
		local bufferSize = (1-0.95) * fullScreenSize
		local isPortrait = utility:IsPortrait()

		if isTenFootInterface then
			largestPageSize = 800
			bufferSize = 0.07 * fullScreenSize
		elseif utility:IsSmallTouchScreen() then
			bufferSize = math.min(10, (1-0.99) * fullScreenSize)
		end


		this.MenuContainer.Size = menuPos.Size
		if Theme.UIBloxThemeEnabled then
			this.MenuContainer.Position = menuPos.Position
			this.MenuContainer.AnchorPoint = menuPos.AnchorPoint
		end

		local barSize = this.HubBar.Size.Y.Offset
		local extraSpace = bufferSize*2+barSize*2
		local extraTopPadding = (GetFFlagEnableTeleportBackButton() and getBackBarVisible() and this.BackBarRef:getValue()) and this.BackBarRef:getValue().Size.Y.Offset or 0


		local menuAspectRatioParent = this.MenuContainer
		if Theme.UIBloxThemeEnabled then
			menuAspectRatioParent = nil
			if Theme.EnableVerticalBottomBar then
				this.VerticalMenu.Visible = false
				this.VerticalMenuDivider.Visible = false
				for i = 1, #this.BottomBarButtonsComponents do
					local button = this.BottomBarButtonsComponents[i]
					button.Parent = this.BottomButtonFrame
				end
			end
		end

		if isPortrait then
			this.MenuAspectRatio.Parent = nil
			this.HubBar.Position = UDim2.new(0.5, 0, 0, 10)
			if Theme.UIBloxThemeEnabled then
				this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-40, 0, 54)
			else
				this.MenuContainer.Size = UDim2.new(1, 0, 1, 0)
				this.HubBar.Size = UDim2.new(1, -20, 0, 40)
			end
		else
			if isTenFootInterface then
				this.HubBar.Size = UDim2.new(0, 1200, 0, 100)
				this.MenuAspectRatio.Parent = menuAspectRatioParent
			elseif utility:IsSmallTouchScreen() then
				if Theme.UIBloxThemeEnabled then
					if Theme.EnableVerticalBottomBar then
						this.VerticalMenu.Visible = true
						this.VerticalMenuDivider.Visible = true
						for i = 1, #this.BottomBarButtonsComponents do
							local button = this.BottomBarButtonsComponents[i]
							button.Parent = this.VerticalMenu
						end
						this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-60-Theme.VerticalMenuWidth, 0, 52)
					else
						this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-60, 0, 52)
					end
				else
					this.HubBar.Size = UDim2.new(1, -10, 0, 40)
				end
				this.MenuAspectRatio.Parent = nil
			else
				this.HubBar.Size = UDim2.new(0, 800, 0, 60)
				this.MenuAspectRatio.Parent = menuAspectRatioParent

				if FFlagAvatarChatCoreScriptSupport then
					-- Reconfigure these buttons to take a new parent to be next to
					-- the close button.
					if this.permissionsButtonsRoot then
						Roact.unmount(this.permissionsButtonsRoot)
					end
					this.permissionsButtonsRoot = Roact.mount(createPermissionsButtons(false), this.Shield, "PermissionsButtons")
				end
			end
		end

		if Theme.UIBloxThemeEnabled then
			if not Theme.AlwaysShowBottomBar() then
				barSize = this.HubBar.Size.Y.Offset
			else
				barSize = this.HubBar.Size.Y.Offset + this.BottomButtonFrame.Size.Y.Offset
			end
			extraSpace = bufferSize*2+barSize
			extraTopPadding = (GetFFlagEnableTeleportBackButton() and getBackBarVisible() and this.BackBarRef:getValue()) and this.BackBarRef:getValue().Size.Y.Offset or 0
		end

		--We need to wait and let the HubBar AbsoluteSize actually update.
		--This is in the same frame, so the delay should be very minimal.
		--Maybe in the future we need to have a way to force AbsoluteSize
		--to update, or we can just avoid using it so soon.
		RunService.Heartbeat:wait()

		if shouldShowBottomBar() then
			setBottomBarBindings()
		else
			removeBottomBarBindings()
		end

		local usableScreenHeight = fullScreenSize - extraSpace - extraTopPadding
		local minimumPageSize = 150
		local usePageSize = nil

		if not isPortrait then
			if largestPageSize < usableScreenHeight then
				usePageSize = largestPageSize
				this.HubBar.Position = UDim2.new(
					this.HubBar.Position.X.Scale,
					this.HubBar.Position.X.Offset,
					0.5,
					-largestPageSize/2 - this.HubBar.Size.Y.Offset
				)
				if this.BottomButtonFrame then
					this.BottomButtonFrame.Position = UDim2.new(
						this.BottomButtonFrame.Position.X.Scale,
						this.BottomButtonFrame.Position.X.Offset,
						0.5,
						largestPageSize/2
					)
				end
			elseif usableScreenHeight < minimumPageSize then
				usePageSize = minimumPageSize
				this.HubBar.Position = UDim2.new(
					this.HubBar.Position.X.Scale,
					this.HubBar.Position.X.Offset,
					0.5,
					-minimumPageSize/2 - this.HubBar.Size.Y.Offset
				)
				if this.BottomButtonFrame then
					this.BottomButtonFrame.Position = UDim2.new(
						this.BottomButtonFrame.Position.X.Scale,
						this.BottomButtonFrame.Position.X.Offset,
						0.5,
						minimumPageSize/2
					)
				end
			else
				usePageSize = usableScreenHeight
				this.HubBar.Position = UDim2.new(
					this.HubBar.Position.X.Scale,
					this.HubBar.Position.X.Offset,
					0,
					bufferSize
				)
				if this.BottomButtonFrame then
					this.BottomButtonFrame.Position = UDim2.new(
						this.BottomButtonFrame.Position.X.Scale,
						this.BottomButtonFrame.Position.X.Offset,
						1,
						-(bufferSize + barSize)
					)
				end
			end
		else
			usePageSize = usableScreenHeight
		end

		local newPageViewClipperSize = nil
		if not isTenFootInterface then
			if utility:IsSmallTouchScreen() then
				local backButtonExtraSize = 0
				if Theme.UIBloxThemeEnabled then
					backButtonExtraSize = 0
				else
					backButtonExtraSize = ((GetFFlagEnableTeleportBackButton() and getBackBarVisible()) and 0 or 44)
				end
				newPageViewClipperSize = UDim2.new(
					0,
					this.HubBar.AbsoluteSize.X,
					0,
					usePageSize + backButtonExtraSize
				)
			else
				newPageViewClipperSize = UDim2.new(
					0,
					this.HubBar.AbsoluteSize.X,
					0,
					usePageSize
				)
			end
		else
			newPageViewClipperSize = UDim2.new(
				0,
				this.HubBar.AbsoluteSize.X,
				0,
				usePageSize
			)
		end

		this.PageViewClipper.Size = newPageViewClipperSize
		this.defaultPageViewClipperSize = newPageViewClipperSize
		if not isPortrait then
			this.PageViewClipper.Position = UDim2.new(
				this.PageViewClipper.Position.X.Scale,
				this.PageViewClipper.Position.X.Offset,
				0.5,
				-usePageSize/2
			)
		else
			this.PageViewClipper.Position = UDim2.new(0.5, 0, 0, this.HubBar.Position.Y.Offset + this.HubBar.AbsoluteSize.Y)
		end

		if this.VerticalMenu then
			this.VerticalMenuDivider.Size = UDim2.new(0, 1, 0, usePageSize + this.HubBar.Size.Y.Offset)
			this.VerticalMenu.Size = UDim2.new(0, Theme.VerticalMenuWidth, 0, usePageSize + this.HubBar.Size.Y.Offset)
		end

		if Theme.UseStickyBar() then
			this.resetPageViewClipperSize = true
			this.showStickyBottomBar = true
			if this.pageViewScrollChangeCon then
				this.pageViewScrollChangeCon:disconnect()
				this.pageViewScrollChangeCon = nil
			end
			if not isPortrait then
				this.pageViewScrollChangeCon = this.PageView:GetPropertyChangedSignal("CanvasPosition"):connect(this.handelPageViewScroll)
			end

			resizeBottomBarButtons()
		end

	end

	local function onPreferredTransparencyChanged()
		this.MenuContainer.BackgroundTransparency = Theme.transparency("MenuContainer", 1) * GuiService.PreferredTransparency
	end

	local function toggleQuickProfilerFromHotkey(actionName, inputState, inputObject)
		-- Make sure it's Ctrl-F7.
		-- NOTE: This will only work if FFlagDontSwallowInputForStudioShortcuts is True.
		-- Otherwise, we never get the "Begin" input state when Ctrl key is down.
		if (not (UserInputService:IsKeyDown(Enum.KeyCode.LeftControl) or
			UserInputService:IsKeyDown(Enum.KeyCode.RightControl))) then
			return
		end

		if actionName ==QUICK_PROFILER_ACTION_NAME then
			if inputState and inputState == Enum.UserInputState.Begin then
				GameSettings.PerformanceStatsVisible = not GameSettings.PerformanceStatsVisible
			end
		end
	end

	local function toggleDevConsole(actionName, inputState, inputObject)
		if actionName == DEV_CONSOLE_ACTION_NAME then	 -- ContextActionService->F9
			if inputState and inputState == Enum.UserInputState.Begin then
				DevConsoleMaster:ToggleVisibility()
			end
		end
	end

	local lastInputUsedToSelectGui = isTenFootInterface

	-- Map indicating if a KeyCode or UserInputType should toggle the lastInputUsedToSelectGui variable.
	local inputUsedToSelectGui = {
		[Enum.UserInputType.Gamepad1] = true,
		[Enum.UserInputType.Gamepad2] = true,
		[Enum.UserInputType.Gamepad3] = true,
		[Enum.UserInputType.Gamepad4] = true,
		[Enum.KeyCode.Left] = true,
		[Enum.KeyCode.Right] = true,
		[Enum.KeyCode.Up] = true,
		[Enum.KeyCode.Down] = true,
		[Enum.KeyCode.Tab] = true,
		[Enum.UserInputType.Touch] = false,
		[Enum.UserInputType.MouseButton1] = false,
		[Enum.UserInputType.MouseButton2] = false
	}

	UserInputService.InputBegan:connect(function(input)
		if input.UserInputType and inputUsedToSelectGui[input.UserInputType] ~= nil then
			lastInputUsedToSelectGui = inputUsedToSelectGui[input.UserInputType]
		elseif input.KeyCode and inputUsedToSelectGui[input.KeyCode] then
			lastInputUsedToSelectGui = inputUsedToSelectGui[input.KeyCode]
		end
	end)
	UserInputService.InputChanged:connect(function(input)
		if input.KeyCode == Enum.KeyCode.Thumbstick1 or input.KeyCode == Enum.KeyCode.Thumbstick2 then
			if input.Position.magnitude >= 0.25 then
				lastInputUsedToSelectGui = true
			end
		elseif input.UserInputType == Enum.UserInputType.Touch or input.UserInputType == Enum.UserInputType.MouseMovement then
			lastInputUsedToSelectGui = false
		end
	end)

	local GetHeaderPosition = nil

	local switchTab = function(direction, cycle)
		local currentTabPosition = GetHeaderPosition(this.Pages.CurrentPage)
		if currentTabPosition < 0 then return end

		local newTabPosition = currentTabPosition + direction
		if cycle then
			if newTabPosition > #this.TabHeaders then
				newTabPosition = 1
			elseif newTabPosition < 1 then
				newTabPosition = #this.TabHeaders
			end
		end
		local newHeader = this.TabHeaders[newTabPosition]

		if newHeader then
			for pager,v in pairs(this.Pages.PageTable) do
				if pager:GetTabHeader() == newHeader then
					this:SwitchToPage(pager, true, direction)
					break
				end
			end
		end
	end

	local switchTabFromBumpers = function(actionName, inputState, inputObject)
		if inputState ~= Enum.UserInputState.Begin then return end

		local direction = 0
		if inputObject.KeyCode == Enum.KeyCode.ButtonR1 then
			direction = 1
		elseif inputObject.KeyCode == Enum.KeyCode.ButtonL1 then
			direction = -1
		end

		switchTab(direction, true)
	end

	local switchTabFromKeyboard = function(input)
		if input.KeyCode == Enum.KeyCode.Tab then
			local direction = 0
			if UserInputService:IsKeyDown(Enum.KeyCode.LeftShift) or UserInputService:IsKeyDown(Enum.KeyCode.RightShift) then
				direction = -1
			else
				direction = 1
			end

			switchTab(direction, true)
		end
	end

	local scrollHotkeyFunc = function(actionName, inputState, inputObject)
		if inputState ~= Enum.UserInputState.Begin then return end

		local direction = 0
		if inputObject.KeyCode == Enum.KeyCode.PageUp then
			direction = -100
		elseif inputObject.KeyCode == Enum.KeyCode.PageDown then
			direction = 100
		end

		this:ScrollPixels(direction)
	end

	-- need some stuff for functions below so init here
	createGui()

	if FFlagSettingsHubRaceConditionFix then
		setupVoiceListeners()
	end

	function GetHeaderPosition(page)
		local header = page:GetTabHeader()
		if not header then return -1 end

		for i,v in pairs(this.TabHeaders) do
			if v == header then
				return i
			end
		end

		return -1
	end

	local setZIndex = nil
	setZIndex = function(newZIndex, object)
		if object:IsA("GuiObject") then
			object.ZIndex = newZIndex
			local children = object:GetChildren()
			for i = 1, #children do
				setZIndex(newZIndex, children[i])
			end
		end
	end

	local function AddHeader(newHeader, headerPage)
		if not newHeader then return end

		table.insert(this.TabHeaders, newHeader)
		headerPage.TabPosition = #this.TabHeaders

		local sizeOfTab = 1/#this.TabHeaders
		for i = 1, #this.TabHeaders do
			local tab = this.TabHeaders[i]
			tab.Size = UDim2.new(sizeOfTab, 0, 1, 0)
		end

		setZIndex(SETTINGS_BASE_ZINDEX + 1, newHeader)
		if Theme.UIBloxThemeEnabled or isSubjectToDesktopPolicies() then
			newHeader.Parent = this.HubBarContainer
		else
			newHeader.Parent = this.HubBar
		end
	end

	local function RemoveHeader(oldHeader)
		local removedPos = nil

		for i = 1, #this.TabHeaders do
			if this.TabHeaders[i] == oldHeader then
				removedPos = i
				table.remove(this.TabHeaders, i)
				break
			end
		end

		if removedPos then
			for i = removedPos, #this.TabHeaders do
				local currentTab = this.TabHeaders[i]
				currentTab.Position = UDim2.new(currentTab.Position.X.Scale, currentTab.Position.X.Offset - oldHeader.AbsoluteSize.X,
					currentTab.Position.Y.Scale, currentTab.Position.Y.Offset)
			end
		end

		oldHeader.Parent = nil
	end

	-- Page APIs
	function this:AddPage(pageToAdd)
		this.Pages.PageTable[pageToAdd] = true
		AddHeader(pageToAdd:GetTabHeader(), pageToAdd)
		pageToAdd.Page.Position = UDim2.new(pageToAdd.TabPosition - 1,0,0,0)
	end

	function this:RemovePage(pageToRemove)
		this.Pages.PageTable[pageToRemove] = nil
		RemoveHeader(pageToRemove:GetTabHeader())
	end

	this.bottomBarAnimating = false
	this.defaultPageViewClipperSize = this.PageViewClipper.Size
	this.showStickyBottomBar = true
	this.resetPageViewClipperSize = false

	function animateBottomBarComplete()
		-- If a resize happened in between a tween, reset the PageViewClipperSize
		if this.resetPageViewClipperSize then
			this.PageViewClipper.Size = this.defaultPageViewClipperSize
			this.resetPageViewClipperSize = false
		end
		this.bottomBarAnimating = false
	end

	function this:animateInBottomBar()
		if this.bottomBarAnimating or this.showStickyBottomBar == true then
			return
		end

		this.bottomBarAnimating = true
		this.showStickyBottomBar = true
		this.resetPageViewClipperSize = false

		local targetSize = UDim2.new(
			this.defaultPageViewClipperSize.X.Scale,
			this.defaultPageViewClipperSize.X.Offset,
			this.defaultPageViewClipperSize.Y.Scale,
			this.defaultPageViewClipperSize.Y.Offset
		)

		local movementTime = 0.3
		this.PageViewClipper:TweenSize(
			targetSize,
			Enum.EasingDirection.InOut,
			Enum.EasingStyle.Quart,
			movementTime,
			true,
			animateBottomBarComplete
		)
		return
	end

	function this:animateOutBottomBar()
		if this.bottomBarAnimating or this.showStickyBottomBar == false then
			return
		end

		this.bottomBarAnimating = true
		this.showStickyBottomBar = false
		this.resetPageViewClipperSize = false

		local targetSize = UDim2.new(
			this.defaultPageViewClipperSize.X.Scale,
			this.defaultPageViewClipperSize.X.Offset,
			this.defaultPageViewClipperSize.Y.Scale,
			this.defaultPageViewClipperSize.Y.Offset + BOTTOM_BUTTON_BAR_HEIGHT
		)

		local movementTime = 0.3
		this.PageViewClipper:TweenSize(
			targetSize,
			Enum.EasingDirection.InOut,
			Enum.EasingStyle.Quart,
			movementTime,
			true,
			animateBottomBarComplete
		)
		return
	end

	function this:HideBar()
		this.HubBar.Visible = false
		this.PageViewClipper.Visible = false
		if this.BottomButtonFrame then
			removeBottomBarBindings()
		end
	end

	function this:ShowBar()
		this.HubBar.Visible = true
		this.PageViewClipper.Visible = true
		if this.BottomButtonFrame and shouldShowBottomBar() then
			setBottomBarBindings()
		end
	end

	function this:ScrollPixels(pixels)
		-- Only Y
		local oldY = this.PageView.CanvasPosition.Y
		local maxY = this.PageView.CanvasSize.Y.Offset - this.PageViewClipper.AbsoluteSize.y
		local newY = math.max(0, math.min(oldY+pixels, maxY)) -- i.e. clamp
		this.PageView.CanvasPosition = Vector2.new(0, newY)
	end

	function this:ScrollToFrame(frame, forced)
		if lastInputUsedToSelectGui or forced then
			local ay = frame.AbsolutePosition.y - this.Pages.CurrentPage.Page.AbsolutePosition.y
			local by = ay + frame.AbsoluteSize.y

			if ay < this.PageView.CanvasPosition.y then -- Scroll up to fit top
				this.PageView.CanvasPosition = Vector2.new(0, ay)
			elseif by - this.PageView.CanvasPosition.y > this.PageViewClipper.Size.Y.Offset then -- Scroll down to fit bottom
				this.PageView.CanvasPosition = Vector2.new(0, by - this.PageViewClipper.Size.Y.Offset)
			end
		end
	end

	function this:GetFirstPageWithTabHeader()
		-- find page with tab position one.
		local firstPageWithTabHeader = nil
		for page, _ in pairs(this.Pages.PageTable) do
			local header = page:GetTabHeader()
			if header ~= nil and page.TabPosition == 1 then
				firstPageWithTabHeader = page
				break
			end
		end

		if firstPageWithTabHeader == nil then
			error("No page with tab header found")
			return nil
		end

		return firstPageWithTabHeader
	end

	function this:InitInPage(pageToSwitchTo)
		-- make sure all pages are in right position
		local newPagePos = pageToSwitchTo.TabPosition
		for page, _ in pairs(this.Pages.PageTable) do
			if page ~= pageToSwitchTo then
				page:Hide(-1, newPagePos, true, nil, this.PageViewInnerFrame)
			end
		end

		-- set top & bottom bar visibility
		if this.BottomButtonFrame then
			if shouldShowBottomBar(pageToSwitchTo) then
				setBottomBarBindings()
			else
				this.BottomButtonFrame.Visible = false
			end

			this.HubBar.Visible = shouldShowHubBar(pageToSwitchTo)
		end

		-- set whether the page should be clipped
		local isClipped = pageToSwitchTo.IsPageClipped == true
		this.PageViewClipper.ClipsDescendants = isClipped
		this.PageView.ClipsDescendants = isClipped

		if Theme.UseStickyBar() == false then
			this.PageViewInnerFrame.ClipsDescendants = isClipped
		end

		this.Pages.CurrentPage = pageToSwitchTo
		this.Pages.CurrentPage.Active = true

		if ChromeEnabled then
			this.CurrentPageSignal:fire(this.Pages.CurrentPage and this.Pages.CurrentPage.Page.Name or nil)
		end

		if Theme.UseStickyBar() == false then
			local pageSize = this.Pages.CurrentPage:GetSize()
			this.PageView.CanvasSize = UDim2.new(0,0, 0,pageSize.Y)

			pageChangeCon = this.Pages.CurrentPage.Page.Changed:connect(function(prop)
				if prop == "AbsoluteSize" then
					local pageSize = this.Pages.CurrentPage:GetSize()
					this.PageView.CanvasSize = UDim2.new(0,0, 0,pageSize.Y)
				end
			end)
		end
	end

	function this:SwitchToPage(pageToSwitchTo, ignoreStack, direction, skipAnimation, invisibly, eventData)
		if this.Pages.PageTable[pageToSwitchTo] == nil then return end

		if FFlagPreventHiddenSwitchPage and this:GetVisibility() == false then
			return
		end

		if Theme.UIBloxThemeEnabled then
			local topExtra = UDim.new(0, 0)
			local bottomExtra = UDim.new(0, 0)
			local hasBottomButtons = (not (utility:IsPortrait() or utility:IsSmallTouchScreen())) or Theme.AlwaysShowBottomBar()

			if this.HubBar and not shouldShowHubBar(pageToSwitchTo) then
				topExtra = UDim.new(0, this.HubBar.AbsoluteSize.Y)
			end

			if this.BottomButtonFrame and hasBottomButtons and not shouldShowBottomBar(pageToSwitchTo) then
				bottomExtra = UDim.new(0, this.BottomButtonFrame.AbsoluteSize.Y)
			end

			local pad = Theme.HubPadding()
			this.MenuContainerPadding.PaddingLeft = pad.PaddingLeft
			this.MenuContainerPadding.PaddingRight =  pad.PaddingRight
			this.MenuContainerPadding.PaddingBottom = pad.PaddingBottom + bottomExtra
			this.MenuContainerPadding.PaddingTop = pad.PaddingTop + topExtra

			local menuPos = Theme.MenuContainerPosition()
			this.MenuContainer.Position = menuPos.Position
			this.MenuContainer.Size = menuPos.Size
			this.MenuContainer.AnchorPoint = menuPos.AnchorPoint

			if this.VerticalMenu and not utility:IsPortrait() and utility:IsSmallTouchScreen() then
				local visible = shouldShowHubBar(pageToSwitchTo)
				this.VerticalMenu.Visible = visible
				this.VerticalMenuDivider.Visible = visible
				if visible then
					this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-60-Theme.VerticalMenuWidth, 0, 52)
				else
					this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-60, 0, 52)
				end
				local cs = this.PageViewClipper.Size
				this.PageViewClipper.Size = UDim2.new(cs.X.Scale, this.HubBar.Size.X.Offset, cs.Y.Scale, cs.Y.Offset)
			end
		end

		-- detect direction
		if direction == nil then
			if this.Pages.CurrentPage and this.Pages.CurrentPage.TabHeader and pageToSwitchTo and pageToSwitchTo.TabHeader then
				direction = this.Pages.CurrentPage.TabHeader.AbsolutePosition.x < pageToSwitchTo.TabHeader.AbsolutePosition.x and 1 or -1
			end
		end
		if direction == nil then
			direction = 1
		end

		-- if we have a page we need to let it know to go away
		if this.Pages.CurrentPage and pageChangeCon ~= nil then
			pageChangeCon:disconnect()
			this.Pages.CurrentPage.Active = false
		end

		-- make sure all pages are in right position
		local newPagePos = pageToSwitchTo.TabPosition
		for page, _ in pairs(this.Pages.PageTable) do
			if page ~= pageToSwitchTo then
				page:Hide(-direction, newPagePos, skipAnimation, nil, this.PageViewInnerFrame, page == this.Pages.CurrentPage)
			end
		end

		-- set top & bottom bar visibility
		if this.BottomButtonFrame then
			if shouldShowBottomBar(pageToSwitchTo) then
				setBottomBarBindings()
			else
				this.BottomButtonFrame.Visible = false
			end

			this.HubBar.Visible = shouldShowHubBar(pageToSwitchTo)
		end

		-- set whether the page should be clipped
		local isClipped = pageToSwitchTo.IsPageClipped == true
		this.PageViewClipper.ClipsDescendants = isClipped
		this.PageView.ClipsDescendants = isClipped
		this.PageViewInnerFrame.ClipsDescendants = isClipped

		-- make sure page is visible
		this.Pages.CurrentPage = pageToSwitchTo
		this.Pages.CurrentPage:Display(this.PageViewInnerFrame, skipAnimation)
		this.Pages.CurrentPage.Active = true
		if ChromeEnabled then
			this.CurrentPageSignal:fire(this.Pages.CurrentPage and this.Pages.CurrentPage.Page.Name or nil)
		end

		if Theme.UseStickyBar() == false then
			local pageSize = this.Pages.CurrentPage:GetSize()
			this.PageView.CanvasSize = UDim2.new(0,0, 0,pageSize.Y)

			pageChangeCon = this.Pages.CurrentPage.Page.Changed:connect(function(prop)
				if prop == "AbsoluteSize" then
					local pageSize = this.Pages.CurrentPage:GetSize()
					this.PageView.CanvasSize = UDim2.new(0,0, 0,pageSize.Y)
				end
			end)

			if this.MenuStack[#this.MenuStack] ~= this.Pages.CurrentPage and not ignoreStack then
				this.MenuStack[#this.MenuStack + 1] = this.Pages.CurrentPage
			end
		end

		local eventTable = {}
		eventTable["universeid"] = tostring(game.GameId)
		if GetFFlagReportAbuseMenuEntrypointAnalytics() and eventData then
			eventTable = Cryo.Dictionary.join(eventTable, eventData)
		end

		if pageToSwitchTo then
			if this.GameSettingsPage == pageToSwitchTo then
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, "open_GameSettings_tab", Constants.AnalyticsMenuActionName, eventTable)
			else
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, "open_" .. pageToSwitchTo.Page.Name .. "_tab", Constants.AnalyticsMenuActionName, eventTable)
			end
		else
			AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, "open_unknown_tab", Constants.AnalyticsMenuActionName, eventTable)
		end
	end

	function this:SetActive(active)
		this.Active = active

		if this.Pages.CurrentPage then
			this.Pages.CurrentPage.Active = active
		end
	end

	function clearMenuStack()
		while this.MenuStack and #this.MenuStack > 0 do
			this:PopMenu()
		end
	end

	function setOverrideMouseIconBehavior()
		if FFlagFixMouseIconSettingsMenuWithDeferredEvents then
			if not this.Visible then
				return
			end
		end

		if UserInputService:GetLastInputType() == Enum.UserInputType.Gamepad1 or VRService.VREnabled then
			MouseIconOverrideService.push(SETTINGS_HUB_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceHide)
		else
			MouseIconOverrideService.push(SETTINGS_HUB_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	end

	function setVisibilityInternal(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext, takingScreenshot)
		this.OpenStateChangedCount = this.OpenStateChangedCount + 1

		local visibilityChanged = visible ~= this.Visible
		this.Visible = visible

		if FFlagEnableInGameMenuDurationLogger and visibilityChanged and not visible then
			PerfUtils.menuClose()
		end

		if this.ResizedConnection then
			this.ResizedConnection:disconnect()
			this.ResizedConnection = nil
		end

		if GetFFlagEnableTeleportBackButton() and this.BackBarVisibleConnection then
			this.BackBarVisibleConnection:disconnect()
			this.BackBarVisibleConnection = nil
		end

		if this.PreferredTransparencyChangedConnection then
			this.PreferredTransparencyChangedConnection:disconnect()
			this.PreferredTransparencyChangedConnection = nil
		end

		this.Modal.Visible = this.Visible

		if this.TabConnection then
			this.TabConnection:disconnect()
			this.TabConnection = nil
		end

		local playerList = require(RobloxGui.Modules.PlayerList.PlayerListManager)

		if NotchSupportExperiment.enabled() then
			this.Shield.BackgroundTransparency = 1 -- Hide non-fullscreen shield
			this.createBackgroundFadeGui()
		end

		if this.Visible then
			if GetFFlagOpenControlsOnMenuOpen() then
				this.TakingScreenshot = false
			end

			this.ResizedConnection = RobloxGui.Changed:connect(function(prop)
				if prop == "AbsoluteSize" then
					onScreenSizeChanged()
				end
			end)
			if GetFFlagEnableTeleportBackButton() and this.BackBarRef:getValue() then
				this.BackBarVisibleConnection = this.BackBarRef:getValue():GetPropertyChangedSignal("Visible"):connect(function()
					onScreenSizeChanged()
				end)
			end
			onScreenSizeChanged()

			this.PreferredTransparencyChangedConnection = GuiService:GetPropertyChangedSignal("PreferredTransparency"):connect(function()
				onPreferredTransparencyChanged()
			end)
			onPreferredTransparencyChanged()

			this.SettingsShowSignal:fire(this.Visible)

			GuiService:SetMenuIsOpen(true, SETTINGS_HUB_MENU_KEY)
			this.Shield.Visible = this.Visible

			if Theme.UIBloxThemeEnabled then
				GuiService:CloseInspectMenu()
			end

			if NotchSupportExperiment.enabled() and not UserInputService.VREnabled then
				this.FullscreenGui.Enabled = true
				this.FullscreenBackgroundCover.Visible = true
				this.FullscreenBackgroundCover.BackgroundTransparency = 1
			end

			if noAnimation or not this.Shield:IsDescendantOf(game) then
				this.Shield.Position = UDim2.new(0, 0, 0, 0)
				if this.DarkenBackground then
					if this.DarkenBackgroundTween then
						this.DarkenBackgroundTween:Cancel()
						this.DarkenBackgroundTween = nil
					end
					this.DarkenBackground.BackgroundTransparency = Theme.transparency("DarkenBackground")
				end
			else
				local movementTime: number = 0
				if NotchSupportExperiment.enabled() then
					movementTime = if Constants then Constants.ShieldOpenFadeTime2 else 0.3
				else
					movementTime = if Constants then Constants.ShieldOpenAnimationTweenTime else 0.5
				end

				if GameSettings.ReducedMotion then
					this.Shield.Parent = this.CanvasGroup
					this.CanvasGroup.GroupTransparency = 1
					this.Shield.Position = UDim2.new(0, 0, 0, 0)

					local tweenInfo = TweenInfo.new(0.25)
					local tweenProps = {
						GroupTransparency = 0
					}
					local tween = TweenService:Create(this.CanvasGroup, tweenInfo, tweenProps)
					tween:Play()

					tween.Completed:Connect(function()
						this.Shield.Parent = this.ClippingShield
					end)

					if FFlagEnableInGameMenuDurationLogger then
						PerfUtils.menuOpenComplete()
					end
				else
					this.Shield:TweenPosition(
						UDim2.new(0, 0, 0, 0),
						Enum.EasingDirection.InOut,
						Enum.EasingStyle.Quart,
						movementTime,
						true,
						function ()
							if FFlagEnableInGameMenuDurationLogger then
								PerfUtils.menuOpenComplete()
							end
						end
					)
				end

				if this.DarkenBackground then
					local tweenInfo = TweenInfo.new(
						movementTime,
						Enum.EasingStyle.Quad,
						Enum.EasingDirection.Out
					)
					if this.DarkenBackgroundTween then
						this.DarkenBackgroundTween:Cancel()
					end
					this.DarkenBackgroundTween = TweenService:Create(this.DarkenBackground, tweenInfo, {BackgroundTransparency = Theme.transparency("DarkenBackground")})
					this.DarkenBackgroundTween:Play()
				end

				if NotchSupportExperiment.enabled() and not UserInputService.VREnabled then
					local tweenInfo = TweenInfo.new(movementTime,
						Enum.EasingStyle.Quad, Enum.EasingDirection.InOut)
					local tweenProps = {
						BackgroundTransparency = SETTINGS_SHIELD_TRANSPARENCY,
					}
					local tween = TweenService:Create(this.FullscreenBackgroundCover, tweenInfo, tweenProps)
					tween:Play()
				end
			end

			local noOpFunc = function() end
			ContextActionService:BindCoreAction("RbxSettingsHubStopCharacter", noOpFunc, false,
				Enum.PlayerActions.CharacterForward,
				Enum.PlayerActions.CharacterBackward,
				Enum.PlayerActions.CharacterLeft,
				Enum.PlayerActions.CharacterRight,
				Enum.PlayerActions.CharacterJump,
				Enum.KeyCode.LeftShift,
				Enum.KeyCode.RightShift,
				Enum.KeyCode.Tab,
				Enum.UserInputType.Gamepad1, Enum.UserInputType.Gamepad2, Enum.UserInputType.Gamepad3, Enum.UserInputType.Gamepad4
			)

			ContextActionService:BindCoreAction("RbxSettingsHubSwitchTab", switchTabFromBumpers, false, Enum.KeyCode.ButtonR1, Enum.KeyCode.ButtonL1)
			ContextActionService:BindCoreAction("RbxSettingsScrollHotkey", scrollHotkeyFunc, false, Enum.KeyCode.PageUp, Enum.KeyCode.PageDown)
			if shouldShowBottomBar() then
				setBottomBarBindings()
			end

			this.TabConnection = UserInputService.InputBegan:connect(switchTabFromKeyboard)

			setOverrideMouseIconBehavior()
			lastInputChangedCon = UserInputService.LastInputTypeChanged:connect(setOverrideMouseIconBehavior)
			if UserInputService.MouseEnabled and not VRService.VREnabled then
				MouseIconOverrideService.push(SETTINGS_HUB_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
			end

			if customStartPage then
				removeBottomBarBindings()
				this:SwitchToPage(customStartPage, nil, 1, true)
			else
				if GetFFlagShouldInitWithFirstPageWithTabHeader() then
					this:SwitchToPage(this:GetFirstPageWithTabHeader(), nil, 1, true)
				else
					this:SwitchToPage(this.PlayersPage, nil, 1, true)
				end
			end

			playerList:HideTemp('SettingsMenu', true)

			if chat:GetVisibility() then
				chatWasVisible = true
				chat:ToggleVisibility()
			end

			local backpack = require(RobloxGui.Modules.BackpackScript)
			if backpack.IsOpen then
				backpack:OpenClose()
			end

			this.GameSettingsPage:OpenSettingsPage()
		else
			if GetFFlagOpenControlsOnMenuOpen() then
				this.TakingScreenshot = takingScreenshot or false
			end

			if ChromeEnabled then
				this.CurrentPageSignal:fire("")
			end

			if noAnimation then
				this.Shield.Position = SETTINGS_SHIELD_INACTIVE_POSITION
				this.Shield.Visible = this.Visible
				this.SettingsShowSignal:fire(this.Visible)
				GuiService:SetMenuIsOpen(false, SETTINGS_HUB_MENU_KEY)
				if FFlagEnableInGameMenuDurationLogger then
					PerfUtils.menuCloseComplete()
				end

				if NotchSupportExperiment.enabled() then
					this.FullscreenGui.Enabled = false
					this.FullscreenBackgroundCover.Visible = false
				end
				if this.DarkenBackground then
					if this.DarkenBackgroundTween then
						this.DarkenBackgroundTween:Cancel()
						this.DarkenBackgroundTween = nil
					end
					this.DarkenBackground.BackgroundTransparency = 1
				end
			else
				local movementTime: number = 0
				local fadeTime: number = 0
				if NotchSupportExperiment.enabled() then
					movementTime = if Constants then Constants.ShieldCloseFadeTime2 else 0.2
					fadeTime = if Constants then movementTime + Constants.ShieldExtraFadeTime else 0.25
				else
					movementTime = if Constants then Constants.ShieldCloseAnimationTweenTime else 0.4
				end

				local function handleShieldClose()
					this.SettingsShowSignal:fire(this.Visible)
					if not this.Visible then
						GuiService:SetMenuIsOpen(false, SETTINGS_HUB_MENU_KEY)
					end
					if FFlagEnableInGameMenuDurationLogger then
						PerfUtils.menuCloseComplete()
					end

					if NotchSupportExperiment.enabled() then
						clearMenuStack()
						this.GameSettingsPage:CloseSettingsPage()
					end
				end

				if GameSettings.ReducedMotion then
					this.Shield.Parent = this.CanvasGroup

					local tweenInfo = TweenInfo.new(0.25)
					local tweenProps = {
						GroupTransparency = 1
					}
					local tween = TweenService:Create(this.CanvasGroup, tweenInfo, tweenProps)
					tween:Play()
					tween.Completed:Connect(function()
						this.Shield.Position = SETTINGS_SHIELD_INACTIVE_POSITION

						this.Shield.Visible = this.Visible
						this.Shield.Parent = this.ClippingShield
					end)

					handleShieldClose()
				else
					this.Shield:TweenPosition(
						SETTINGS_SHIELD_INACTIVE_POSITION,
						Enum.EasingDirection.In,
						Enum.EasingStyle.Quad,
						movementTime,
						true,
						function()
							this.Shield.Visible = this.Visible
							handleShieldClose()
						end
					)
				end

				if this.DarkenBackground then
					local tweenInfo = TweenInfo.new(
						movementTime,
						Enum.EasingStyle.Quart,
						Enum.EasingDirection.Out
					)

					if this.DarkenBackgroundTween then
						this.DarkenBackgroundTween:Cancel()
					end
					this.DarkenBackgroundTween = TweenService:Create(this.DarkenBackground, tweenInfo, {BackgroundTransparency = 1})
					this.DarkenBackgroundTween:Play()
				end

				if NotchSupportExperiment.enabled() then
					local tweenInfo = TweenInfo.new(fadeTime,
						Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
					local tweenProps = {
						BackgroundTransparency = 1,
					}
					local tween = TweenService:Create(this.FullscreenBackgroundCover, tweenInfo, tweenProps)
					tween.Completed:Connect(function()
						this.FullscreenGui.Enabled = false
						this.FullscreenBackgroundCover.Visible = false
					end)
					tween:Play()
				end
			end

			if lastInputChangedCon then
				lastInputChangedCon:disconnect()
			end

			if Theme.UseStickyBar() then
				if this.pageViewScrollChangeCon then
					this.pageViewScrollChangeCon:disconnect()
					this.pageViewScrollChangeCon = nil
				end
			end

			playerList:HideTemp('SettingsMenu', false)

			if chatWasVisible then
				chat:ToggleVisibility()
				chatWasVisible = false
			end

			if not VRService.VREnabled then
				MouseIconOverrideService.pop(SETTINGS_HUB_MOUSE_OVERRIDE_KEY)
			end

			if not NotchSupportExperiment.enabled() then
				clearMenuStack()
			end
			ContextActionService:UnbindCoreAction("RbxSettingsHubSwitchTab")
			ContextActionService:UnbindCoreAction("RbxSettingsHubStopCharacter")
			ContextActionService:UnbindCoreAction("RbxSettingsScrollHotkey")
			removeBottomBarBindings(0.4)

			GuiService.SelectedCoreObject = nil

			if not NotchSupportExperiment.enabled() then
				this.GameSettingsPage:CloseSettingsPage()
			end

			if GetFFlagShareInviteLinkContextMenuV1Enabled() then
				if this.ShareGamePage then
					this.ShareGamePage:ClearShareInviteLink(this.ShareGameApp)
				end
			end
		end

		if visibilityChanged then
			if visible then
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, {
					source = analyticsContext,
				})
			else
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsMenuCloseName, Constants.AnalyticsMenuActionName, {
					source = analyticsContext,
				})
			end
		end
	end

	function this:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext, takingScreenshot)
		if this.Visible == visible then return end

		setVisibilityInternal(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext, takingScreenshot)
	end

	function this:GetVisibility()
		return this.Visible
	end

	function this:ToggleVisibility(switchedFromGamepadInput, analyticsContext)
		setVisibilityInternal(not this.Visible, nil, nil, switchedFromGamepadInput, analyticsContext)
	end

	function this:AddToMenuStack(newItem)
		if this.MenuStack[#this.MenuStack] ~= newItem then
			this.MenuStack[#this.MenuStack + 1] = newItem
		end
	end

	function this:InviteToGame()
		local newGameInviteModalEnabled = false
		if GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() and FFlagLuaEnableGameInviteModalSettingsHub then
			local layer = GetFStringGameInviteMenuLayer()
			local layerData = IXPServiceWrapper:GetLayerData(layer)
			IXPServiceWrapper:LogUserLayerExposure(layer)
			newGameInviteModalEnabled = if (layerData and (layerData.inExperienceGameInviteUXRefresh2023==GameInviteInviteExperimentVariant.UxRefresh or layerData.inExperienceGameInviteUXRefresh2023==GameInviteInviteExperimentVariant.InviteLimit)) then true else false
		end
		if game:GetEngineFeature("PlatformFriendsService") and
			PlatformFriendsService and
			PlatformFriendsService:IsInviteFriendsEnabled() then
			PlatformFriendsService:ShowInviteFriendsUI()
		elseif UserInputService:GetPlatform() == Enum.Platform.XBoxOne then
			if PlatformService then
				PlatformService:PopupGameInviteUI()
			end
		elseif newGameInviteModalEnabled then
			this:ToggleVisibility()
			GameInviteModalManager:openModal({
				trigger = GameInviteConstants.Triggers.GameMenu
			})
		else
			this:AddToMenuStack(this.Pages.CurrentPage)
			this:SwitchToPage(this.ShareGamePage, nil, 1, true)
		end
	end

	function this:PopMenu(switchedFromGamepadInput, skipAnimation)
		if this.MenuStack and #this.MenuStack > 0 then
			local lastStackItem = this.MenuStack[#this.MenuStack]

			if type(lastStackItem) ~= "table" then
				PoppedMenuEvent:Fire(lastStackItem)
			end

			table.remove(this.MenuStack, #this.MenuStack)
			this:SwitchToPage(this.MenuStack[#this.MenuStack], true, 1, skipAnimation)
			if #this.MenuStack == 0 then
				this:SetVisibility(false)

				this.Pages.CurrentPage:Hide(0, 0, nil, nil, this.PageViewInnerFrame)
			end
		else
			this.MenuStack = {}
			PoppedMenuEvent:Fire()
			this:ToggleVisibility()
		end
	end

	function this:ShowShield()
		local shieldTransparency = 0
		if UserInputService.VREnabled then
			shieldTransparency = SETTINGS_SHIELD_VR_TRANSPARENCY
		else
			shieldTransparency = if NotchSupportExperiment.enabled() then 1 else SETTINGS_SHIELD_TRANSPARENCY
		end
		this.Shield.BackgroundTransparency = shieldTransparency
	end
	function this:HideShield()
		this.Shield.BackgroundTransparency = 1

		if UserInputService.VREnabled then
			if GetFFlagFixSettingsHubVRBackgroundError() then
				if this.FullscreenGui then
					this.FullscreenGui.Enabled = false
				end
			else
				this.FullscreenGui.Enabled = false
			end
		end
	end

	local thisModuleName = "SettingsMenu"
	local vrMenuOpened, vrMenuClosed = nil, nil
	local function enableVR()
		local VRHub = require(RobloxGui.Modules.VR.VRHub)
		local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
		local panel = Panel3D.Get(thisModuleName)
		panel:ResizeStuds(4, 4, 250)
		panel:SetType(Panel3D.Type.Standard)
		panel:SetVisible(false)
		panel:SetCanFade(false)

		this.ClippingShield.Parent = panel:GetGUI()
		this.Shield.Parent.ClipsDescendants = false
		this.VRShield.Visible = true
		this:HideShield()

		vrMenuOpened = this.SettingsShowSignal:connect(function(visible)
			if visible then
				panel:SetVisible(true)

				VRHub:FireModuleOpened(thisModuleName)
			else
				panel:SetVisible(false)

				VRHub:FireModuleClosed(thisModuleName)
			end
		end)

		VRHub.ModuleOpened.Event:connect(function(moduleName)
			if moduleName ~= thisModuleName then
				this:SetVisibility(false)
			end
		end)
	end
	local function disableVR()
		this.ClippingShield.Parent = RobloxGui
		this.Shield.Parent.ClipsDescendants = true
		this.VRShield.Visible = false
		this:ShowShield()

		if vrMenuOpened then
			vrMenuOpened:disconnect()
			vrMenuOpened = nil
		end
		if vrMenuClosed then
			vrMenuClosed:disconnect()
			vrMenuClosed = nil
		end

		local Panel3D = require(RobloxGui.Modules.VR.Panel3D)
		local panel = Panel3D.Get(thisModuleName)
		panel:SetVisible(false)
	end

	local function OnVREnabled(prop)
		if prop == "VREnabled" then
			if UserInputService.VREnabled then
				enableVR()
			else
				disableVR()
			end
		end
	end
	UserInputService.Changed:connect(OnVREnabled)
	OnVREnabled("VREnabled")


	if not isNewInGameMenuEnabled() then
		--If the new in game menu is enabled the settings hub is just used for the gamepad leave game prompt
		--as a special case until gamepad support for the new menu is complete.
		local closeMenuFunc = function(name, inputState, input)
			if inputState ~= Enum.UserInputState.Begin then return end
			this:PopMenu(false, true)
		end
		ContextActionService:BindCoreAction("RBXEscapeMainMenu", closeMenuFunc, false, Enum.KeyCode.Escape)
	end

	this.ResetCharacterPage:SetHub(this)

	if InExperienceCapabilities.canNavigateHome then
		this.LeaveGamePage:SetHub(this)
	end

	-- full page initialization
	this.GameSettingsPage = require(RobloxGui.Modules.Settings.Pages.GameSettings)
	this.GameSettingsPage:SetHub(this)

	this.ReportAbusePage = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
	this.ReportAbusePage:SetHub(this)

	if GetFFlagAbuseReportEnableReportSentPage() then
		this.ReportSentPage = require(RobloxGui.Modules.Settings.Pages.ReportSentPage)
		this.ReportSentPage:SetHub(this)
	end

	this.ReportSentPageV2 = require(RobloxGui.Modules.Settings.Pages.ReportSentPageV2)
	this.ReportSentPageV2:SetHub(this)

	this.HelpPage = require(RobloxGui.Modules.Settings.Pages.Help)
	this.HelpPage:SetHub(this)

	local shouldShowRecord = not PolicyService:IsSubjectToChinaPolicies()

	if platform == Enum.Platform.Windows and shouldShowRecord then
		this.RecordPage = require(RobloxGui.Modules.Settings.Pages.Record)
		this.RecordPage:SetHub(this)
	end

	if InExperienceCapabilities.canListPeopleInSameServer then
		this.PlayersPage = require(RobloxGui.Modules.Settings.Pages.Players)
		this.PlayersPage:SetHub(this)
	end

	if isSubjectToDesktopPolicies() then
		this.ExitModalPage = require(RobloxGui.Modules.Settings.Pages.ExitModal)
		this.ExitModalPage:SetHub(this)
	end

	if isSubjectToDesktopPolicies() and InExperienceCapabilities.canNavigateHome then
		this.LeaveGameToHomePage = require(RobloxGui.Modules.Settings.Pages.LeaveGameToHome)
		this.LeaveGameToHomePage:SetHub(this)
	end

	if not isTenFootInterface then
		local shareGameCorePackages = {
			"Roact",
			"Rodux",
			"RoactRodux",
		}
		if GetCorePackagesLoaded(shareGameCorePackages) then
			-- Create the embedded Roact app for the ShareGame page
			-- This is accomplished via a Roact Portal into the ShareGame page frame
			local CorePackages = game:GetService("CorePackages")
			local EventStream = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventStream
			local Diag = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.Diag

			local eventStream = EventStream.new(AnalyticsService)
			local inviteToGameAnalytics = InviteToGameAnalytics.new()
				:withEventStream(eventStream)
				:withDiag(Diag.new(AnalyticsService))
				:withButtonName(InviteToGameAnalytics.ButtonName.SettingsHub)

			local ShareGameMaster = require(RobloxGui.Modules.Settings.ShareGameMaster)
			this.ShareGameApp = ShareGameMaster.createApp(this.PageViewClipper, inviteToGameAnalytics)


			this.ShareGamePage = require(RobloxGui.Modules.Settings.Pages.ShareGamePlaceholderPage)
			this.ShareGamePage:ConnectHubToApp(this, this.ShareGameApp)

			this:AddPage(this.ShareGamePage)
		end
	end

	local policy = ScreenshotsPolicy.PolicyImplementation.read()
	local eligibleForCapturesFeature = if policy then ScreenshotsPolicy.Mapper(policy).eligibleForCapturesFeature() else false

	if eligibleForCapturesFeature then
		local ShotsPageWrapper = require(RobloxGui.Modules.Settings.Pages.ShotsPageWrapper)

		local function closeSettingsMenu()
			this:SetVisibility(false, true)
		end

		this.ScreenshotsApp = ScreenshotsApp
		if GetFFlagEnableScreenshotUtility() then
			this.ScreenshotsApp.mountMenuPage(ShotsPageWrapper.Page, closeSettingsMenu, Theme, ChromeEnabled)
		else
			this.ScreenshotsApp.mountMenuPage(ShotsPageWrapper.Page, closeSettingsMenu, Theme)
		end

		this.ShotsPage = ShotsPageWrapper
		this.ShotsPage:ConnectHubToApp(this, this.PageViewClipper, this.ScreenshotsApp)
	end

	-- page registration
	if this.PlayersPage then
		this:AddPage(this.PlayersPage)
	end

	this:AddPage(this.ResetCharacterPage)

	if this.LeaveGamePage then
		this:AddPage(this.LeaveGamePage)
	end

	this:AddPage(this.GameSettingsPage)

	if this.ShotsPage then
		this:AddPage(this.ShotsPage)
	end

	if this.ReportAbusePage then
		this:AddPage(this.ReportAbusePage)
	end
	if this.ReportSentPage then
		this:AddPage(this.ReportSentPage)
	end
	if this.ReportSentPageV2 then
		this:AddPage(this.ReportSentPageV2)
	end

	this:AddPage(this.HelpPage)
	if this.RecordPage and not this.ShotsPage then
		this:AddPage(this.RecordPage)
	end
	if this.ExitModalPage then
		this:AddPage(this.ExitModalPage)
	end

	if this.LeaveGameToHomePage then
		this:AddPage(this.LeaveGameToHomePage)
	end

	if GetFFlagShouldInitWithFirstPageWithTabHeader() then
		this:InitInPage(this:GetFirstPageWithTabHeader())
	else
		this:InitInPage(this.PlayersPage)
	end

	-- hook up to necessary signals

	-- connect back button on android
	GuiService.ShowLeaveConfirmation:connect(function()
		if #this.MenuStack == 0 then
			this:SetVisibility(true, nil, nil, nil, Constants.AnalyticsMenuOpenTypes.GamepadLeaveGame)
			if GetFFlagShouldInitWithFirstPageWithTabHeader() then
				this:SwitchToPage(this:GetFirstPageWithTabHeader(), nil, 1)
			else
				this:SwitchToPage(this.PlayersPage, nil, 1)
			end
		else
			this:PopMenu(false, true)
		end
	end)

	-- Dev Console Connections
	ContextActionService:BindCoreAction(DEV_CONSOLE_ACTION_NAME,
		toggleDevConsole,
		false,
		Enum.KeyCode.F9
	)

	-- Quick Profiler connections
	-- Note: it's actually Ctrl-F7.	We don't have a nice way of
	-- making that explicit here, so we check it inside toggleQuickProfilerFromHotkey.
	ContextActionService:BindCoreAction(QUICK_PROFILER_ACTION_NAME,
		toggleQuickProfilerFromHotkey,
		false,
		Enum.KeyCode.F7
	)

	-- Keyboard control
	UserInputService.InputBegan:connect(function(input)
		if input.KeyCode == Enum.KeyCode.Left or input.KeyCode == Enum.KeyCode.Right or input.KeyCode == Enum.KeyCode.Up or input.KeyCode == Enum.KeyCode.Down then
			if this.Visible and this.Active then
				if this.Pages.CurrentPage then
					if GuiService.SelectedCoreObject == nil then
						this.Pages.CurrentPage:SelectARow()
					end
				end
			end
		end
	end)

	-- DUA: connect exit signal
	if this.ExitModalPage then
		local function showExitModal()
			this.HubBar.Visible = false
			removeBottomBarBindings()
			if this:GetVisibility() then
				this:AddToMenuStack(this.Pages.CurrentPage)
				this:SwitchToPage(this.ExitModalPage, nil, 1, true)
			else
				this:SetVisibility(true, nil, this.ExitModalPage, false)
			end
		end
		local function handleNativeExit()
			if this:GetVisibility() and this.Pages.CurrentPage == this.ExitModalPage then
				if FFlagEnableInGameMenuDurationLogger then
					PerfUtils.leavingGame()
				end
				this.ExitModalPage.LeaveAppFunc(true)
			else
				showExitModal()
			end
		end

		game:GetService("GuiService").NativeClose:Connect(handleNativeExit)

		if this.FullScreenTitleBar then
			this.FullScreenTitleBar = SettingsFullScreenTitleBar.update(this.FullScreenTitleBar, {
				onClose = handleNativeExit,
			})
		end
	end

	return this
end


-- Main Entry Point

local moduleApiTable = {}

moduleApiTable.ModuleName = "SettingsMenu"
moduleApiTable.KeepVRTopbarOpen = true
moduleApiTable.VRIsExclusive = true
moduleApiTable.VRClosesNonExclusive = true
moduleApiTable.SetVisibility = nil
VRHub:RegisterModule(moduleApiTable)

VRHub.ModuleOpened.Event:connect(function(moduleName)
	if moduleName ~= moduleApiTable.ModuleName then
		local module = VRHub:GetModule(moduleName)
		if module.VRIsExclusive then
			moduleApiTable:SetVisibility(false)
		end
	end
end)

local SettingsHubInstance = CreateSettingsHub()

function moduleApiTable:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
	SettingsHubInstance:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
end

function moduleApiTable:ToggleVisibility(switchedFromGamepadInput, analyticsContext)
	SettingsHubInstance:ToggleVisibility(switchedFromGamepadInput, analyticsContext)
end

function moduleApiTable:SwitchToPage(pageToSwitchTo, ignoreStack)
	SettingsHubInstance:SwitchToPage(pageToSwitchTo, ignoreStack, 1)
end

function moduleApiTable:GetVisibility()
	return SettingsHubInstance.Visible
end

function moduleApiTable:ShowShield()
	SettingsHubInstance:ShowShield()
end

function moduleApiTable:HideShield()
	SettingsHubInstance:HideShield()
end

function moduleApiTable:GetRespawnBehaviour()
	return SettingsHubInstance:GetRespawnBehaviour()
end

function moduleApiTable:GetTakingScreenshot()
	return if GetFFlagOpenControlsOnMenuOpen() then SettingsHubInstance.TakingScreenshot else nil
end

moduleApiTable.RespawnBehaviourChangedEvent = SettingsHubInstance.RespawnBehaviourChangedEvent

moduleApiTable.SettingsShowSignal = SettingsHubInstance.SettingsShowSignal

moduleApiTable.CurrentPageSignal = SettingsHubInstance.CurrentPageSignal

moduleApiTable.SettingsShowEvent = Instance.new("BindableEvent")

SettingsHubInstance.SettingsShowSignal:connect(function(open)
	moduleApiTable.SettingsShowEvent:Fire(open)
end)

moduleApiTable.Instance = SettingsHubInstance

return moduleApiTable
