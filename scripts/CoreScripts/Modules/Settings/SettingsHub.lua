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
local Symbol = require(CorePackages.Workspace.Packages.AppCommonLib).Symbol
local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local IXPService = game:GetService("IXPService")
local LocalizationService = game:GetService("LocalizationService")
local TelemetryService = game:GetService("TelemetryService")

local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local isTenFootInterface = require(RobloxGui.Modules.TenFootInterface):IsEnabled()

local Roact = require(CorePackages.Packages.Roact)
local Cryo = require(CorePackages.Packages.Cryo)
local Otter = require(CorePackages.Packages.Otter)
local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)

local Foundation = require(CorePackages.Packages.Foundation)
local FoundationProvider = Foundation.FoundationProvider

local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local Traversal = CoreScriptsRoactCommon.Traversal

--[[ UTILITIES ]]
local PortalWithFoundationStylelink = require(script.Parent.Components.PortalWithFoundationStylelink)
local InExperienceMenuReact = require(script.Parent.InExperienceMenuReact)
local InExperienceMenuReactPage = require(script.Parent.Pages.InExperienceMenuReactPage)
local ReactPageSignal = require(script.Parent.ReactPageSignal)
local SettingsUtils = require(script.Parent.Integrations.Utils)
local utility = require(RobloxGui.Modules.Settings.Utility)
local VRHub = require(RobloxGui.Modules.VR.VRHub)
local CachedPolicyService = require(CorePackages.Workspace.Packages.CachedPolicyService)
local PerfUtils = require(RobloxGui.Modules.Common.PerfUtils)
local MouseIconOverrideService = require(CorePackages.Workspace.Packages.CoreScriptsCommon).MouseIconOverrideService
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local isSubjectToDesktopPolicies = SharedFlags.isSubjectToDesktopPolicies
local TabHeaderComponents = require(RobloxGui.Modules.Settings.Components.TabHeader)
local SwitchTabHint = TabHeaderComponents.SwitchTabHint
local TraversalComponents = require(RobloxGui.Modules.Settings.Components.Traversal)
local TraversalHistoryMenu = TraversalComponents.TraversalHistoryMenu
local MenuBackButton = require(RobloxGui.Modules.Settings.Components.MenuBackButton)
local MenuFrontButton = require(RobloxGui.Modules.Settings.Components.MenuFrontButton)
local MenuButtonsContainer = require(RobloxGui.Modules.Settings.Components.MenuButtons.MenuButtonsContainer)
local RoactAppExperiment = require(CorePackages.Packages.RoactAppExperiment)
local IXPServiceWrapper = require(CorePackages.Workspace.Packages.IxpServiceWrapper).IXPServiceWrapper
local AppFonts = require(CorePackages.Workspace.Packages.Style).AppFonts
local CapturesPolicy  = require(CorePackages.Workspace.Packages.CapturesInExperience).CapturesPolicy
local InExperienceCapabilities = require(CorePackages.Workspace.Packages.InExperienceCapabilities).InExperienceCapabilities
local getCamMicPermissions = require(CoreGui.RobloxGui.Modules.Settings.getCamMicPermissions)
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local CoreGuiCommonStores = require(CorePackages.Workspace.Packages.CoreGuiCommon).Stores
local Signals = require(CorePackages.Packages.Signals)
local createSignal = Signals.createSignal
local AppStyleProvider = require(CorePackages.Packages.UIBlox).App.Style.AppStyleProvider
local DarkTheme = require(CorePackages.Packages.UIBlox).App.Style.Constants.ThemeName.Dark 
local FFlagBuilderIcons = SharedFlags.UIBlox.FFlagUIBloxMigrateBuilderIcon
local FFlagInExperienceUseAppStyleProvider = SharedFlags.FFlagInExperienceUseAppStyleProvider
local PlayerListPackage = require(CorePackages.Workspace.Packages.PlayerList)
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local HelpPage = require(CorePackages.Workspace.Packages.HelpPage)

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

local CHECK_LEAVE_GAME_UPSELL_COOLDOWN = game:DefineFastInt("CheckLeaveGameUpsellCooldown", 300)
local GET_SERVER_CHANNEL_RETRIES = game:DefineFastInt("GetServerChannelRetries", 10)

-- [[ FAST FLAGS ]]
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local SettingsFlags = require(script.Parent.Flags)

local Flags = {
	EngineFeatureRbxAnalyticsServiceExposePlaySessionId = game:GetEngineFeature("RbxAnalyticsServiceExposePlaySessionId"),
	EngineFeatureTeleportHistoryButtons = game:GetEngineFeature("TeleportHistoryButtons"),

	FFlagRemoveRecordPage = game:DefineFastFlag("RemoveRecordPage", false),
	FFlagPreventHiddenSwitchPage = game:DefineFastFlag("PreventHiddenSwitchPage", false),
	FFlagLuaEnableGameInviteModalSettingsHub = game:DefineFastFlag("LuaEnableGameInviteModalSettingsHub", false),
	FFlagFixDisableTopPaddingError = game:DefineFastFlag("FixDisableTopPaddingError", false),

	GetFFlagLuaInExperienceCoreScriptsGameInviteUnification = require(RobloxGui.Modules.Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification),
	FFlagEnableInGameMenuDurationLogger = require(RobloxGui.Modules.Common.Flags.GetFFlagEnableInGameMenuDurationLogger)(),
	isNewInGameMenuEnabled = require(RobloxGui.Modules.isNewInGameMenuEnabled),
	GetFFlagAbuseReportEnableReportSentPage = require(RobloxGui.Modules.Flags.GetFFlagAbuseReportEnableReportSentPage),
	GetFFlagMuteButtonRaceConditionFix = require(RobloxGui.Modules.Flags.GetFFlagMuteButtonRaceConditionFix),
	GetFFlagRemoveAssetVersionEndpoint = require(RobloxGui.Modules.Flags.GetFFlagRemoveAssetVersionEndpoint),
	GetFFlagNewEventIngestPlayerScriptsDimensions = require(RobloxGui.Modules.Flags.GetFFlagNewEventIngestPlayerScriptsDimensions),

	GetFFlagReportAbuseMenuEntrypointAnalytics = require(RobloxGui.Modules.Settings.Flags.GetFFlagReportAbuseMenuEntrypointAnalytics),
	GetFFlagEnableLeaveGameUpsellEntrypoint = require(RobloxGui.Modules.Settings.Flags.GetFFlagEnableLeaveGameUpsellEntrypoint),
	FFlagInExperienceMenuReorderFirstVariant = require(RobloxGui.Modules.Settings.Flags.FFlagInExperienceMenuReorderFirstVariant),
	GetFStringInExperienceMenuIXPLayer = require(RobloxGui.Modules.Settings.Flags.GetFStringInExperienceMenuIXPLayer),
	GetFStringInExperienceMenuIXPVar = require(RobloxGui.Modules.Settings.Flags.GetFStringInExperienceMenuIXPVar),
	GetFFlagRemovePermissionsButtons = require(RobloxGui.Modules.Settings.Flags.GetFFlagRemovePermissionsButtons),
	FFlagRelocateMobileMenuButtons = require(RobloxGui.Modules.Settings.Flags.FFlagRelocateMobileMenuButtons),
	FIntRelocateMobileMenuButtonsVariant = require(RobloxGui.Modules.Settings.Flags.FIntRelocateMobileMenuButtonsVariant),
	FFlagMenuButtonsMountWithIEM = require(RobloxGui.Modules.Settings.Flags.FFlagMenuButtonsMountWithIEM),
	FFlagSpatialUIFixMenuPanelChatExclusive = require(RobloxGui.Modules.Settings.Flags.FFlagSpatialUIFixMenuPanelChatExclusive),
    FFlagRemoveLoadingTimeout = require(RobloxGui.Modules.Flags.FFlagRemoveLoadingTimeout),

	FFlagAddNextUpContainer = require(RobloxGui.Modules.Settings.Pages.LeaveGameWithNextUp.Flags.FFlagAddNextUpContainer),

	FFlagAddNewPlayerListMobileFocusNav = PlayerListPackage.Flags.FFlagAddNewPlayerListMobileFocusNav,

	ChromeEnabled = require(RobloxGui.Modules.Chrome.Enabled)(),
	FFlagRespawnChromeShortcutTelemetry = require(RobloxGui.Modules.Chrome.Flags.FFlagRespawnChromeShortcutTelemetry),

	FFlagLocalizeVersionLabels = settings():GetFFlag("LocalizeVersionLabels"),

	isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled,
	InExperienceUIVRIXP = require(CorePackages.Workspace.Packages.SharedExperimentDefinition).InExperienceUIVRIXP,
	FFlagAddSwitchTabHintsToIEM = SharedFlags.FFlagAddSwitchTabHintsToIEM,
	FFlagAvatarChatCoreScriptSupport = SharedFlags.GetFFlagAvatarChatCoreScriptSupport(),
	GetFStringGameInviteMenuLayer = SharedFlags.GetFStringGameInviteMenuLayer,
	GetFFlagEnableAppChatInExperience = SharedFlags.GetFFlagEnableAppChatInExperience,
	GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints = SharedFlags.GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints,
	GetFFlagDisplayServerChannel = SharedFlags.GetFFlagDisplayServerChannel,
	FFlagSettingsHubIndependentBackgroundVisibility = SharedFlags.getFFlagSettingsHubIndependentBackgroundVisibility(),
	GetFFlagPackagifySettingsShowSignal = SharedFlags.GetFFlagPackagifySettingsShowSignal,
	FFlagEnableConsoleExpControls = SharedFlags.FFlagEnableConsoleExpControls,
	FFlagIEMFocusNavToButtons = SharedFlags.FFlagIEMFocusNavToButtons,
	FFlagIEMResumeButtonPressBugfix = SharedFlags.FFlagIEMResumeButtonPressBugfix,
	FFlagAddUILessMode = SharedFlags.FFlagAddUILessMode,
	FIntAddUILessModeVariant = SharedFlags.FIntAddUILessModeVariant,
	FFlagInExperienceReportClosingBugfix = SharedFlags.FFlagInExperienceReportClosingBugfix,
	FFlagEnableSettingsHubUIDelegateRollout = SharedFlags.FFlagEnableSettingsHubUIDelegateRollout,
	FFlagAddIEMProfilePage = SharedFlags.FFlagAddIEMProfilePage,

	FFlagAddTraversalBackButton = Traversal.Flags.FFlagAddTraversalBackButton,
	FFlagAddTraversalHistory = Traversal.Flags.FFlagAddTraversalHistory,
	
	FFlagCreateInExperienceMenuReact = SettingsFlags.FFlagCreateInExperienceMenuReact,
	FFlagIEMButtonsResponsiveLayout = SettingsFlags.FFlagIEMButtonsResponsiveLayout,
	FFlagEnableSystemScrimInSettingsHub = game:DefineFastFlag("EnableSystemScrimInSettingsHub", false),

	FFlagHelpPageIXPExposure = HelpPage.Flags.FFlagHelpPageIXPExposure,
	FStringHelpPageIXPLayer = HelpPage.Flags.FStringHelpPageIXPLayer,

	FFlagMenuButtonsCheckVisibilityBeforeMount = game:DefineFastFlag("MenuButtonsCheckVisibilityBeforeMount", false),
}

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
local ExperienceMenuSessionManagerInstance = require(CorePackages.Workspace.Packages.InExperienceSessionization).ExperienceMenuSessionManagerInstance

local PlatformService = nil -- Clean up along with PlatformFriendsService engine-feature
pcall(function() PlatformService = game:GetService('PlatformService') end)

local PlatformFriendsService = nil
pcall(function() PlatformFriendsService = game:GetService('PlatformFriendsService') end)

--[[ REMOTES ]]
local GetServerVersionRemote = nil
spawn(function()
	GetServerVersionRemote = RobloxReplicatedStorage:WaitForChild("GetServerVersion", math.huge)
end)

local GetServerChannelRemote = nil
if Flags.GetFFlagDisplayServerChannel() then
	spawn(function()
		GetServerChannelRemote = RobloxReplicatedStorage:WaitForChild("GetServerChannel", math.huge)
	end)
end
--[[ VARIABLES ]]
local isTouchDevice = UserInputService.PreferredInput == Enum.PreferredInput.Touch
RobloxGui:WaitForChild("Modules"):WaitForChild("TenFootInterface")
local platform = UserInputService:GetPlatform()

local baseUrl = ContentProvider.BaseUrl
local isTestEnvironment = not string.find(baseUrl, "www.roblox.com")
local DevConsoleMaster = require(RobloxGui.Modules.DevConsoleMaster)

local lastInputChangedCon = nil
local connectWasVisible = false

local connectedServerVersion = nil
local connectedServerChannel = nil

local SettingsFullScreenTitleBar = require(RobloxGui.Modules.Settings.Components.SettingsFullScreenTitleBar)
local PermissionsButtons = if Flags.GetFFlagRemovePermissionsButtons() then nil else require(RobloxGui.Modules.Settings.Components.PermissionsButtons)
local toggleSelfViewSignal = require(RobloxGui.Modules.SelfView.toggleSelfViewSignal)
local SelfViewAPI = require(RobloxGui.Modules.SelfView.publicApi)
local selfViewVisibilityUpdatedSignal = require(RobloxGui.Modules.SelfView.selfViewVisibilityUpdatedSignal)

local MenuLeaveGameTelemetryConfig = require(RobloxGui.Modules.Settings.Analytics.MenuLeaveGameTelemetryConfig)
local MenuResetCharacterTelemetryConfig = require(RobloxGui.Modules.Settings.Analytics.MenuResetCharacterTelemetryConfig)
local MenuResumeTelemetryConfig = require(RobloxGui.Modules.Settings.Analytics.MenuResumeTelemetryConfig)

local ReactPageAnalytics = require(RobloxGui.Modules.Settings.Analytics.ReactPageAnalytics)

local InviteToGameAnalytics = require(CorePackages.Workspace.Packages.GameInvite).GameInviteAnalytics

local GameInvitePackage, GameInviteModalManager, GameInviteInviteExperimentVariant, GameInviteConstants
if Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() then
	GameInvitePackage = require(CorePackages.Workspace.Packages.GameInvite)
	GameInviteModalManager = GameInvitePackage.GameInviteModalManager
	GameInviteInviteExperimentVariant = GameInvitePackage.GameInviteInviteExperimentVariant
	GameInviteConstants = GameInvitePackage.GameInviteConstants
end

local CapturesApp = require(RobloxGui.Modules.Captures.CapturesApp)

local Constants = require(RobloxGui.Modules:WaitForChild("InGameMenu"):WaitForChild("Resources"):WaitForChild("Constants"))

local shouldLocalize = CachedPolicyService:IsSubjectToChinaPolicies()

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default
local VoiceConstants = require(RobloxGui.Modules.VoiceChat.Constants)
local FFlagSettingsHubRaceConditionFix = game:DefineFastFlag("SettingsHubRaceConditionFix", false)
local FFlagFixReportButtonCutOff = game:DefineFastFlag("FixReportButtonCutOff", false)

local InExperienceAppChatModal = require(CorePackages.Workspace.Packages.AppChat).App.InExperienceAppChatModal

local SettingsShowSignal = if Flags.GetFFlagPackagifySettingsShowSignal() then require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal else nil
local SettingsUtility = if Flags.GetFFlagPackagifySettingsShowSignal() then require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsUtility else nil

local SPRING_PARAMS = {
	frequency = 4,
	dampingRatio = 1,
}

local ReactPageFactory = require(RobloxGui.Modules.Settings.ReactPageFactory)
type ReactPage = ReactPageFactory.ReactPage

export type ExperienceControlStore = {
	-- Data
	getCanRespawn: Signals.getter<boolean>,
	getCustomRespawnCallback: Signals.getter<BindableEvent?>,

	-- Actions
	setCanRespawn: (canRespawn: boolean) -> (),
	setCustomRespawnCallback: Signals.setter<BindableEvent?>,
	onLeaveGame: (source: string) -> (),
	onRespawn: (source: string) -> (),
	onResume: (source: string) -> (),
}

--[[ Localization Package Initialization ]]
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization

--[[ Localization Fixes for Version Labels]]
local shouldTryLocalizeVersionLabels = Flags.FFlagLocalizeVersionLabels or shouldLocalize
local RobloxTranslator = require(CorePackages.Workspace.Packages.RobloxTranslator)

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
local topCornerInset, _ = GuiService:GetGuiInset()
local SETTINGS_SHIELD_ACTIVE_POSITION = UDim2.new(0, 0, 0, -topCornerInset.Y)
local SETTINGS_SHIELD_SIZE = UDim2.new(1, 0, 1, topCornerInset.Y)

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

local function GetServerChannelBlocking()
	if connectedServerChannel then
		return connectedServerChannel
	end

	local repeatTimes = GET_SERVER_CHANNEL_RETRIES
	if not GetServerChannelRemote then
		repeat
			task.wait()
			repeatTimes = repeatTimes - 1
		until GetServerChannelRemote or repeatTimes == 0
	end
	if GetServerChannelRemote then
		connectedServerChannel = GetServerChannelRemote:InvokeServer()
	else
		warn("GetServerChannelRemote not available")
		connectedServerChannel = "Unknown"
	end
	return connectedServerChannel
end

local function GetPlaceVersionText()
	if Flags.GetFFlagRemoveAssetVersionEndpoint() then
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

local function createReactPage(parent: GuiObject?): GuiObject
	return Create'Frame'
	{
		Name = 'InExperienceMenuPage',
		BackgroundTransparency = 1,
		Size = UDim2.fromScale(0, 0),
		Parent = parent,
	}
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
	this.BackBarVisibleConnection = nil
	if Flags.EngineFeatureTeleportHistoryButtons then
		this.FrontBarVisibleConnection = nil
	end
	this.PreferredTransparencyChangedConnection = nil
	this.TabConnection = nil

	if Flags.FFlagAddNextUpContainer then
		this.LeaveGamePage = require(RobloxGui.Modules.Settings.Pages.LeaveGameWithNextUp)
	else
		this.LeaveGamePage = require(RobloxGui.Modules.Settings.Pages.LeaveGame)
	end
	this.LeaveGameUpsellPage = if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() then require(RobloxGui.Modules.Settings.Pages.LeaveGameUpsell.LeaveGameUpsell) else nil
	this.ResetCharacterPage = require(RobloxGui.Modules.Settings.Pages.ResetCharacter)
	-- remove utility CreateSignal upon removing this flag
	this.SettingsShowSignal = if Flags.GetFFlagPackagifySettingsShowSignal() then SettingsShowSignal else utility:CreateSignal()
	this.CurrentPageSignal = if Flags.GetFFlagPackagifySettingsShowSignal() then SettingsUtility.CreateSignal() else utility:CreateSignal()
	this.OpenStateChangedCount = 0
	this.BottomButtonFrame = nil
	if Flags.FFlagRelocateMobileMenuButtons then
		this.addMenuKeyBindings = nil
		this.removeMenuKeyBindings = nil
	end
	this.hasMicPermissions = false
	if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() then
		this.checkedUpsell = false
		this.leaveGameUpsellProp = VoiceConstants.PHONE_UPSELL_VALUE_PROP.None
		this.sessionStartTime = os.time()
	end
	this.isFetchingMicPermissions = true
	if Flags.FFlagAddUILessMode and Flags.FIntAddUILessModeVariant ~= 0 then
		this.uiLessStore = CoreGuiCommonStores.GetUILessStore(false)
	end

	this.isMuted = nil
	this.lastVoiceRecordingIndicatorTextUpdated = nil

	--[[
		Keep the status of whether the user has enabled Self View or not. This is used
		to keep track of the self view button state.
	]]
	if Flags.FFlagAvatarChatCoreScriptSupport then
		this.selfViewOpen = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView)
		this.toggleSelfViewSignal = toggleSelfViewSignal:connect(function()
			this.selfViewOpen = not this.selfViewOpen
		end)

		this.selfViewOpen = StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.SelfView) and SelfViewAPI.getSelfViewIsOpenAndVisible()
		this.selfViewVisibilitySignal = selfViewVisibilityUpdatedSignal:connect(function()
			this.selfViewOpen = SelfViewAPI.getSelfViewIsOpenAndVisible()
		end)
	end

	this.playSessionId = ""
	if Flags.EngineFeatureRbxAnalyticsServiceExposePlaySessionId then 
		this.playSessionId = AnalyticsService:GetPlaySessionId()
	end

	this.reactPageAnalytics = ReactPageAnalytics.new()

	local pageChangeCon = nil

	local PoppedMenuEvent = Instance.new("BindableEvent")
	PoppedMenuEvent.Name = "PoppedMenu"
	this.PoppedMenu = PoppedMenuEvent.Event

	-- create early so ReactPages can mount to it
	this.ReactPage = nil :: GuiObject?
	if Flags.FFlagCreateInExperienceMenuReact then 
		this.ReactPage = createReactPage()
	end

	local function shouldShowHubBar(whichPage)
		whichPage = whichPage or this.Pages.CurrentPage
		return whichPage.ShouldShowBottomBar == true
	end

	local function setBottomBarSelection(pageToSwitchTo)
		if not this.BottomButtonFrame and Flags.FFlagIEMFocusNavToButtons 
			and not pageToSwitchTo and (not Flags.FFlagRelocateMobileMenuButtons
			or Flags.FIntRelocateMobileMenuButtonsVariant == 0
			or Flags.FIntRelocateMobileMenuButtonsVariant == 2) then
			return
		end

		if this["ResumeButton"] then
			pageToSwitchTo.PageNextSelectionDown = this["ResumeButton"]
		end

		for _, selectable in pageToSwitchTo.LastSelectableObjects do
			this.BottomButtonFrame.SelectionBehaviorUp = Enum.SelectionBehavior.Escape
			this.BottomButtonFrame.NextSelectionUp = selectable
			selectable.NextSelectionDown = pageToSwitchTo.PageNextSelectionDown
			-- Leave Game Button may not follow button frame selection behavior when there are few rows in People
			local LeaveGameButton = this["LeaveGameButton"]
			if LeaveGameButton then
				LeaveGameButton.NextSelectionUp = selectable
			end
		end
		if #pageToSwitchTo.LastSelectableObjects < 1 then
			this.BottomButtonFrame.SelectionBehaviorUp = Enum.SelectionBehavior.Stop
			this.BottomButtonFrame.NextSelectionUp = nil
			local LeaveGameButton = this["LeaveGameButton"]
			if LeaveGameButton then
				LeaveGameButton.NextSelectionUp = nil
			end
		end
	end

	local function shouldShowBottomBar(whichPage)
		whichPage = whichPage or this.Pages.CurrentPage

		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 or Flags.FIntRelocateMobileMenuButtonsVariant == 2 then
			if utility:IsPortrait() or utility:IsSmallTouchScreen() then
				if not Theme.AlwaysShowBottomBar() then
					return false
				end
			end
		end

		return whichPage ~= nil and whichPage.ShouldShowBottomBar == true
	end

	local function setBottomBarBindings()
		if not this.Visible then
			return
		end

		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 then
			for i = 1, #this.BottomBarButtons do
				local buttonTable = this.BottomBarButtons[i]
				local buttonName = buttonTable[1]
				local hotKeyTable = buttonTable[2]
				ContextActionService:BindCoreAction(buttonName, hotKeyTable[1], false, unpack(hotKeyTable[2]))
			end
		else
			if this.addMenuKeyBindings then
				this.addMenuKeyBindings()
			end
		end

		if this.BottomButtonFrame then
			this.BottomButtonFrame.Visible = true
		end
	end

	local function removeBottomBarBindings(delayBeforeRemoving)
		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 then
			for _, hotKeyTable in pairs(this.BottomBarButtons) do
				ContextActionService:UnbindCoreAction(hotKeyTable[1])
			end
		else
			if this.removeMenuKeyBindings then
				this.removeMenuKeyBindings()
			end
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
		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 then
			-- We need to concat "ButtonButton" because addBottomBarButton creates name+"Button" and sends that to util.createButton
			-- which creates a button instance using name+"Button"...
			local buttonInstance = this.BottomButtonFrame:FindFirstChild(buttonName .. "ButtonButton", true)
			if not buttonInstance then
				return
			end
			buttonInstance.Position = position
			buttonInstance.Size = size
		end
	end

	local localeId = LocalizationService.RobloxLocaleId
	local localization = Localization.new(localeId)

	local function hideVoiceUx()
		local wholeButton = (this :: any).MuteButtonButton
		if wholeButton then
			wholeButton.Visible = false
			wholeButton:Destroy()
		end
		local tenFootButtonHeight = BOTTOM_BUTTON_10FT_SIZE
		local buttonSize = if isTenFootInterface then UDim2.new(0, 320, 0, tenFootButtonHeight) else UDim2.new(0, 260, 0, Theme.LargeButtonHeight)

		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 then
			updateButtonPosition("LeaveGame", UDim2.new(0.5, if isTenFootInterface then -160 else -130, 0.5, -25), buttonSize)
			updateButtonPosition("ResetCharacter", UDim2.new(0.5, if isTenFootInterface then -550 else -400, 0.5, -25), buttonSize)
			updateButtonPosition("Resume", UDim2.new(0.5, if isTenFootInterface then 200 else 140, 0.5, -25), buttonSize)
		end
	end

	local function addBottomBarButtonOld(name, text, gamepadImage, keyboardImage, position, clickFunc, hotkeys, hotFunc)
		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 then
			local buttonName = name .. "Button"
			local textName = name .. "Text"

			local size = UDim2.new(0,260,0,Theme.LargeButtonHeight)
			if isTenFootInterface then
				size = UDim2.new(0,320,0,BOTTOM_BUTTON_10FT_SIZE)
			end

			this[buttonName], this[textName] = utility:MakeStyledButton(name .. "Button", text, size, clickFunc, nil, this)

			if Flags.FFlagIEMButtonsResponsiveLayout then
				Create "UIListLayout" {
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,

					Parent = this[buttonName],
				}
				Create "UIPadding" {
					PaddingLeft = UDim.new(0.025, 0),

					Parent = this[buttonName],
				}
				-- replacing full width with flex grow width
				this[textName].Size = UDim2.new(0, 0, 1, 0)

				Create "UIFlexItem" {
					FlexMode = Enum.UIFlexMode.Grow,
					Parent = this[textName],
				}
			end

			this[buttonName].Position = position
			this[buttonName].Parent = this.BottomButtonFrame
			if isTenFootInterface then
				this[buttonName].ImageTransparency = 1
			end

			this[textName].FontSize = Enum.FontSize.Size24
			local hintLabel = nil

			if not isTouchDevice then
				if not Flags.FFlagIEMButtonsResponsiveLayout then
					local hintOffset = 9 + 33
					local rightPad = 9
					this[textName].Size = UDim2.new(1,-(hintOffset+rightPad),1.0,0)
					this[textName].Position = UDim2.new(1,-rightPad,0,0)
					this[textName].AnchorPoint = Vector2.new(1,0)
				end

				local hintName = name .. "Hint"
				local image = ""
				if UserInputService:GetGamepadConnected(Enum.UserInputType.Gamepad1) or platform == Enum.Platform.XBoxOne then
					image = gamepadImage
				else
					image = keyboardImage
				end

				hintLabel = Create'ImageLabel'
				{
					Name = hintName,
					ZIndex = this.Shield.ZIndex + 2,
					BackgroundTransparency = 1,
					Image = image,
					LayoutOrder = if Flags.FFlagIEMButtonsResponsiveLayout then -1 else 0,
					Parent = this[buttonName]
				};

				if image == keyboardImage then
					hintLabel.ImageColor3 = Theme.color("WhiteButtonText", Color3.new(1,1,1))
					hintLabel.ImageTransparency = Theme.transparency("WhiteButtonText", 1)
				end
				hintLabel.Position = UDim2.new(0,9,0.5,0)
				hintLabel.Size = UDim2.new(0,33,0,33)
				hintLabel.AnchorPoint = Vector2.new(0.0,0.5)
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
					hotFunc()
				end
			end

			local hotKeyTable = {hotKeyFunc, hotkeys}
			this.BottomBarButtons[#this.BottomBarButtons + 1] = {buttonName, hotKeyTable}
		end
	end

	local buttonImageAppend = ""

	if isTenFootInterface then
		buttonImageAppend = "@2x"
	end

	local buttonB, buttonX, buttonY

	if Flags.FFlagEnableConsoleExpControls then 
		buttonB = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonB)
		buttonX = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonX)
		buttonY = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonY)
	else
		buttonB = "rbxasset://textures/ui/Controls/DesignSystem/ButtonB" .. buttonImageAppend .. ".png"
		buttonX = "rbxasset://textures/ui/Controls/DesignSystem/ButtonX" .. buttonImageAppend .. ".png"
		buttonY = "rbxasset://textures/ui/Controls/DesignSystem/ButtonY" .. buttonImageAppend .. ".png"
	end

	local buttonStart = UserInputService:GetImageForKeyCode(Enum.KeyCode.ButtonStart)

	local voiceChatServiceConnected = false
	local muteChangedEvent = nil
	local settingShowSignalEvent = nil
	local function setupVoiceListeners()
		if game:GetEngineFeature("VoiceChatSupported")
			and not voiceChatServiceConnected
		then
			voiceChatServiceConnected = true
			local function showUI()
				this.VoiceRecordingText.Visible = true
				local VCS = VoiceChatServiceManager:getService()
				VCS.StateChanged:Connect(function(_oldState, newState)
					if newState == (Enum :: any).VoiceChatState.Joined then
						-- If voice has been turned off, but now rejoined
						this.VoiceRecordingText.Visible = true
					end
				end)
				VoiceChatServiceManager:SetupParticipantListeners()
				local callback = function(response)
					this.hasMicPermissions = response.hasMicPermissions
				end
				getCamMicPermissions(callback, nil, true, "PermissionsButtons.getPermissions")
				if Flags.GetFFlagMuteButtonRaceConditionFix() then
					muteChangedEvent = VoiceChatServiceManager.muteChanged.Event:Connect(function(muted)
						this.isMuted = muted
						this.lastVoiceRecordingIndicatorTextUpdated = tick()
						this.voiceRecordingIndicatorTextMotor:setGoal(Otter.instant(0))
						if this.isMuted then
							this.VoiceRecordingText.Text = tryTranslate("InGame.CommonUI.Label.MicOff", "Mic Off")
						else
							this.VoiceRecordingText.Text = tryTranslate("InGame.CommonUI.Label.MicOnRecording", "Mic On (recording audio)")
						end
					end)
				end
			end
			local function hideUI()
				this.VoiceRecordingText.Visible = false
				hideVoiceUx()
				if muteChangedEvent then
					muteChangedEvent:Disconnect()
				end
				if settingShowSignalEvent then
					settingShowSignalEvent:Disconnect()
				end
			end

			if VoiceChatServiceManager.voiceUIVisible then
				showUI()
			end
			VoiceChatServiceManager.showVoiceUI.Event:Connect(showUI)
			VoiceChatServiceManager.hideVoiceUI.Event:Connect(hideUI)
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
		if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
			return this:GetExperienceControlStore().getCanRespawn(false), this:GetExperienceControlStore().getCustomRespawnCallback(false)
		else
			return resetEnabled, customCallback
		end
	end

	this.RespawnBehaviourChangedEvent = Instance.new("BindableEvent")

	StarterGui:RegisterSetCore("ResetButtonCallback", function(callback)
		local isBindableEvent = typeof(callback) == "Instance" and callback:IsA("BindableEvent")
		if isBindableEvent or type(callback) == "boolean" then
			this.ResetCharacterPage:SetResetCallback(callback)
		else
			warn("ResetButtonCallback must be set to a BindableEvent or a boolean")
		end
		local resetEnabledValue = if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then this:GetExperienceControlStore().getCanRespawn(false) else resetEnabled
		if callback == false then
			if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
				this:GetExperienceControlStore().setCanRespawn(false)
			else
				setResetEnabled(false)
			end
		elseif not resetEnabledValue and (isBindableEvent or callback == true) then
			if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
				this:GetExperienceControlStore().setCanRespawn(true)
			else
				setResetEnabled(true)
			end
		end
		if isBindableEvent then
			if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
				this:GetExperienceControlStore().setCustomRespawnCallback(callback)
			else
				customCallback = callback
			end
		end
		if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
			this.RespawnBehaviourChangedEvent:Fire(this:GetExperienceControlStore().getCanRespawn(false), this:GetExperienceControlStore().getCustomRespawnCallback(false))
		else
			this.RespawnBehaviourChangedEvent:Fire(resetEnabled, customCallback)
		end
	end)

	StarterGui:RegisterGetCore("ResetButtonCallback", function()
		local isResetEnabled, _ = this:GetRespawnBehaviour()
		return isResetEnabled
	end)

	local setVisibilityInternal = nil

	local function createPermissionsButtons(shouldFillScreen)
		if Flags.GetFFlagRemovePermissionsButtons() then
			return
		end

		if FFlagInExperienceUseAppStyleProvider then
			return React.createElement(AppStyleProvider, {
				style = {
					themeName = DarkTheme,
				} ,
			}, {
				PermissionsButtons = Roact.createElement(PermissionsButtons, {
					isTenFootInterface = isTenFootInterface,
					isPortrait = utility:IsPortrait(),
					isSmallTouchScreen = utility:IsSmallTouchScreen(),
					ZIndex = this.Shield.ZIndex,
					LayoutOrder = -1,
					shouldFillScreen = shouldFillScreen,
					selfViewOpen = this.selfViewOpen,
					useNewMenuTheme = true,
					hubRef = if Flags.GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints() then this else nil,
				})
			})
		else
			return Roact.createElement(PermissionsButtons, {
				isTenFootInterface = isTenFootInterface,
				isPortrait = utility:IsPortrait(),
				isSmallTouchScreen = utility:IsSmallTouchScreen(),
				ZIndex = this.Shield.ZIndex,
				LayoutOrder = -1,
				shouldFillScreen = shouldFillScreen,
				selfViewOpen = this.selfViewOpen,
				useNewMenuTheme = true,
				hubRef = if Flags.GetFFlagEnableInExpPhoneVoiceUpsellEntrypoints() then this else nil,
			})
		end
	end

	local getCanRespawn, setCanRespawn = createSignal(true)
	local getCustomRespawnCallback, setCustomRespawnCallback = createSignal(nil)

	function this:GetExperienceControlStore(): ExperienceControlStore
		local handleSetCanRespawn = function(canRespawn: boolean)
			setCanRespawn(canRespawn)
			if this.ResetCharacterButton then
				this.ResetCharacterButton.Selectable = canRespawn
				this.ResetCharacterButton.Active = canRespawn
				this.ResetCharacterButton.Enabled.Value = canRespawn
				local resetHint = this.ResetCharacterButton:FindFirstChild("ResetCharacterHint")
				if resetHint then
					resetHint.ImageColor3 = (canRespawn and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100))
				end
				local resetButtonText = this.ResetCharacterButton:FindFirstChild("ResetCharacterButtonTextLabel")
				if resetButtonText then
					resetButtonText.TextColor3 = (canRespawn and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100))
				end
			end
		end

		return {
			getCanRespawn = getCanRespawn,
			getCustomRespawnCallback = getCustomRespawnCallback,
			setCanRespawn = handleSetCanRespawn,
			setCustomRespawnCallback = setCustomRespawnCallback,
			onLeaveGame = function(source: string)
				if not this:GetVisibility() then
					return
				end

				this:AddToMenuStack(this.Pages.CurrentPage)
				this.HubBar.Visible = false
				if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() and this.leaveGameUpsellProp ~= VoiceConstants.PHONE_UPSELL_VALUE_PROP.None then
					this:SwitchToPage(this.LeaveGameUpsellPage, false)
				else
					this:SwitchToPage(this.LeaveGamePage, false)
				end

				TelemetryService:LogCounter(MenuLeaveGameTelemetryConfig, {
					customFields = {
						source = source,
					},
				})
			end,
			onRespawn = function(source: string)
				if not getCanRespawn(false) then
					return
				end

				this:AddToMenuStack(this.Pages.CurrentPage)
				this.HubBar.Visible = false
				this:SwitchToPage(this.ResetCharacterPage, false)

				TelemetryService:LogCounter(MenuResetCharacterTelemetryConfig, {
					customFields = {
						source = source,
					},
				})
			end,
			onResume = function(source: string)
				if Flags.FFlagAddUILessMode then
					this:SetVisibility(false, nil, nil, nil, source)
				else
					this:SetVisibility(false)
				end

				if Flags.FFlagAddUILessMode and Flags.FIntAddUILessModeVariant ~= 0 and this.uiLessStore.getUILessModeEnabled(false) then
					this.uiLessStore.setUIVisible(false)
				end

				AnalyticsService:SetRBXEventStream(
					Constants.AnalyticsTargetName,
					Constants.AnalyticsResumeGameName,
					Constants.AnalyticsMenuActionName,
					{ 
						source = source, 
						playsessionid = this.playSessionId ,
						universeid = tostring(game.GameId) ,
					}
				)

				TelemetryService:LogCounter(MenuResumeTelemetryConfig, {
					customFields = {
						source = source,
					},
				})
			end,
		}
	end

	local mountMenuButtons = if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 
		then function()
			if Flags.FFlagMenuButtonsCheckVisibilityBeforeMount and this.BottomButtonFrameRoot then
				return
			end

			local experienceControlStore = this:GetExperienceControlStore()

			this.BottomButtonFrameRoot = ReactRoblox.createRoot(this.BottomButtonFrame)
			this.BottomButtonFrameRoot:render(React.createElement(MenuButtonsContainer, {
				onLeaveGame = experienceControlStore.onLeaveGame,
				onRespawn = experienceControlStore.onRespawn,
				onResume = experienceControlStore.onResume,
				setAddMenuKeyBindings = function(addMenuKeyBindings: () -> ())
					-- Passes the addKeyBindings function from MenuButtonsContainer to SettingsHub so it can be used here
					this.addMenuKeyBindings = addMenuKeyBindings
				end,
				setRemoveMenuKeyBindings = function(removeMenuKeyBindings: () -> ())
					-- Passes the removeKeyBindings function from MenuButtonsContainer to SettingsHub so it can be used here
					this.removeMenuKeyBindings = removeMenuKeyBindings
				end,
				getVisibility = function() 
					return this.GetVisibility() 
				end,
				getCanRespawn = experienceControlStore.getCanRespawn,
			}))
		end 
		else nil :: never

	local unmountMenuButtons = if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0
		then function()
			if this.BottomButtonFrameRoot then
				this.BottomButtonFrameRoot:unmount()
				this.BottomButtonFrameRoot = nil
			end
		end
		else nil :: never

	local function createGui()
		local PageViewSizeReducer = 0
		if utility:IsSmallTouchScreen() then
			PageViewSizeReducer = 5
		end

		this.ClippingShield = Create'Frame'
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


		local ShieldInstanceType = "ImageButton"

		this.CanvasGroup = Create("CanvasGroup")
		{
			Name = "CanvasGroup",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			GroupTransparency = 0,
			Visible = false,
			Parent = this.ClippingShield
		}

		this.Shield = Create(ShieldInstanceType)
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
		this.VRShield = Create("Frame") {
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
			this.VersionContainer = Create("ScrollingFrame") {
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
			this.VersionContainer = Create("Frame") {
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

		local _versionContainerLayout = Create("UIListLayout") {
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
		if Flags.GetFFlagDisplayServerChannel() then
			this.ServerChannelLabel = Create("TextLabel") {
				Name = "ServerChannelLabel",
				Parent = this.VersionContainer,
				LayoutOrder = 3,
				BackgroundTransparency = 1,
				TextColor3 = Color3.new(1,1,1),
				TextSize = Theme.textSize(isTenFootInterface and 28 or (utility:IsSmallTouchScreen() and 14 or 20)),
				Text = "Server Channel: ...",
				Font = Theme.font(Enum.Font.SourceSans, "SettingsHub"),
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				ZIndex = 5
			}
			spawn(function()
				local serverChannelString = "Server Channel: "
				if shouldTryLocalizeVersionLabels then
					serverChannelString = tryTranslate("InGame.HelpMenu.Label.ServerChannel", "Server Channel: ")
				end
				this.ServerChannelLabel.Text = serverChannelString..GetServerChannelBlocking()
				addSizeToLabel(this.ServerChannelLabel)
				this.ServerChannelLabel.TextScaled = not (canGetCoreScriptVersion or this.ServerChannelLabel.TextFits)
			end)
		end

		this.ServerVersionLabel = Create("TextLabel") {
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

		this.ClientVersionLabel = Create("TextLabel") {
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

		this.PlaceVersionLabel = Create("TextLabel") {
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

		local shouldShowEnvLabel = not CachedPolicyService:IsSubjectToChinaPolicies()

		if shouldShowEnvLabel then
			this.EnvironmentLabel = Create("TextLabel") {
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
				this.PlaySessionIdLabel = Create("TextLabel") {
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
			local starterPlayerScripts = StarterPlayer:WaitForChild("StarterPlayerScripts", if Flags.FFlagRemoveLoadingTimeout then math.huge else nil)
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

		this.OverridesPlayerScriptsLabel = Create("TextLabel") {
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
				rawValue = if Flags.GetFFlagNewEventIngestPlayerScriptsDimensions() then playerScriptStatus else nil,
				context = if Flags.GetFFlagNewEventIngestPlayerScriptsDimensions() then "IGMv1"else nil,
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
			this.CoreScriptVersionLabel = Create("TextLabel") {
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

		this.Modal = Create'TextButton' -- Force unlocks the mouse, really need a way to do this via UIS
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
			if Flags.FFlagSettingsHubIndependentBackgroundVisibility then
				this.DarkenBackground = Create("ImageButton")
				{
					Name = 'DarkenBackground',
					ZIndex = this.Shield.ZIndex-1,
					BackgroundTransparency = 1,
					BackgroundColor3 = if Flags.isInExperienceUIVREnabled
						then this.SettingsUIDelegate:getDarkBackgroundTheme().Color
						else Theme.color("DarkenBackground"),
					Size = UDim2.new(1,0,1,0),
					Parent = this.ClippingShield,
					AutoButtonColor = false,
					Visible = false,
				}
			else
				this.DarkenBackground = Create("Frame")
				{
					Name = 'DarkenBackground',
					ZIndex = this.Shield.ZIndex-1,
					BackgroundTransparency = 1,
					BackgroundColor3 = Theme.color("DarkenBackground"),
					Size = UDim2.new(1,0,1,0),
					Parent = this.ClippingShield,
				}
			end
		end

		local menuPos = Theme.MenuContainerPosition(this.SettingsUIDelegate)
		this.MenuContainer = Create(ShieldInstanceType)
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

		-- Root container for React pages
		if Flags.FFlagCreateInExperienceMenuReact then
			this.ReactPage.Parent = this.MenuContainer
		else
			this.ReactPage = createReactPage(this.MenuContainer)
		end

		-- Container for non-React pages
		this.Page = Create'Frame'
		{
			Name = 'Page',
			BackgroundTransparency = 1,
			AutomaticSize = Enum.AutomaticSize.XY,
			Parent = this.MenuContainer
		}

		local menuParent = this.Page 
		this.MenuContainerPadding = Create'UIPadding'
		{
			Parent = menuParent,
		}
		if not isTenFootInterface then
			local topCornerInset = GuiService:GetGuiInset()
			local paddingTop = topCornerInset.Y
			-- Audio/Video permissions bar takes up padding, but not voice recording indicator.
			paddingTop = 0
			this.MenuContainerPadding.PaddingTop = UDim.new(0, paddingTop)
		end

		do
			local pad = Theme.HubPadding()
			this.MenuContainer.AutoButtonColor = false
			this.MenuContainerPadding.PaddingLeft = pad.PaddingLeft
			this.MenuContainerPadding.PaddingRight = pad.PaddingRight
			this.MenuContainerPadding.PaddingBottom = pad.PaddingBottom
			this.MenuContainerPadding.PaddingTop = pad.PaddingTop

			Create'UICorner'
			{
				CornerRadius = Theme.MenuContainerCornerRadius,
				Parent = this.MenuContainer,
			}

			if Theme.EnableVerticalBottomBar then
				this.MainColumn = Create'Frame'
				{
					Name = 'MainColumn',
					BackgroundTransparency =1,
					Position = menuPos.Position,
					Size = menuPos.Size,
					AutomaticSize =Enum.AutomaticSize.XY,
					Parent = this.MenuContainer
				}

				menuParent = this.MainColumn

				this.VerticalMenuDivider = Create'Frame'
				{
					Name = 'VerticalMenuDivider',
					BackgroundTransparency = Theme.transparency("Divider"),
					BackgroundColor3 = Theme.color("Divider"),
					Size = UDim2.new(0,1, 1, -100),
					Visible = true,
					Parent = this.MenuContainer
				}
				this.VerticalMenu = Create'Frame'
				{
					Name = 'VerticalMenu',
					BackgroundTransparency =1,
					Size = UDim2.new(0, Theme.VerticalMenuWidth, 0, 100),
					Visible = false,
					Parent = this.MenuContainer
				}
				Create'UIListLayout'
				{
					Name = "MenuListLayout",
					Padding = UDim.new(0, 10),
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					Parent = this.VerticalMenu
				}

				this.MenuListLayout = Create'UIListLayout'
				{
					Name = "MenuListLayout",
					FillDirection = Enum.FillDirection.Horizontal,
					SortOrder = Enum.SortOrder.LayoutOrder,
					Parent = this.MenuContainer
				}
			end
		end

		if not Flags.GetFFlagRemovePermissionsButtons() and Flags.FFlagAvatarChatCoreScriptSupport then
			-- Create the settings buttons for audio/camera permissions.
			this.permissionsButtonsRoot = Roact.mount(createPermissionsButtons(true), this.Shield, "PermissionsButtons")
		end

		local setMicPermissionsCallback = function(response)
			this.hasMicPermissions = response.hasMicPermissions
			this.isFetchingMicPermissions = false
		end
		getCamMicPermissions(setMicPermissionsCallback, nil, true)

		this.SettingsShowSignal:connect(function(isOpen)
			if isOpen then
					if VoiceChatServiceManager:IsSeamlessVoice() and not VoiceChatServiceManager.voiceUIVisible then
						VoiceChatServiceManager.Analytics:reportJoinVoiceButtonEventWithVoiceSessionId("shown", VoiceChatServiceManager:GetConnectDisconnectButtonAnalyticsData(true))
					elseif VoiceChatServiceManager:IsSeamlessVoice() and VoiceChatServiceManager.voiceUIVisible then
						VoiceChatServiceManager.Analytics:reportLeaveVoiceButtonEvent("shown", VoiceChatServiceManager:GetConnectDisconnectButtonAnalyticsData(true))
					end

				if VoiceChatServiceManager:UserVoiceEnabled() then
					-- We may still be waiting for user to accept or deny mic permissions. If we are still waiting, don't fire the analytic event
					if this.isFetchingMicPermissions then
						return
					end
				end

				local userVoiceUpsellEligible = VoiceChatServiceManager:UserOnlyEligibleForVoice()
					or (VoiceChatServiceManager:UserVoiceEnabled() and not this.hasMicPermissions)

				-- Don't fetch age verification overlay data if user is not eligible for upsell
				if not userVoiceUpsellEligible then
					return
				end
			end
		end)

		this.MenuListLayout = Create'UIListLayout'
		{
			Name = "MenuListLayout",
			FillDirection = Enum.FillDirection.Vertical,
			VerticalAlignment = Enum.VerticalAlignment.Top,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = menuParent
		}

		do
			this.HubBar = Create'ImageLabel'
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

			Create'Frame'
			{
				BackgroundColor3 = Theme.color("Divider"),
				BackgroundTransparency = Theme.transparency("Divider"),
				BorderSizePixel = 0,
				Size = UDim2.new(1,0,0,1),
				Position = UDim2.new(0,0,1,0),
				AnchorPoint = Vector2.new(0,1),
				Parent = this.HubBar,
			}
		end

		this.HubBarListLayout = Create'UIListLayout'
		{
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = this.HubBar
		}

		if not Flags.FFlagAddTraversalBackButton then
			if Flags.EngineFeatureTeleportHistoryButtons then
				this.BackBarRef = Roact.createRef()
				this.FrontBarRef = Roact.createRef()
				this.BackBar = if FFlagBuilderIcons then
					Roact.createElement(RoactAppExperiment.Provider, {
						value = IXPService,
					}, 
					{
						AppStyleProvider = Roact.createElement(AppStyleProvider, {
							style = {
								themeName = DarkTheme,
							} ,
						}, {
							ButtonsFrame = Roact.createElement("Frame", {
								BackgroundTransparency = 1,
								LayoutOrder = -1,
								AutomaticSize = Enum.AutomaticSize.Y,
								Size = UDim2.new(1, 0, 0, 0)
							}, {
								BackButton = Roact.createElement(MenuBackButton, {
									BackBarRef = this.BackBarRef,
									HubBar = this.HubBar,
									LayoutOrder = 1,
								}),
								FrontButton = Roact.createElement(MenuFrontButton, {
									FrontBarRef = this.FrontBarRef,
									HubBar = this.HubBar,
									LayoutOrder = 2,
								}),
							})
						})
					}) else
					Roact.createElement(RoactAppExperiment.Provider, {
						value = IXPService,
					}, 
					{
						ButtonsFrame = Roact.createElement("Frame", {
							BackgroundTransparency = 1,
							LayoutOrder = -1,
							AutomaticSize = Enum.AutomaticSize.Y,
							Size = UDim2.new(1, 0, 0, 0)
						}, {
							BackButton = Roact.createElement(MenuBackButton, {
								BackBarRef = this.BackBarRef,
								HubBar = this.HubBar,
								LayoutOrder = 1,
							}),
							FrontButton = Roact.createElement(MenuFrontButton, {
								FrontBarRef = this.FrontBarRef,
								HubBar = this.HubBar,
								LayoutOrder = 2,
							}),
						})
					})
				Roact.mount(this.BackBar, menuParent, "BackBar")	
			else
				this.BackBarRef = Roact.createRef()
				this.BackBar = if FFlagBuilderIcons then 
					Roact.createElement(RoactAppExperiment.Provider, {
						value = IXPService,
					}, {
						AppStyleProvider = Roact.createElement(AppStyleProvider, {
							style = {
								themeName = DarkTheme,
							} ,
						}, {
							BackButton = Roact.createElement(MenuBackButton,{BackBarRef=this.BackBarRef, HubBar=this.HubBar}),
						})
					}) else
					Roact.createElement(RoactAppExperiment.Provider, {
						value = IXPService,
					}, {
						BackButton = Roact.createElement(MenuBackButton,{BackBarRef=this.BackBarRef, HubBar=this.HubBar}),
					})
				Roact.mount(this.BackBar, menuParent, "BackBar")
			end
		end

		if utility:IsSmallTouchScreen() then
			this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-100, 0, 50)
			this.HubBar.Position = UDim2.new(0.5,0,0,6)
		elseif isTenFootInterface then
			this.HubBar.Size = UDim2.new(0,1200,0,100)
			this.HubBar.Position = UDim2.new(0.5,0,0.1,0)
		else
			this.HubBar.Size = UDim2.new(0,800,0,60)
			this.HubBar.Position = UDim2.new(0.5,0,0.1,0)
		end

		this.VoiceRecordingIndicatorFrame = if not Flags.FFlagAvatarChatCoreScriptSupport then Create'Frame'
			{
				Size = if Flags.ChromeEnabled then UDim2.new(1, 0, 0, 100) else UDim2.fromOffset(0, 100),
				Position = UDim2.new(0,0,0,0),
				Parent = this.HubBar,
				BackgroundTransparency = 1,
			} else nil

		this.VoiceRecordingText = Create'TextLabel'
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
			}

		if utility:IsSmallTouchScreen() then
			this.VoiceRecordingText.Size = UDim2.fromScale(1, 1)
			this.VoiceRecordingText.AnchorPoint = Vector2.new(0,0)
			if Flags.ChromeEnabled then
				this.VoiceRecordingText.TextXAlignment = Enum.TextXAlignment.Right
				this.VoiceRecordingText.Position = UDim2.new(0,0,0,-60)
			else
				this.VoiceRecordingText.Position = UDim2.new(0,60,0,-60)
			end
		elseif isTenFootInterface then
			this.VoiceRecordingText.AnchorPoint = Vector2.new(0, 1)
			if Flags.ChromeEnabled then
				this.VoiceRecordingText.TextXAlignment = Enum.TextXAlignment.Right
				this.VoiceRecordingText.Size = UDim2.new(1,0,0,100)
				this.VoiceRecordingText.Position = UDim2.new(0,0,0.1,0)
			else
				this.VoiceRecordingText.Size = UDim2.new(0,1200,0,100)
				this.VoiceRecordingText.Position = UDim2.new(0.5,0,0.1,0)
			end
		else
			this.VoiceRecordingText.AnchorPoint = Vector2.new(0, 1)
			if Flags.ChromeEnabled then
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


		this.PageViewClipper = Create'Frame'
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

			Create'ImageButton'{
				Name = 'InputCapture',
				BackgroundTransparency = 1,
				Size = UDim2.new(1, 0, 1, 0),
				Image = ''
			}
		}


		if Flags.FFlagEnableConsoleExpControls and Flags.ChromeEnabled then 
			this.PageViewPadding = Create'UIPadding'
			{
				Parent = this.PageViewClipper,
			}

			local ChromeService = require(RobloxGui.Modules.Chrome.Service)
			ChromeService:onShortcutBarChanged():connect(function() 
				if utility:IsSmallTouchScreen() and ChromeService:getCurrentShortcutBar():get() ~= nil then
					this.PageViewPadding.PaddingBottom = UDim.new(0, Theme.ExtraPageBottomPaddingMobile)
					return
				end
				this.PageViewPadding.PaddingBottom = UDim.new(0, 0)
			end)
		end

		this.PageView = Create'ScrollingFrame'
		{
			Name = "PageView",
			AnchorPoint = Vector2.new(0.5, 0.5),
			Position = UDim2.new(0.5, 0, 0.5, 2),
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

		this.PageViewInnerFrame = Create'Frame'
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

		Create'UIPadding'
		{
			PaddingTop = UDim.new(0, 5),
			Parent = this.PageViewInnerFrame,
		}

		this.InnerCanvasGroupShow = Create("CanvasGroup")
		{
			Name = "InnerCanvasGroupShow",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			GroupTransparency = 0,
			Visible = false,
			Parent = this.PageViewInnerFrame
		}

		this.InnerCanvasGroupHide = Create("CanvasGroup")
		{
			Name = "InnerCanvasGroupHide",
			Size = UDim2.fromScale(1, 1),
			BackgroundTransparency = 1,
			GroupTransparency = 0,
			Visible = false,
			Parent = this.PageViewInnerFrame
		}

		if Theme.UseStickyBar() then
			this.PageView.AutomaticCanvasSize = Enum.AutomaticSize.Y
			Create'UIListLayout'
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

		this.BottomButtonFrame = Create'Frame'
		{
			Name = "BottomButtonFrame",
			Size = this.HubBar.Size,
			Position = UDim2.new(0.5, -this.HubBar.Size.X.Offset/2, 1-this.HubBar.Position.Y.Scale-this.HubBar.Size.Y.Scale, -this.HubBar.Position.Y.Offset-this.HubBar.Size.Y.Offset),
			ZIndex = this.Shield.ZIndex + 1,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			Parent = menuParent,
			Selectable = if Flags.FFlagIEMFocusNavToButtons then false else nil,
			SelectionGroup = if Flags.FFlagIEMFocusNavToButtons then true else nil,
			SelectionBehaviorLeft = if Flags.FFlagIEMFocusNavToButtons then Enum.SelectionBehavior.Stop else nil,
			SelectionBehaviorRight = if Flags.FFlagIEMFocusNavToButtons then Enum.SelectionBehavior.Stop else nil,
			SelectionBehaviorDown = if Flags.FFlagIEMFocusNavToButtons then Enum.SelectionBehavior.Stop else nil,
		};

		local resumeFunc = function(source)
			if Flags.FFlagAddUILessMode then
				setVisibilityInternal(false, nil, nil, nil, source)
			else
				setVisibilityInternal(false)
			end

			if Flags.FFlagAddUILessMode and Flags.FIntAddUILessModeVariant ~= 0 and this.uiLessStore.getUILessModeEnabled(false) then
				this.uiLessStore.setUIVisible(false)
			end

			AnalyticsService:SetRBXEventStream(
				Constants.AnalyticsTargetName,
				Constants.AnalyticsResumeGameName,
				Constants.AnalyticsMenuActionName,
				{
					source = source, 
					playsessionid = this.playSessionId , 
					universeid = tostring(game.GameId) ,
				}
			)
			if Flags.FFlagIEMResumeButtonPressBugfix then
				GuiService.SelectedCoreObject = nil
			end
		end


		if not Flags.FFlagMenuButtonsMountWithIEM then
			if Flags.FFlagRelocateMobileMenuButtons and (Flags.FIntRelocateMobileMenuButtonsVariant == 1 or Flags.FIntRelocateMobileMenuButtonsVariant == 3 or (Flags.FIntRelocateMobileMenuButtonsVariant == 2 and not utility:IsSmallTouchScreen())) then
				mountMenuButtons()
			end
		end

		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 or (Flags.FIntRelocateMobileMenuButtonsVariant == 2 and utility:IsSmallTouchScreen()) then
			this.BottomButtonFrame.Size = UDim2.new(1, 0, 0, 80)
		end

		this.MenuListLayout = Create'UIListLayout'
		{
			Padding = UDim.new(0, 12),
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			SortOrder = Enum.SortOrder.LayoutOrder,
			Parent = this.BottomButtonFrame
		}

		if Flags.FFlagEnableSystemScrimInSettingsHub then
			local systemScrimStore = require(CorePackages.Workspace.Packages.SystemScrim).SystemScrimSignalStore(false)
			systemScrimStore.backgroundScrimActivated.Event:Connect(function()
				if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
					this:GetExperienceControlStore().onResume(Constants.AnalyticsResumeShieldSource)
				else
					resumeFunc(Constants.AnalyticsResumeShieldSource)
				end
			end)
			-- TODO: APPEXP-3570 Removes Shield and migrate settings hub to new generation.
			this.Shield:GetPropertyChangedSignal("Visible"):Connect(function()
				systemScrimStore.setTransparency(1)
				systemScrimStore.setAutoDismiss(true)
				systemScrimStore.setVisibility(this.Shield.Visible)
			end)
		end
		
		this.Shield.Activated:Connect(function()
			if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
				this:GetExperienceControlStore().onResume(Constants.AnalyticsResumeShieldSource)
			else
				resumeFunc(Constants.AnalyticsResumeShieldSource)
			end
		end
		)

		if Flags.FFlagSettingsHubIndependentBackgroundVisibility then
			this.DarkenBackground.Activated:Connect(function()
				if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
					this:GetExperienceControlStore().onResume(Constants.AnalyticsResumeShieldSource)
				else
					resumeFunc(Constants.AnalyticsResumeShieldSource)
				end
				InExperienceAppChatModal.default:setVisible(false)
			end)
		end

        if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 then
			local leaveGameFunc = function()
				if Flags.FFlagPreventHiddenSwitchPage and this:GetVisibility() == false then
					return
				end

				this:AddToMenuStack(this.Pages.CurrentPage)
				this.HubBar.Visible = false
				removeBottomBarBindings()
				if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() and this.leaveGameUpsellProp ~= VoiceConstants.PHONE_UPSELL_VALUE_PROP.None then
					this:SwitchToPage(this.LeaveGameUpsellPage, nil, 1, true)
				else
					this:SwitchToPage(this.LeaveGamePage, nil, 1, true)
				end
			end

			local leaveGameText = "Leave"

			if InExperienceCapabilities.canNavigateHome then
				addBottomBarButtonOld("LeaveGame", leaveGameText, buttonX,
					"rbxasset://textures/ui/Settings/Help/LeaveIcon.png", UDim2.new(0.5,isTenFootInterface and -160 or -130,0.5,-25),
					leaveGameFunc, {Enum.KeyCode.L, if not (Flags.FFlagEnableConsoleExpControls and Flags.ChromeEnabled) then Enum.KeyCode.ButtonX else nil}, leaveGameFunc
				)
			end

			local resetCharFunc = function()
				if resetEnabled then
					this:AddToMenuStack(this.Pages.CurrentPage)
					this.HubBar.Visible = false
					removeBottomBarBindings()
					this:SwitchToPage(this.ResetCharacterPage, nil, 1, true)
				end
			end

			local RESET_TEXT = localization:Format(Constants.RespawnLocalizedKey)
			addBottomBarButtonOld("ResetCharacter", RESET_TEXT, buttonY,
				"rbxasset://textures/ui/Settings/Help/ResetIcon.png", UDim2.new(0.5,isTenFootInterface and -550 or -400,0.5,-25),
				resetCharFunc, {Enum.KeyCode.R, if not (Flags.FFlagEnableConsoleExpControls and Flags.ChromeEnabled) then Enum.KeyCode.ButtonY else nil}, resetCharFunc
			)

			local resumeGameText = "Resume"
			local resumeButtonFunc = function()
				resumeFunc(Constants.AnalyticsResumeButtonSource)
			end
			local resumeHotkeyFunc = function()
				resumeFunc(Constants.AnalyticsResumeGamepadSource)
			end
			addBottomBarButtonOld("Resume", resumeGameText, if Flags.FFlagEnableConsoleExpControls then buttonStart else buttonB,
				"rbxasset://textures/ui/Settings/Help/EscapeIcon.png", UDim2.new(0.5,isTenFootInterface and 200 or 140,0.5,-25),
				resumeButtonFunc, if not (Flags.FFlagEnableConsoleExpControls and Flags.ChromeEnabled) then {Enum.KeyCode.ButtonB, Enum.KeyCode.ButtonStart} else {}, resumeHotkeyFunc
			)
		end

		if Flags.FFlagAddSwitchTabHintsToIEM then
			local function MountSwitchTabHint(props: {
				keycode: Enum.KeyCode, 
				parent: Instance,
				layoutOrder: number?,
			})
				local SwitchTabHintContainer = Create "Frame" {
					Name = "SwitchTabHintContainer",
					Size = UDim2.fromScale(0, 1),
					BackgroundTransparency = 1,
					AutomaticSize = Enum.AutomaticSize.X,
					LayoutOrder = props.layoutOrder,
					Parent = props.parent,
				}

				local SwitchTabHintRoot = ReactRoblox.createRoot(SwitchTabHintContainer)
				SwitchTabHintRoot:render(React.createElement(React.Fragment, nil, 
					React.createElement("UIListLayout", {
						Name = "SwitchTabHintCenterAlign",
						FillDirection = Enum.FillDirection.Vertical,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
					React.createElement(FoundationProvider, {
						theme = Foundation.Enums.Theme.Dark,
						device = SettingsUtils.getDeviceType(),
					}, {
						["SwitchTabHint" .. props.keycode.Name] = React.createElement(SwitchTabHint, {
							keycode = props.keycode,
						})
					})
				))
			end

			this.TabHeaderContainer = Create "Frame" {
				Name = "TabHeaderContainer",
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				Parent = this.HubBar,
			}
			
			this.TabHeaderContainerListLayout = Create "UIListLayout" {
				FillDirection = Enum.FillDirection.Horizontal,
				HorizontalFlex = Enum.UIFlexAlignment.Fill,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Parent = this.TabHeaderContainer,
			}

			MountSwitchTabHint({
				keycode = Enum.KeyCode.ButtonL1,
				parent = this.TabHeaderContainer,
				layoutOrder = -999 -- ordered first
			})
			MountSwitchTabHint({
				keycode = Enum.KeyCode.ButtonR1,
				parent = this.TabHeaderContainer,
				layoutOrder = 999 -- ordered last
			})
		end

		do
			this.HubBarContainer = Create'ImageLabel'
			{
				Name = "HubBarContainer",
				ZIndex = this.Shield.ZIndex + 2,
				BorderSizePixel = 0,
				BackgroundColor3 = Theme.color("HubBarContainer"),
				BackgroundTransparency = Theme.transparency("HubBarContainerTransparency"),
				Size = if Theme.ShowHomeButton then UDim2.new(1, -70, 1, 0) else UDim2.new(1, 0, 1, 0),
				Position = if Theme.ShowHomeButton then UDim2.new(0, 70, 0, 0) else UDim2.new(0, 0, 0, 0),
				Parent = if Flags.FFlagAddSwitchTabHintsToIEM then this.TabHeaderContainer else this.HubBar,
			}

			this.HubBar.ImageTransparency = 1
			this.HubBarListLayout.Parent = this.HubBarContainer

			if Theme.ShowHomeButton then
				this.HubBarHomeButton = Create'ImageButton'
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
				Create'UICorner'
				{
					CornerRadius = Theme.DefaultCornerRadius,
					Parent = this.HubBarHomeButton,
				}
				this.HubBarHomeButtonAspectRatio = Create'UIAspectRatioConstraint'
				{
					AspectRatio = 1,
					DominantAxis = Enum.DominantAxis.Height,
					Parent = this.HubBarHomeButton
				}
				this.HubBarHomeButtonIcon = Create'ImageLabel'
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
					this.HubBarHomeButton.BackgroundColor3 = Theme.color("HubBarHomeButtonHover")
					this.HubBarHomeButton.BackgroundTransparency = Theme.transparency("HubBarHomeButtonTransparencyHover")
				end)
				this.HubBarHomeButton.MouseLeave:Connect(function()
					this.HubBarHomeButton.BackgroundColor3 = Theme.color("HubBarHomeButton")
					this.HubBarHomeButton.BackgroundTransparency = Theme.transparency("HubBarHomeButtonTransparency")
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
			Theme.viewportResized()
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
		if Flags.isInExperienceUIVREnabled then
			maxButtonWidth = this.SettingsUIDelegate:getBottomButtonSize(maxButtonWidth)
		end
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

		local function getFrontBarVisible()
			if not this.FrontBarRef:getValue() then
				return false
			end
			return this.FrontBarRef:getValue().Visible
		end

		if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant == 2 then
			if not Flags.FFlagMenuButtonsCheckVisibilityBeforeMount or this.Visible then
				if not (utility:IsPortrait() or utility:IsSmallTouchScreen()) or Theme.AlwaysShowBottomBar() then
					-- Mount when menu buttons move from top to bottom of IEM (portrait to landscape mode)
					if not this.BottomButtonFrameRoot then
						mountMenuButtons()
					end
					if this.PlayersPage then
						this.PlayersPage:UnmountMenuButtonsContainer()
					end
				else
					-- Mount when menu buttons move from bottom to top of IEM (landscape to portrait mode)
					if this.BottomButtonFrameRoot then
						unmountMenuButtons()
					end
					if this.PlayersPage then
						this.PlayersPage:CreateMenuButtonsContainer()
					end
				end
			end
		end

		local menuPos = Theme.MenuContainerPosition(this.SettingsUIDelegate)
		local largestPageSize = 600
		local fullScreenSize
		if Flags.isInExperienceUIVREnabled then
			fullScreenSize = this.SettingsUIDelegate:getFullScreenSize()
		else
			fullScreenSize = RobloxGui.AbsoluteSize.y
		end
		local bufferSize = (1-0.95) * fullScreenSize
		local isPortrait = utility:IsPortrait()

		if isTenFootInterface then
			largestPageSize = 800
			bufferSize = 0.07 * fullScreenSize
		elseif utility:IsSmallTouchScreen() then
			bufferSize = math.min(10, (1-0.99) * fullScreenSize)
		elseif Flags.isInExperienceUIVREnabled and VRService.VREnabled then
			bufferSize = 0
		end

		if Flags.FFlagAddNextUpContainer then
			if this.Pages.CurrentPage and this.Pages.CurrentPage.DisableTopPadding and this.Pages.CurrentPage.MaintainVerticalSize then
				largestPageSize += this.HubBar.AbsoluteSize.Y
			end
		end

		this.MenuContainer.Size = menuPos.Size
		this.MenuContainer.Position = menuPos.Position
		this.MenuContainer.AnchorPoint = menuPos.AnchorPoint

		local barSize = this.HubBar.Size.Y.Offset
		local extraSpace = bufferSize*2+barSize*2

		local extraTopPadding = 0
		if not Flags.FFlagAddTraversalBackButton then
			if getBackBarVisible() and this.BackBarRef:getValue() then 
				extraTopPadding = this.BackBarRef:getValue().Size.Y.Offset 
			end

			if (Flags.EngineFeatureTeleportHistoryButtons) and getFrontBarVisible() and this.FrontBarRef:getValue() then
				extraTopPadding = extraTopPadding + this.FrontBarRef:getValue().Size.Y.Offset
			end
		end

		if Theme.EnableVerticalBottomBar then
			this.VerticalMenu.Visible = false
			this.VerticalMenuDivider.Visible = false
			for i = 1, #this.BottomBarButtonsComponents do
				local button = this.BottomBarButtonsComponents[i]
				button.Parent = this.BottomButtonFrame
			end
		end

		if isPortrait then
			this.HubBar.Position = UDim2.new(0.5, 0, 0, 10)
			this.HubBar.Size = UDim2.new(0, RobloxGui.AbsoluteSize.X-40, 0, 54)
		else
			if isTenFootInterface then
				this.HubBar.Size = UDim2.new(0, 1200, 0, 100)
			elseif utility:IsSmallTouchScreen() then
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
				if Flags.isInExperienceUIVREnabled then
					this.HubBar.Size = UDim2.new(0, this.SettingsUIDelegate:getHubBarSize(), 0, 60)
				else
					this.HubBar.Size = UDim2.new(0, 800, 0, 60)
				end

				if not Flags.GetFFlagRemovePermissionsButtons() and Flags.FFlagAvatarChatCoreScriptSupport then
					-- Reconfigure these buttons to take a new parent to be next to
					-- the close button.
					if this.permissionsButtonsRoot then
						Roact.unmount(this.permissionsButtonsRoot)
					end
					this.permissionsButtonsRoot = Roact.mount(createPermissionsButtons(false), this.Shield, "PermissionsButtons")
				end
			end
		end

		if not Theme.AlwaysShowBottomBar() then
			barSize = this.HubBar.Size.Y.Offset
		else
			barSize = this.HubBar.Size.Y.Offset + this.BottomButtonFrame.Size.Y.Offset
		end
		extraSpace = bufferSize*2+(if (not Flags.FFlagFixDisableTopPaddingError or this.Pages.CurrentPage ~= nil) and this.Pages.CurrentPage.DisableTopPadding then 0 else barSize)
		if not Flags.FFlagAddTraversalBackButton then
			extraTopPadding = if getBackBarVisible() and this.BackBarRef:getValue() then this.BackBarRef:getValue().Size.Y.Offset else 0
			if Flags.EngineFeatureTeleportHistoryButtons and getFrontBarVisible() and this.FrontBarRef:getValue() then
				extraTopPadding = extraTopPadding + this.FrontBarRef:getValue().Size.Y.Offset
			end
		end

		--We need to wait and let the HubBar AbsoluteSize actually update.
		--This is in the same frame, so the delay should be very minimal.
		--Maybe in the future we need to have a way to force AbsoluteSize
		--to update, or we can just avoid using it so soon.
		if not Flags.FFlagAddNextUpContainer then
			RunService.Heartbeat:wait()
		end

		if shouldShowBottomBar() then
			setBottomBarBindings()
			if Flags.FFlagIEMFocusNavToButtons then
				setBottomBarSelection(this.Pages.CurrentPage)
			end
		else
			removeBottomBarBindings()
		end
		
		if Flags.isInExperienceUIVREnabled then
			extraSpace += this.SettingsUIDelegate:getMenuContainerExtraSpace()
		end

		local usableScreenHeight = fullScreenSize - extraSpace - extraTopPadding
		-- Account for extra bottom padding on mobile screens
		if Flags.FFlagRelocateMobileMenuButtons and (Flags.FIntRelocateMobileMenuButtonsVariant == 1 or Flags.FIntRelocateMobileMenuButtonsVariant == 3) then
			if utility:IsSmallTouchScreen() then
				usableScreenHeight -= Theme.ExtraHubBottomPaddingMobile
			end
		end
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
				local frontButtonExtraSize = 0

				if Flags.FFlagRelocateMobileMenuButtons and (Flags.FIntRelocateMobileMenuButtonsVariant == 1 or Flags.FIntRelocateMobileMenuButtonsVariant == 3) then
					newPageViewClipperSize = UDim2.new(
						0,
						this.HubBar.AbsoluteSize.X,
						0,
						usePageSize + backButtonExtraSize + frontButtonExtraSize - this.BottomButtonFrame.Size.Y.Offset
					)
				else
					newPageViewClipperSize = UDim2.new(
						0,
						this.HubBar.AbsoluteSize.X,
						0,
						usePageSize + backButtonExtraSize + frontButtonExtraSize
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
		else
			newPageViewClipperSize = UDim2.new(
				0,
				this.HubBar.AbsoluteSize.X,
				0,
				usePageSize
			)
		end

		if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
			if this.BottomButtonFrame then
				this.BottomButtonFrame.Size = UDim2.new(0, this.HubBar.Size.X.Offset, 0, this.HubBar.Size.Y.Offset)
			end
		end

		if Flags.FFlagAddNextUpContainer then
			if this.Pages.CurrentPage and this.Pages.CurrentPage.ShrinkwrapPageViewClipper and not utility:IsSmallTouchScreen() then
				local pageSize = this.Pages.CurrentPage:GetSize()
				newPageViewClipperSize = UDim2.new(
					newPageViewClipperSize.X.Scale, 
					newPageViewClipperSize.X.Offset, 
					newPageViewClipperSize.Y.Scale, 
					math.min(pageSize.Y - this.PageView.Size.Y.Offset, usePageSize)
				)
			end
		end

		-- Set React page size to match the size of the entire menu
		local padding = Theme.HubPadding()
		local paddingX = padding.PaddingLeft.Offset + padding.PaddingRight.Offset
		local paddingY = padding.PaddingTop.Offset + padding.PaddingBottom.Offset
		this.ReactPage.Size = UDim2.new(0, this.HubBar.AbsoluteSize.X + paddingX, 0, usePageSize + barSize + paddingY)

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
		if Flags.FFlagInExperienceReportClosingBugfix and not this.HubBar.Visible then
			return
		end
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
	if Flags.isInExperienceUIVREnabled or Flags.FFlagEnableSettingsHubUIDelegateRollout then
		local SettingsUIDelegate = require(RobloxGui.Modules.Settings.SettingsUIDelegate)
		this.SettingsUIDelegate = SettingsUIDelegate.new(this)
	end
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
		newHeader.Parent = this.HubBarContainer
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
		if Flags.FFlagIEMFocusNavToButtons then
			pageToAdd.LastSelectableObjectsUpdated:connect(function()
				setBottomBarSelection(pageToAdd)
			end)
		end
	end

	function this:RemovePage(pageToRemove)
		this.Pages.PageTable[pageToRemove] = nil
		RemoveHeader(pageToRemove:GetTabHeader())
		if Flags.FFlagIEMFocusNavToButtons then
			pageToRemove.LastSelectableObjectsUpdated:disconnect()
		end
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
			if Flags.FFlagIEMFocusNavToButtons then
				setBottomBarSelection(this.Pages.CurrentPage)
			end
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
			elseif this.Pages.CurrentPage.Page.Name == Constants.PeoplePageKey and by - this.PageView.CanvasPosition.y > this.PageView.AbsoluteSize.Y - Constants.PeoplePageScrollBuffer then
				this.PageView.CanvasPosition = Vector2.new(0, by - this.PageView.AbsoluteSize.Y + Constants.PeoplePageScrollBuffer)
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

		if not Flags.FFlagRelocateMobileMenuButtons or Flags.FIntRelocateMobileMenuButtonsVariant == 0 or (Flags.FIntRelocateMobileMenuButtonsVariant == 2 and utility:IsSmallTouchScreen()) then
			-- set top & bottom bar visibility
			if this.BottomButtonFrame then
				if shouldShowBottomBar(pageToSwitchTo) then
					setBottomBarBindings()
					if Flags.FFlagIEMFocusNavToButtons then
						setBottomBarSelection(pageToSwitchTo)
					end
				else
					this.BottomButtonFrame.Visible = false
				end

				this.HubBar.Visible = shouldShowHubBar(pageToSwitchTo)
			end
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
		this.CurrentPageSignal:fire(this.Pages.CurrentPage and this.Pages.CurrentPage.Page.Name or nil)

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

		if Flags.FFlagPreventHiddenSwitchPage and this:GetVisibility() == false then
			return
		end

		if FFlagFixReportButtonCutOff then
			if pageToSwitchTo.Page.Name == "ReportAbuseMenuNewContainerPage" then
				this.PageViewInnerFrame.UIPadding.PaddingTop = UDim.new(0, 0)
			else
				this.PageViewInnerFrame.UIPadding.PaddingTop = UDim.new(0, 5)
			end
		end

		local topExtra = UDim.new(0, 0)
		local bottomExtra = UDim.new(0, 0)
		local hasBottomButtons = (not (utility:IsPortrait() or utility:IsSmallTouchScreen())) or Theme.AlwaysShowBottomBar()
		if Flags.FFlagRelocateMobileMenuButtons and (Flags.FIntRelocateMobileMenuButtonsVariant == 1 or Flags.FIntRelocateMobileMenuButtonsVariant == 3 or (Flags.FIntRelocateMobileMenuButtonsVariant == 2 and not utility:IsSmallTouchScreen())) then
			hasBottomButtons = true
		end

		if this.HubBar and not shouldShowHubBar(pageToSwitchTo) and not pageToSwitchTo.DisableTopPadding then
			topExtra = UDim.new(0, this.HubBar.AbsoluteSize.Y)
		end

		if this.BottomButtonFrame and hasBottomButtons and not shouldShowBottomBar(pageToSwitchTo) and not (Flags.FFlagAddNextUpContainer and pageToSwitchTo.ShrinkwrapPageViewClipper) then
			bottomExtra = UDim.new(0, this.BottomButtonFrame.AbsoluteSize.Y)
		end

		local pad = Theme.HubPadding()
		this.MenuContainerPadding.PaddingLeft = pad.PaddingLeft
		this.MenuContainerPadding.PaddingRight =  pad.PaddingRight
		this.MenuContainerPadding.PaddingBottom = pad.PaddingBottom + bottomExtra
		this.MenuContainerPadding.PaddingTop = pad.PaddingTop + topExtra

		local menuPos = Theme.MenuContainerPosition(this.SettingsUIDelegate)
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
		elseif Flags.FFlagAddNextUpContainer and pageToSwitchTo.ShrinkwrapPageViewClipper then
			local cs = this.PageViewClipper.Size
			local pageSize = pageToSwitchTo:GetSize()
			this.PageViewClipper.Size = UDim2.new(cs.X.Scale, this.HubBar.Size.X.Offset, cs.Y.Scale, pageSize.Y)
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
				if Flags.FFlagIEMFocusNavToButtons then
					setBottomBarSelection(pageToSwitchTo)
				end
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
		this.CurrentPageSignal:fire(this.Pages.CurrentPage and this.Pages.CurrentPage.Page.Name or nil)

		if Theme.UseStickyBar() == false then
			local pageSize = this.Pages.CurrentPage:GetSize()
			this.PageView.CanvasSize = UDim2.new(0,0, 0,pageSize.Y)

			pageChangeCon = this.Pages.CurrentPage.Page.Changed:connect(function(prop)
				if prop == "AbsoluteSize" then
					local pageSize = this.Pages.CurrentPage:GetSize()
					this.PageView.CanvasSize = UDim2.new(0,0, 0,pageSize.Y)

					if Flags.FFlagAddNextUpContainer then
						if this.Pages.CurrentPage.ShrinkwrapPageViewClipper then
							onScreenSizeChanged()
						end
					end
				end
			end)

			if this.MenuStack[#this.MenuStack] ~= this.Pages.CurrentPage and not ignoreStack then
				this.MenuStack[#this.MenuStack + 1] = this.Pages.CurrentPage
			end
		end

		if Flags.FFlagAddNextUpContainer then
			onScreenSizeChanged()
		else 
			-- When switching page, we want to call this to expand PageViewClipper size if needed by TopPadding being disabled
			if pageToSwitchTo.DisableTopPadding then
				onScreenSizeChanged()
			end
		end

		local eventTable = {}
		eventTable["universeid"] = tostring(game.GameId)
		if Flags.GetFFlagReportAbuseMenuEntrypointAnalytics() and eventData then
			eventTable = Cryo.Dictionary.join(eventTable, eventData)
		end

		if Flags.FFlagRespawnChromeShortcutTelemetry then
			if eventTable["used_shortcut"] == nil then
				eventTable["used_shortcut"] = false
			end
		end
		if eventTable["playsessionid"] == nil then
			eventTable["playsessionid"] = this.playSessionId
		end

		if pageToSwitchTo then
			if Flags.FFlagHelpPageIXPExposure and this.HelpPage == pageToSwitchTo and not this.HelpPageIXPFetched then 
				IXPServiceWrapper:LogUserLayerExposure(Flags.FStringHelpPageIXPLayer)
				this.HelpPageIXPFetched = true
			end

			if this.GameSettingsPage == pageToSwitchTo then
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, "open_GameSettings_tab", Constants.AnalyticsMenuActionName, eventTable)
				if Flags.FFlagInExperienceMenuReorderFirstVariant and not this.GameSettingsPageReorderIXPFetched then
					local layer = Flags.GetFStringInExperienceMenuIXPLayer()
					local ixpVar = Flags.GetFStringInExperienceMenuIXPVar()
					local layerData = IXPServiceWrapper:GetLayerData(layer)
					if layerData ~= nil and layerData[ixpVar] ~= nil then
						IXPServiceWrapper:LogUserLayerExposure(layer)
						this.GameSettingsPageReorderIXPFetched = true
					end
				end
			else
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, "open_" .. pageToSwitchTo.Page.Name .. "_tab", Constants.AnalyticsMenuActionName, eventTable)
			end
			ExperienceMenuSessionManagerInstance:MenuSwitchToPage(pageToSwitchTo.Page)
		else
			AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, "open_unknown_tab", Constants.AnalyticsMenuActionName, eventTable)
			ExperienceMenuSessionManagerInstance:CloseOpenedMenuTab()
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
		if not this.Visible then
			return
		end

		if UserInputService:GetLastInputType() == Enum.UserInputType.Gamepad1 or VRService.VREnabled then
			MouseIconOverrideService.push(SETTINGS_HUB_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceHide)
		else
			MouseIconOverrideService.push(SETTINGS_HUB_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
		end
	end

	function checkLeaveGameUpsell()
		if not Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() then
			return
		end

		-- os.time seems to fail occasionally, so if its nil we'll try once to recover during the check
		if not this.sessionStartTime then
			this.sessionStartTime = os.time()
		end
		if not this.sessionStartTime then
			return
		end

		if not this.checkedUpsell and this.leaveGameUpsellProp == VoiceConstants.PHONE_UPSELL_VALUE_PROP.None then
			this.checkedUpsell = true
			this.leaveGameUpsellProp = VoiceChatServiceManager:FetchPhoneVerificationUpsell(
				VoiceConstants.EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER,
				this.sessionStartTime,
				true
			)
			this.LeaveGameUpsellPage:SetUpsellProp(this.leaveGameUpsellProp)
			task.delay(CHECK_LEAVE_GAME_UPSELL_COOLDOWN, function()
				this.checkedUpsell = false
			end)
		elseif this.checkedUpsell then
			-- This just checks local cache unless it hasn't been set yet
			local newUpsellProp = VoiceChatServiceManager:FetchPhoneVerificationUpsell(VoiceConstants.EXIT_CONFIRMATION_PHONE_UPSELL_IXP_LAYER, this.sessionStartTime, false)
			if this.leaveGameUpsellProp ~= newUpsellProp then
				this.leaveGameUpsellProp = newUpsellProp
				this.LeaveGameUpsellPage:SetUpsellProp(this.leaveGameUpsellProp)
			end
		end

	end
	local setBackgroundVisibilityInternal = nil
	if Flags.FFlagSettingsHubIndependentBackgroundVisibility then
		setBackgroundVisibilityInternal = function(visible, noAnimation)
			if not this.DarkenBackground then
				return
			end

			if not visible and this.DarkenBackground.Visible then
				if InExperienceAppChatModal:getVisible() or this.Visible then
					return
				end
			end

			local goalTransparency = 1
			local easingStyle = Enum.EasingStyle.Quart
			local movementTime = 0

			movementTime = if Constants then Constants.ShieldCloseAnimationTweenTime else 0.4

			if visible then
				goalTransparency = if Flags.isInExperienceUIVREnabled
					then this.SettingsUIDelegate:getDarkBackgroundTheme().Transparency
					else Theme.transparency("DarkenBackground")
				easingStyle = Enum.EasingStyle.Quad
				movementTime = if Constants then Constants.ShieldOpenAnimationTweenTime else 0.5
			end

			if noAnimation then
				if this.DarkenBackgroundTween then
					this.DarkenBackgroundTween:Cancel()
					this.DarkenBackgroundTween = nil
				end
				this.DarkenBackground.BackgroundTransparency = goalTransparency
			else
				local tweenInfo = TweenInfo.new(
					movementTime,
					easingStyle,
					Enum.EasingDirection.Out
				)
				if this.DarkenBackgroundTween then
					this.DarkenBackgroundTween:Cancel()
				end
				this.DarkenBackgroundTween = TweenService:Create(this.DarkenBackground, tweenInfo, {BackgroundTransparency = goalTransparency})
				this.DarkenBackgroundTween:Play()
			end

			this.DarkenBackground.Visible = visible
		end
	end
	function setVisibilityInternal(visible, providedNoAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
		local noAnimation
		if Flags.isInExperienceUIVREnabled then
			noAnimation = providedNoAnimation or not this.SettingsUIDelegate:isOpenCloseAnimationAllowed()
		else
			noAnimation = providedNoAnimation
		end
		this.OpenStateChangedCount = this.OpenStateChangedCount + 1

		local visibilityChanged = visible ~= this.Visible
		this.Visible = visible

		if Flags.FFlagEnableInGameMenuDurationLogger and visibilityChanged and not visible then
			PerfUtils.menuClose()
		end

		if this.ResizedConnection then
			this.ResizedConnection:disconnect()
			this.ResizedConnection = nil
		end

		if this.BackBarVisibleConnection then
			this.BackBarVisibleConnection:disconnect()
			this.BackBarVisibleConnection = nil
		end

		if Flags.EngineFeatureTeleportHistoryButtons and this.FrontBarVisibleConnection then
			this.FrontBarVisibleConnection:disconnect()
			this.FrontBarVisibleConnection = nil
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

		if Flags.FFlagSettingsHubIndependentBackgroundVisibility then
			setBackgroundVisibilityInternal(this.Visible, noAnimation)
		end

		if this.Visible then
			this.ResizedConnection = RobloxGui.Changed:connect(function(prop)
				if prop == "AbsoluteSize" then
					onScreenSizeChanged()
				end
			end)

			if Flags.FFlagMenuButtonsMountWithIEM then
				if Flags.FFlagRelocateMobileMenuButtons and (Flags.FIntRelocateMobileMenuButtonsVariant == 1 or Flags.FIntRelocateMobileMenuButtonsVariant == 3 or (Flags.FIntRelocateMobileMenuButtonsVariant == 2 and not utility:IsSmallTouchScreen())) then
					mountMenuButtons()
				end

				if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant == 2 and utility:IsSmallTouchScreen() then
					if this.PlayersPage then
						this.PlayersPage:CreateMenuButtonsContainer()
					end
				end
			end

			if not Flags.FFlagAddTraversalBackButton then
				if this.BackBarRef:getValue() then
					this.BackBarVisibleConnection = this.BackBarRef:getValue():GetPropertyChangedSignal("Visible"):connect(function()
						onScreenSizeChanged()
					end)
				end
				if Flags.EngineFeatureTeleportHistoryButtons and this.FrontBarRef:getValue() then
					this.FrontBarVisibleConnection = this.FrontBarRef:getValue():GetPropertyChangedSignal("Visible"):connect(function()
						onScreenSizeChanged()
					end)
				end
			end
			onScreenSizeChanged()

			this.PreferredTransparencyChangedConnection = GuiService:GetPropertyChangedSignal("PreferredTransparency"):connect(function()
				onPreferredTransparencyChanged()
			end)
			onPreferredTransparencyChanged()

			this.SettingsShowSignal:fire(this.Visible)

			GuiService:SetMenuIsOpen(true, SETTINGS_HUB_MENU_KEY)
			ExperienceMenuSessionManagerInstance:OpenExperienceMenu()
			this.Shield.Visible = this.Visible
			GuiService:CloseInspectMenu()

			if noAnimation or not this.Shield:IsDescendantOf(game) then
				this.Shield.Position = UDim2.new(0, 0, 0, 0)
				if not Flags.FFlagSettingsHubIndependentBackgroundVisibility then
					if this.DarkenBackground then
						if this.DarkenBackgroundTween then
							this.DarkenBackgroundTween:Cancel()
							this.DarkenBackgroundTween = nil
						end
						this.DarkenBackground.BackgroundTransparency = Theme.transparency("DarkenBackground")
					end
				end
			else
				local movementTime: number = if Constants then Constants.ShieldOpenAnimationTweenTime else 0.5

				if GameSettings.ReducedMotion then

					if this.ReducedMotionOpenTween then
						this.ReducedMotionOpenTween:Cancel()
						this.ReducedMotionOpenTween = nil
					end
					if this.ReducedMotionCloseTween then
						this.ReducedMotionCloseTween:Cancel()
						this.ReducedMotionCloseTween = nil
					end

					this.Shield.Parent = this.CanvasGroup
					this.CanvasGroup.GroupTransparency = 1
					this.CanvasGroup.Visible = true
					this.Shield.Position = UDim2.new(0, 0, 0, 0)

					local tweenInfo = TweenInfo.new(0.25)
					local tweenProps = {
						GroupTransparency = 0
					}
					this.ReducedMotionOpenTween = TweenService:Create(this.CanvasGroup, tweenInfo, tweenProps)
					this.ReducedMotionOpenTween:Play()

					this.ReducedMotionOpenTween.Completed:Connect(function(playbackState)
						if playbackState == Enum.PlaybackState.Completed then
							this.Shield.Parent = this.ClippingShield
							this.ReducedMotionOpenTween = nil
						end

						this.CanvasGroup.Visible = false
					end)

					if Flags.FFlagEnableInGameMenuDurationLogger then
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
							if Flags.FFlagEnableInGameMenuDurationLogger then
								PerfUtils.menuOpenComplete()
							end
						end
					)
				end

				if not Flags.FFlagSettingsHubIndependentBackgroundVisibility then
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
				end
			end

			local noOpFunc = function() end
			if Flags.isInExperienceUIVREnabled then
				noOpFunc = function(actionName, inputState, inputObject): Enum.ContextActionResult?
					if this.SettingsUIDelegate:isInputEventNeededBySettings(actionName, inputState, inputObject) then
						return Enum.ContextActionResult.Pass
					end
					return nil
				end
			end
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
				if Flags.FFlagIEMFocusNavToButtons then
					setBottomBarSelection(this.Pages.CurrentPage)
				end
			end

			if Flags.ChromeEnabled and Flags.FFlagEnableConsoleExpControls then
				local ChromeService = require(RobloxGui.Modules.Chrome.Service)
				local ChromeConstants = require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants)
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_SHORTCUTBAR_ID)
			end

			this.TabConnection = UserInputService.InputBegan:connect(switchTabFromKeyboard)

			setOverrideMouseIconBehavior()
			lastInputChangedCon = UserInputService.LastInputTypeChanged:connect(setOverrideMouseIconBehavior)
			if UserInputService.MouseEnabled and not VRService.VREnabled then
				MouseIconOverrideService.push(SETTINGS_HUB_MOUSE_OVERRIDE_KEY, Enum.OverrideMouseIconBehavior.ForceShow)
			end

			-- Make sure React page is not open by default
			this:CloseReactPage()

			if customStartPage then
				removeBottomBarBindings()
				this:SwitchToPage(customStartPage, nil, 1, true)
			else
				this:SwitchToPage(this:GetFirstPageWithTabHeader(), nil, 1, true)
			end

			if (if Flags.isInExperienceUIVREnabled and not Flags.InExperienceUIVRIXP:isMovePanelToCenter() then not VRService.VREnabled else true) then
				if Flags.FFlagAddNewPlayerListMobileFocusNav then
					if playerList:GetIsModal() then
						-- Close modal PlayerList
						playerList:SetVisibility(false)
					else
						-- Temporarily hide side-view PlayerList
						playerList:HideTemp('SettingsMenu', true)
					end
				else 
					playerList:HideTemp('SettingsMenu', true)
				end

				if
					not (Flags.isInExperienceUIVREnabled
					and Flags.InExperienceUIVRIXP:isMovePanelToCenter()
					and Flags.FFlagSpatialUIFixMenuPanelChatExclusive
					and VRService.VREnabled)
				then
					chat:HideTemp('SettingsMenu', true)
				end

				local backpack = require(RobloxGui.Modules.BackpackScript)
				if backpack.IsOpen then
					backpack:OpenClose()
				end
			end

			if Flags.GetFFlagEnableAppChatInExperience() and InExperienceAppChatModal:getVisible() then
				connectWasVisible = true
				InExperienceAppChatModal.default:setVisible(false)
			end

			if not Flags.isInExperienceUIVREnabled then
				local backpack = require(RobloxGui.Modules.BackpackScript)
				if backpack.IsOpen then
					backpack:OpenClose()
				end
			end

			this.GameSettingsPage:OpenSettingsPage()
		else
			this.CurrentPageSignal:fire("")

			if Flags.FFlagMenuButtonsMountWithIEM and Flags.FFlagRelocateMobileMenuButtons then
				if Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
					unmountMenuButtons()
				end

				if Flags.FIntRelocateMobileMenuButtonsVariant == 2 then
					if this.PlayersPage then
						this.PlayersPage:UnmountMenuButtonsContainer()
					end
				end
			end
			
			if Flags.ChromeEnabled and Flags.FFlagEnableConsoleExpControls then
				local ChromeService = require(RobloxGui.Modules.Chrome.Service)
				local ChromeConstants = require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants)
				ChromeService:setShortcutBar(ChromeConstants.UNIBAR_SHORTCUTBAR_ID)
			end

			if Flags.GetFFlagEnableAppChatInExperience() and connectWasVisible then
				connectWasVisible = false
			end

			if Flags.isInExperienceUIVREnabled and Flags.InExperienceUIVRIXP:isMovePanelToCenter() then
				playerList:HideTemp('SettingsMenu', false)

				if not (Flags.FFlagSpatialUIFixMenuPanelChatExclusive and VRService.VREnabled) then
					chat:HideTemp('SettingsMenu', false)
				end
			end

			if noAnimation then
				this.Shield.Position = SETTINGS_SHIELD_INACTIVE_POSITION
				this.Shield.Visible = this.Visible
				this.SettingsShowSignal:fire(this.Visible)
				GuiService:SetMenuIsOpen(false, SETTINGS_HUB_MENU_KEY)
				ExperienceMenuSessionManagerInstance:CloseExperienceMenu()
				if Flags.FFlagEnableInGameMenuDurationLogger then
					PerfUtils.menuCloseComplete()
				end

				if not Flags.FFlagSettingsHubIndependentBackgroundVisibility then
					if this.DarkenBackground then
						if this.DarkenBackgroundTween then
							this.DarkenBackgroundTween:Cancel()
							this.DarkenBackgroundTween = nil
						end
						this.DarkenBackground.BackgroundTransparency = 1
					end
				end
			else
				local movementTime: number = if Constants then Constants.ShieldCloseAnimationTweenTime else 0.4

				local function handleShieldClose()
					if not Flags.FFlagAddTraversalBackButton then
						this.SettingsShowSignal:fire(this.Visible)
					end
					if not this.Visible then
						GuiService:SetMenuIsOpen(false, SETTINGS_HUB_MENU_KEY)
						ExperienceMenuSessionManagerInstance:CloseExperienceMenu()
					end
					if Flags.FFlagEnableInGameMenuDurationLogger then
						PerfUtils.menuCloseComplete()
					end
				end

				if Flags.FFlagAddTraversalBackButton then
					this.SettingsShowSignal:fire(this.Visible)
				end

				if GameSettings.ReducedMotion then
					if this.ReducedMotionOpenTween then
						this.ReducedMotionOpenTween:Cancel()
						this.ReducedMotionOpenTween = nil
					end
					if this.ReducedMotionCloseTween then
						this.ReducedMotionCloseTween:Cancel()
						this.ReducedMotionCloseTween = nil
					end

					this.Shield.Parent = this.CanvasGroup
					this.CanvasGroup.Visible = true

					local tweenInfo = TweenInfo.new(0.25)
					local tweenProps = {
						GroupTransparency = 1
					}
					this.ReducedMotionCloseTween = TweenService:Create(this.CanvasGroup, tweenInfo, tweenProps)
					this.ReducedMotionCloseTween:Play()
					this.ReducedMotionCloseTween.Completed:Connect(function(playbackState)
						if playbackState == Enum.PlaybackState.Completed then
							this.Shield.Position = SETTINGS_SHIELD_INACTIVE_POSITION

							this.Shield.Visible = this.Visible
							this.Shield.Parent = this.ClippingShield
							this.ReducedMotionCloseTween = nil
						end
						this.CanvasGroup.Visible = false
					end)

					handleShieldClose()
				else
					if Flags.ChromeEnabled and Flags.FFlagEnableConsoleExpControls then 
						local ChromeService = require(RobloxGui.Modules.Chrome.Service)
						local ChromeConstants = require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants)
						ChromeService:setShortcutBar(ChromeConstants.UNIBAR_SHORTCUTBAR_ID)
					end
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

				if not Flags.FFlagSettingsHubIndependentBackgroundVisibility then
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

			if Flags.isInExperienceUIVREnabled then
				if not Flags.InExperienceUIVRIXP:isMovePanelToCenter() and not VRService.VREnabled then
					playerList:HideTemp('SettingsMenu', false)
					chat:HideTemp('SettingsMenu', false)
				end
			else
				playerList:HideTemp('SettingsMenu', false)

				chat:HideTemp('SettingsMenu', false)
			end

			if not VRService.VREnabled then
				MouseIconOverrideService.pop(SETTINGS_HUB_MOUSE_OVERRIDE_KEY)
			end

			-- Close React page when IEM is closed
			this:CloseReactPage()

			clearMenuStack()

			ContextActionService:UnbindCoreAction("RbxSettingsHubSwitchTab")
			ContextActionService:UnbindCoreAction("RbxSettingsHubStopCharacter")
			ContextActionService:UnbindCoreAction("RbxSettingsScrollHotkey")

			removeBottomBarBindings(0.4)
			GuiService.SelectedCoreObject = nil

			this.GameSettingsPage:CloseSettingsPage()

			if this.ShareGamePage then
				this.ShareGamePage:ClearShareInviteLink(this.ShareGameApp)
			end
		end

		local visibilityAnalyticsPayload = {
			source = analyticsContext,
			playsessionid = this.playSessionId ,
			universeid = tostring(game.GameId) ,
		}

		if visibilityChanged then
			if visible then
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsMenuOpenName, Constants.AnalyticsMenuActionName, visibilityAnalyticsPayload )
				if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() then
					task.spawn(checkLeaveGameUpsell)
				end
			else
				AnalyticsService:SetRBXEventStream(Constants.AnalyticsTargetName, Constants.AnalyticsMenuCloseName, Constants.AnalyticsMenuActionName, visibilityAnalyticsPayload )
			end
		end
	end

	function this:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
		if this.Visible == visible then return end

		setVisibilityInternal(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
	end

	function this:SetBackgroundVisibility(visible, noAnimation)
		if this.DarkenBackground.Visible == visible then return end

		setBackgroundVisibilityInternal(visible, noAnimation)
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
		if Flags.GetFFlagLuaInExperienceCoreScriptsGameInviteUnification() and Flags.FFlagLuaEnableGameInviteModalSettingsHub then
			local layer = Flags.GetFStringGameInviteMenuLayer()
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
			if Flags.FFlagEnableConsoleExpControls and Flags.ChromeEnabled then
				local ChromeService = require(RobloxGui.Modules.Chrome.Service)
				ChromeService:setShortcutBar(nil)
			end
		else
			this:AddToMenuStack(this.Pages.CurrentPage)
			this:SwitchToPage(this.ShareGamePage, nil, 1, true)
		end
	end

	function this:PopMenu(switchedFromGamepadInput, skipAnimation, analyticsContext)
		if this.MenuStack and #this.MenuStack > 0 then
			local lastStackItem = this.MenuStack[#this.MenuStack]

			if type(lastStackItem) ~= "table" then
				PoppedMenuEvent:Fire(lastStackItem)
			end

			table.remove(this.MenuStack, #this.MenuStack)
			this:SwitchToPage(this.MenuStack[#this.MenuStack], true, 1, skipAnimation)
			if #this.MenuStack == 0 then
				if Flags.FFlagAddUILessMode then
					this:SetVisibility(false, nil, nil, nil, analyticsContext)
				else
					this:SetVisibility(false)
				end

				this.Pages.CurrentPage:Hide(0, 0, nil, nil, this.PageViewInnerFrame)
			elseif Flags.ChromeEnabled and Flags.FFlagEnableConsoleExpControls then 
				local ChromeService = require(RobloxGui.Modules.Chrome.Service)
				local ChromeConstants = require(RobloxGui.Modules.Chrome.ChromeShared.Unibar.Constants)
				ChromeService:setShortcutBar(ChromeConstants.TILTMENU_SHORTCUTBAR_ID)
			end
		else
			this.MenuStack = {}
			PoppedMenuEvent:Fire()
			if Flags.FFlagAddUILessMode then
				this:ToggleVisibility(nil, analyticsContext)
			else
				this:ToggleVisibility(analyticsContext)
			end
		end
	end

	function this:ShowShield()
		local shieldTransparency = 0
		if UserInputService.VREnabled then
			shieldTransparency = SETTINGS_SHIELD_VR_TRANSPARENCY
		else
			shieldTransparency = SETTINGS_SHIELD_TRANSPARENCY
		end
		this.Shield.BackgroundTransparency = shieldTransparency
	end

	function this:HideShield()
		this.Shield.BackgroundTransparency = 1
	end

	function this:ShowReactPage()
		if this.reactPage then
			this.reactPageAnalytics:openPage(this.reactPage.name)
		end

		this.ReactPage.Visible = true
		this.Page.Visible = false
	end

	function this:HideReactPage()
		if this.reactPage then
			this.reactPageAnalytics:closePage(this.reactPage.name)
		end

		this.ReactPage.Visible = false
		this.Page.Visible = true
		if Flags.FFlagCreateInExperienceMenuReact and Flags.FFlagIEMFocusNavToButtons and this.Pages.CurrentPage then
			this.Pages.CurrentPage:SelectARow(true)
		end
	end

	function this:MountReactPage()
		if Flags.FFlagCreateInExperienceMenuReact then
			ReactPageSignal(false).setCurrentReactPage(nil) -- clear any portalled pages
		end
		if this.reactPageRoot then
			this:UnmountReactPage()
		end
		this.reactPageRoot = ReactRoblox.createRoot(this.ReactPage)
	end

	function this:UnmountReactPage()
		if this.reactPageRoot then
			this.reactPageRoot:unmount()
			this.reactPageRoot = nil
		end
	end

	function this:CloseReactPage()
		this:HideReactPage()
		this:UnmountReactPage()
	end

	function this:SwitchToReactPage(page: ReactPage?, props: any, willPortal: boolean?)
		if Flags.FFlagCreateInExperienceMenuReact and willPortal then
			this:UnmountReactPage()
		elseif page then
			this.reactPage = page

			if not this.reactPageRoot then
				this:MountReactPage()
			end

			this.reactPageRoot:render(page:createPage(props))
		end
		this:ShowReactPage()
	end

	local thisModuleName = "SettingsMenu"
	this.GameSettingsPageReorderIXPFetched = false
	local vrMenuOpened, vrMenuClosed = nil, nil
	local function enableVR()
		local VRHub = require(RobloxGui.Modules.VR.VRHub)
		local Panel3D = require(CorePackages.Workspace.Packages.VrCommon).Panel3D
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

		local Panel3D = require(CorePackages.Workspace.Packages.VrCommon).Panel3D
		local panel = Panel3D.Get(thisModuleName)
		panel:SetVisible(false)
	end

	local function refreshForSpatialUI()
		onScreenSizeChanged()
		onPreferredTransparencyChanged()
		resizeBottomBarButtons()
	end

	local function OnVREnabled(prop)
		if prop == "VREnabled" then
			if UserInputService.VREnabled then
				if Flags.isInExperienceUIVREnabled then
					-- Entry point of the SpatialUI configuration which will only be present in VR mode
					this.SettingsUIDelegate:enableVR()
					refreshForSpatialUI()
				else
					enableVR()
				end
			else
				if Flags.isInExperienceUIVREnabled then
					this.SettingsUIDelegate:disableVR()
					refreshForSpatialUI()
				else
					disableVR()
				end
			end
		end
	end
	UserInputService.Changed:connect(OnVREnabled)
	OnVREnabled("VREnabled")

	this.ResetCharacterPage:SetHub(this)

	if InExperienceCapabilities.canNavigateHome then
		this.LeaveGamePage:SetHub(this)
	end

	-- full page initialization
	if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() then
		this.LeaveGameUpsellPage:SetHub(this)
	end

	this.GameSettingsPage = require(RobloxGui.Modules.Settings.Pages.GameSettingsWrapper)
	this.GameSettingsPage:SetHub(this)

	this.ReportAbusePage = require(RobloxGui.Modules.Settings.Pages.ReportAbuseMenuNewContainerPage)
	this.ReportAbusePage:SetHub(this)

	if Flags.GetFFlagAbuseReportEnableReportSentPage() then
		this.ReportSentPage = require(RobloxGui.Modules.Settings.Pages.ReportSentPage)
		this.ReportSentPage:SetHub(this)
	end

	this.ReportSentPageV2 = require(RobloxGui.Modules.Settings.Pages.ReportSentPageV2)
	this.ReportSentPageV2:SetHub(this)

	this.HelpPage = require(RobloxGui.Modules.Settings.Pages.HelpWrapper)
	this.HelpPage:SetHub(this)
	if Flags.FFlagHelpPageIXPExposure then
		this.HelpPageIXPFetched = false
	end

	if not Flags.FFlagRemoveRecordPage then
		local shouldShowRecord = not CachedPolicyService:IsSubjectToChinaPolicies()

		if platform == Enum.Platform.Windows and shouldShowRecord then
			this.RecordPage = require(RobloxGui.Modules.Settings.Pages.Record)
			this.RecordPage:SetHub(this)
		end
	end

	if InExperienceCapabilities.canListPeopleInSameServer then
		this.PlayersPage = require(RobloxGui.Modules.Settings.Pages.PeopleWrapper)
		this.PlayersPage:SetHub(this)
		if not Flags.FFlagMenuButtonsMountWithIEM then
			if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant == 2 and utility:IsSmallTouchScreen() then
				this.PlayersPage:CreateMenuButtonsContainer()
			end
		end
	end
	
	if Flags.FFlagAddIEMProfilePage then
		this.PlayerProfilePage = require(RobloxGui.Modules.Settings.Pages.PlayerProfile)
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

	local policy = CapturesPolicy.PolicyImplementation.read()
	local eligibleForCapturesFeature = if policy then CapturesPolicy.Mapper(policy).eligibleForCapturesFeature() else false

	if eligibleForCapturesFeature then
		local CapturesPageWrapper = require(RobloxGui.Modules.Settings.Pages.CapturesPageWrapper)

		local function closeSettingsMenu()
			this:SetVisibility(false, true)
		end

		this.CapturesApp = CapturesApp
		this.CapturesApp.mountMenuPage(CapturesPageWrapper.Page, closeSettingsMenu, Flags.ChromeEnabled)

		this.CapturesPage = CapturesPageWrapper
		this.CapturesPage:ConnectHubToApp(this, this.PageViewClipper, this.CapturesApp)
	end

	-- page registration
	if this.PlayersPage then
		this:AddPage(this.PlayersPage)
	end

	this:AddPage(this.ResetCharacterPage)

	if this.LeaveGamePage then
		this:AddPage(this.LeaveGamePage)
	end

	if Flags.GetFFlagEnableLeaveGameUpsellEntrypoint() and this.LeaveGameUpsellPage then
		this:AddPage(this.LeaveGameUpsellPage)
	end

	this:AddPage(this.GameSettingsPage)

	if this.CapturesPage then
		this:AddPage(this.CapturesPage)
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
	if not Flags.FFlagRemoveRecordPage then
		if this.RecordPage and not this.CapturesPage then
			this:AddPage(this.RecordPage)
		end
	end
	if this.ExitModalPage then
		this:AddPage(this.ExitModalPage)
	end

	if this.LeaveGameToHomePage then
		this:AddPage(this.LeaveGameToHomePage)
	end

	this:InitInPage(this:GetFirstPageWithTabHeader())
		if not Flags.isNewInGameMenuEnabled() then
			--If the new in game menu is enabled the settings hub is just used for the gamepad leave game prompt
			--as a special case until gamepad support for the new menu is complete.
			if not Flags.FFlagAddUILessMode or Flags.FIntAddUILessModeVariant == 0 then
				local closeMenuFunc = function(name, inputState, input)
					if inputState ~= Enum.UserInputState.Begin then return end
					if Flags.FFlagAddUILessMode then
						this:PopMenu(false, true, Constants.AnalyticsMenuOpenTypes.Keyboard)
					else
						this:PopMenu(false, true)
					end
				end
				ContextActionService:BindCoreAction("RBXEscapeMainMenu", closeMenuFunc, false, Enum.KeyCode.Escape)
			end
		end

	-- hook up to necessary signals

	-- connect back button on android
	GuiService.ShowLeaveConfirmation:connect(function()
		if #this.MenuStack == 0 then
			this:SetVisibility(true, nil, nil, nil, Constants.AnalyticsMenuOpenTypes.GamepadLeaveGame)
			this:SwitchToPage(this:GetFirstPageWithTabHeader(), nil, 1)
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
				if Flags.FFlagEnableInGameMenuDurationLogger then
					PerfUtils.leavingGame()
				end
				if Flags.FFlagRelocateMobileMenuButtons and Flags.FIntRelocateMobileMenuButtonsVariant ~= 0 then
					unmountMenuButtons()
					if Flags.FFlagMenuButtonsMountWithIEM and Flags.FIntRelocateMobileMenuButtonsVariant == 2 and this.PlayersPage then
						this.PlayersPage:UnmountMenuButtonsContainer()
					end
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

	if Flags.GetFFlagEnableAppChatInExperience() then
		local connection = nil

		this.SettingsShowSignal:connect(function(visible)
			if visible then
				connection = InExperienceAppChatModal.default.visibilitySignal.Event:Connect(function(visible)
					if visible and this.Visible then
						this:SetVisibility(false, true)
					end
				end)
			else
				if connection then
					connection:Disconnect()
					connection = nil
				end
			end
		end)
	end

	if Flags.FFlagCreateInExperienceMenuReact then
		this.InExperienceMenuReact = Create "Folder" {
			Name = "InExperienceMenuReact",
			Parent = this.ClippingShield
		}

		local playersButtonsContainer
		local leaveButtonMobile
		if Flags.FFlagIEMButtonsResponsiveLayout then
			playersButtonsContainer = this.PlayersPage.ButtonsContainer
			leaveButtonMobile = if playersButtonsContainer then playersButtonsContainer:FindFirstChild("LeaveButtonButton", true) else nil
		end

		local leaveGameButton
		if Flags.FFlagAddTraversalHistory then
			leaveGameButton = this["LeaveGameButton"]
		end

		local InExperienceMenuReactRoot = ReactRoblox.createRoot(this.InExperienceMenuReact)
		InExperienceMenuReactRoot:render(React.createElement(InExperienceMenuReact, nil, {
			InExperienceMenuReactPage = React.createElement(InExperienceMenuReactPage, {
				onMount = function() this:SwitchToReactPage(nil, nil, true) end,
				onUnmount = function() 
					this:CloseReactPage() 
					ReactPageSignal(false).setCurrentReactPage(nil) 
				end,
				mountTo = this.ReactPage :: GuiObject,
			}),
			TraversalHistoryMenuBottomBar = Flags.FFlagAddTraversalHistory and not (Flags.isInExperienceUIVREnabled and isSpatial()) and leaveGameButton 
				and React.createElement(PortalWithFoundationStylelink, {
					parent = leaveGameButton,
				}, {
					TraversalHistoryMenu = React.createElement(TraversalHistoryMenu, {
						anchorParent = leaveGameButton,
						idleButtonStateIsDown = true,
						currentPageChangeSignal = this.CurrentPageSignal,
					}),
				}),
			TraversalHistoryMenuMobileButton = Flags.FFlagAddTraversalHistory and not (Flags.isInExperienceUIVREnabled and isSpatial()) and leaveButtonMobile 
				and React.createElement(PortalWithFoundationStylelink, {
					parent = leaveButtonMobile,
				}, {
					TraversalHistoryMenu = React.createElement(TraversalHistoryMenu, {
						anchorParent = leaveButtonMobile,
						idleButtonStateIsDown = false,
						currentPageChangeSignal = this.CurrentPageSignal,
					}),
				}),
		}))
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

function moduleApiTable:GetExperienceControlStore()
	return SettingsHubInstance:GetExperienceControlStore()
end

function moduleApiTable:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
	SettingsHubInstance:SetVisibility(visible, noAnimation, customStartPage, switchedFromGamepadInput, analyticsContext)
end

function moduleApiTable:SetBackgroundVisibility(visible, noAnimation)
	SettingsHubInstance:SetBackgroundVisibility(visible, noAnimation)
end

function moduleApiTable:ToggleVisibility(switchedFromGamepadInput, analyticsContext)
	SettingsHubInstance:ToggleVisibility(switchedFromGamepadInput, analyticsContext)
end

function moduleApiTable:SwitchToPage(pageToSwitchTo, ignoreStack)
	SettingsHubInstance:SwitchToPage(pageToSwitchTo, ignoreStack, 1)
end

if Flags.FFlagAddUILessMode and Flags.FIntAddUILessModeVariant ~= 0 then
	function moduleApiTable:PopMenu(switchedFromGamepadInput, skipAnimation, analyticsContext)
		return SettingsHubInstance:PopMenu(switchedFromGamepadInput, skipAnimation, analyticsContext)
	end
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

function moduleApiTable:CloseReactPage()
	SettingsHubInstance:CloseReactPage()
end

function moduleApiTable:SwitchToReactPage(page, props, willPortal)
	SettingsHubInstance:SwitchToReactPage(page, props, willPortal)
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
