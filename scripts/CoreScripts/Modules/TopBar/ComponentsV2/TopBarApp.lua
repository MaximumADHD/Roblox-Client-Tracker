-- Services
local CoreGui = game:GetService("CoreGui")
local CorePackages = game:GetService("CorePackages")
local VRService = game:GetService("VRService")

-- Paths
local TopBar = script.Parent.Parent
local Packages = TopBar.Parent
local Components = TopBar.Components
local Presentation = Components.Presentation
local Chrome = TopBar.Parent.Chrome

local Constants = require(TopBar.Constants)
local MusicConstants = require(Chrome.Integrations.MusicUtility.Constants)

-- Modules
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics
local CoreGuiCommon = require(CorePackages.Workspace.Packages.CoreGuiCommon)
local CoreScriptsRoactCommon = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon)
local Foundation = require(CorePackages.Packages.Foundation)
local Display = require(CorePackages.Workspace.Packages.Display)
local React = require(CorePackages.Packages.React)
local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local Signals = require(CorePackages.Packages.Signals)
local SignalsReact = require(CorePackages.Packages.SignalsReact)
local SettingsShowSignal = require(CorePackages.Workspace.Packages.CoreScriptsCommon).SettingsShowSignal
local Songbird = require(CorePackages.Workspace.Packages.Songbird)
local Traversal = CoreScriptsRoactCommon.Traversal
local UIBlox = require(CorePackages.Packages.UIBlox)
local UniversalAppPolicy = require(CorePackages.Workspace.Packages.UniversalAppPolicy)

-- Flags
local FFlagAddMenuNavigationToggleDialog = SharedFlags.FFlagAddMenuNavigationToggleDialog
local FFlagGamepadNavigationDialogABTest = require(TopBar.Flags.FFlagGamepadNavigationDialogABTest)
local FFlagAddTraversalBackButton = Traversal.Flags.FFlagAddTraversalBackButton
local GetFFlagEnableCrossExpVoice = SharedFlags.GetFFlagEnableCrossExpVoice
local GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice =
	SharedFlags.GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial
local FFlagDisableGamepadConnectorInVR = require(CorePackages.Workspace.Packages.Chrome).Flags.FFlagDisableGamepadConnectorInVR
local FFlagEnableSideSheet = SharedFlags.FFlagEnableSideSheet
local FFlagAddTopBarPoliciesToUniversalPolicies = SharedFlags.FFlagAddTopBarPoliciesToUniversalPolicies
local FFlagAddIGMToSideSheet = SharedFlags.FFlagAddIGMToSideSheet
local FFlagAppNavMyStatsTab = SharedFlags.FFlagAppNavMyStatsTab
local InExperienceShop = require(CorePackages.Workspace.Packages.InExperienceShop)
local FFlagEnableInExperienceShop = SharedFlags.FFlagEnableInExperienceShop
local FFlagEnableExperienceShopGlobalIcon = InExperienceShop.FFlagEnableExperienceShopGlobalIcon and FFlagEnableInExperienceShop
local ShopGlobalIcon = InExperienceShop.ShopGlobalIcon

-- Components 
local View = Foundation.View
local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local AssistantBuildButton = require(Components.AssistantBuildButton)
local canShowAssistantBuild = require(Components.canShowAssistantBuild)
local GamepadConnector = require(Components.GamepadConnector)
local GamepadNavigationDialog = require(Presentation.GamepadNavigationDialog)
local HealthBar = CoreGuiCommon.Components.HealthBar
local HurtOverlay = CoreGuiCommon.Components.HurtOverlay
local HeadsetDisconnectDialog = CoreGuiCommon.Components.HeadsetDisconnectDialog
local MenuIcon = require(TopBar.ComponentsV2.MenuIcon)
local MenuIconContext = require(Components.MenuIconContext)
local MenuNavigationToggleDialog = require(Presentation.GamepadMenu.MenuNavigationToggleDialog)
local TraversalBackButton = require(Components.TraversalBackButton)
local VRBottomBar = if isInExperienceUIVREnabled
	then require(Components.VRBottomUnibar)
	else require(Packages.VR.VRBottomBar.VRBottomBar)

local ChromeAnalytics = if game:GetEngineFeature("InGameChromeSignalAPI") 
	then require(Chrome.ChromeShared.Analytics) 
	else nil
local JoinVoiceBinder = if game:GetEngineFeature("VoiceChatSupported") and GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice()
	then require(Chrome.Integrations.JoinVoiceBinder)
	else nil
local PartyMicBinder = require(Chrome.Integrations.Party.PartyMicBinder)
local Unibar = require(Chrome.ChromeShared.Unibar)
local VoiceChatServiceManager = require(Packages.VoiceChat.VoiceChatServiceManager).default
local VoiceStateContext = require(Packages.VoiceChat.VoiceStateContext)
local ChromeService = if FFlagEnableExperienceShopGlobalIcon then require(Chrome.Service) else nil
local ChromeConstants = if FFlagEnableExperienceShopGlobalIcon
	then require(Chrome.ChromeShared.Unibar.Constants)
	else nil
local CommonIcon = if FFlagEnableExperienceShopGlobalIcon and FFlagAddIGMToSideSheet
	then require(Chrome.Integrations.CommonIcon)
	else nil
local useMappedSignal = if FFlagEnableExperienceShopGlobalIcon
	then require(CorePackages.Workspace.Packages.Chrome).Hooks.useMappedSignal
	else nil
local shopIsActiveMappedSignal = if FFlagEnableExperienceShopGlobalIcon and ChromeService and ChromeConstants
	then (require(Chrome.ChromeShared.Service.ChromeUtils)).MappedSignal.new(
		ChromeService:onIntegrationStatusChanged(),
		function()
			return ChromeService:isWindowOpen(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
		end
	)
	else nil

type TopBarProps = {}

local function getShopGlobalIconEnabled(scope)
	if not FFlagEnableExperienceShopGlobalIcon then
		return false
	end
	local getStore = InExperienceShop.GetShopGlobalIconStore
	return if getStore then getStore(scope).getEnabled(scope) else false
end

local function getShopGlobalStatusIndicatorEnabled(scope)
	if not FFlagEnableExperienceShopGlobalIcon then
		return false
	end
	local getStore = InExperienceShop.GetShopGlobalIconStore
	return if getStore then getStore(scope).getStatusIndicatorEnabled(scope) else false
end

local function handleShopGlobalIconActivated()
	if not FFlagEnableExperienceShopGlobalIcon then
		return
	end
	if ChromeService and ChromeConstants then
		ChromeService:toggleWindow(ChromeConstants.IN_EXPERIENCE_SHOP_ID)
	end
end

local function TopBarApp(props: TopBarProps)
	local useFoundationTokens = Foundation.Hooks.useTokens
	local showBadgeOver12 = UniversalAppPolicy.useAppPolicy(function(appPolicy)
		if FFlagAddTopBarPoliciesToUniversalPolicies then
			return appPolicy.getShowBadgeOver12()
		else
			return appPolicy.ShowBadgeOver12 or false
		end
	end)

	local keepOutAreasStore = SignalsReact.useSignalState(function(scope) 
		return CoreGuiCommon.Stores.GetKeepOutAreasStore(scope)
	end)
	local uiScale = SignalsReact.useSignalState(function(scope) 
		return Display.GetDisplayStore(scope).getUIScale(scope)
	end)

	local shopGlobalIconEnabled = nil
	local shopGlobalStatusIndicatorEnabled = nil
	local onShopGlobalIconActivated = nil
	local shopGlobalIconIsActive = nil
	if FFlagEnableExperienceShopGlobalIcon then
		shopGlobalIconEnabled = SignalsReact.useSignalState(getShopGlobalIconEnabled)
		shopGlobalStatusIndicatorEnabled = SignalsReact.useSignalState(getShopGlobalStatusIndicatorEnabled)
		onShopGlobalIconActivated = handleShopGlobalIconActivated
		React.useEffect(function()
			local cleanup = InExperienceShop.initShopGlobalIcon and InExperienceShop.initShopGlobalIcon()
			return cleanup or function() end
		end, {})
		local safeUseMappedSignal = (useMappedSignal or function() end) :: (...any) -> nil
		shopGlobalIconIsActive = safeUseMappedSignal(shopIsActiveMappedSignal)
	end

	local unibarMenuRef = React.useRef(nil :: GuiObject?)
	local menuIconRef = React.useRef(nil :: GuiObject?)

    local showTopBarSignal = GamepadConnector:getShowTopBar()
	local showTopBar, setShowTopBar = React.useBinding(showTopBarSignal:get())

	React.useEffect(function()
		local vrEnabledConnection
		if FFlagDisableGamepadConnectorInVR then
			if not isSpatial() then
				GamepadConnector:connectToTopbar()
			end
			vrEnabledConnection = VRService:GetPropertyChangedSignal("VREnabled"):Connect(function()
				if isSpatial() then
					GamepadConnector:disconnectFromTopbar()
				else
					GamepadConnector:connectToTopbar()
				end
			end)
		else
			GamepadConnector:connectToTopbar()
		end

		local showTopBarConn = showTopBarSignal:connect(function() 
			setShowTopBar(showTopBarSignal:get())
		end)
		return function() 
			if FFlagDisableGamepadConnectorInVR and vrEnabledConnection then
				vrEnabledConnection:Disconnect()
			end
			GamepadConnector:disconnectFromTopbar()
			if keepOutAreasStore then 
				keepOutAreasStore.cleanup()
			end
			showTopBarConn:disconnect()
		end
	end, {})

	local onAreaChanged = React.useCallback(function(rbx: GuiObject)
		keepOutAreasStore.setKeepOutArea(Constants.TopBarKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
	end, {keepOutAreasStore})

	local screenSideOffset = Constants.ScreenSideOffset * uiScale
	local topBarHeight = Constants.TopBarHeight * uiScale
	local topBarButtonHeight = Constants.TopBarButtonHeight * uiScale
	local topBarTopMargin = Constants.TopBarTopMargin * uiScale

	return React.createElement("ScreenGui", {
		IgnoreGuiInset = true,
		ZIndexBehavior = Enum.ZIndexBehavior.Sibling,
		DisplayOrder = 6,
	}, {
		Popups = React.createElement(View, {
			tag = "size-full",
		}, {
			SongbirdReportAudioFrame = React.createElement(View, {
				tag = "anchor-center-center position-center-center",
				Size = UDim2.new(1, 0, 0, MusicConstants.AUDIO_REPORTING_WINDOW_MIN_HEIGHT),
			}, {
				ReportAudioPopup = React.createElement(Songbird.ReportAudioPopup),
			}),
			MenuNavigationToggleDialog = if FFlagAddMenuNavigationToggleDialog
				then React.createElement(MenuNavigationToggleDialog, {
					Position = UDim2.fromScale(0.5, 0.1),
					GamepadConnector = GamepadConnector,
				})
				else nil,
			GamepadNavigationDialog = if FFlagGamepadNavigationDialogABTest
				then React.createElement(GamepadNavigationDialog)
				else nil,
		}),
		Binders = React.createElement(React.Fragment, {}, 
		{
			JoinVoiceBinder = if JoinVoiceBinder
				then React.createElement(JoinVoiceBinder)
				else nil,
			PartyMicBinder = if GetFFlagEnableCrossExpVoice()
				then React.createElement(PartyMicBinder)
				else nil,
			ChromeAnalytics = if ChromeAnalytics then React.createElement(ChromeAnalytics) else nil,
		}),
		TopBarFrame = React.createElement(View, {
			Size = UDim2.new(1, 0, 0, topBarHeight),
		}, {
			TopLeftFrame = React.createElement(View, {
				tag = "anchor-top-left auto-x row gap-small",
				Size = UDim2.fromOffset(0, topBarButtonHeight),
				onAbsoluteSizeChanged = onAreaChanged,
				onAbsolutePositionChanged = onAreaChanged,
				Position = UDim2.new(0, screenSideOffset, 0, topBarTopMargin),
				Visible = showTopBar,
			}, {
				MenuIcon = if not FFlagEnableSideSheet then React.createElement(SelectionCursorProvider, {}, {
					Icon = React.createElement(MenuIcon, {
						showBadgeOver12 = showBadgeOver12,
						menuIconRef = menuIconRef,
						unibarMenuRef = unibarMenuRef,
					}),
				}) else nil,
				TraversalBackButton = if FFlagAddTraversalBackButton then React.createElement(TraversalBackButton) else nil,
				UnibarFrame = React.createElement(MenuIconContext.Provider, {
					value = {
						menuIconRef = menuIconRef,
					},
				}, {
					React.createElement(Unibar, {
						layoutOrder = 2,
						onMinWidthChanged = function() end,
						onAreaChanged = function() end,
						menuRef = unibarMenuRef
					}),
				}),
				AssistantBuild = if FFlagAppNavMyStatsTab and canShowAssistantBuild()
					then React.createElement(AssistantBuildButton, {
						layoutOrder = 5,
					})
					else nil,
				ShopGlobalIcon = if FFlagEnableExperienceShopGlobalIcon
						and shopGlobalIconEnabled
						and ShopGlobalIcon ~= nil
					then React.createElement(ShopGlobalIcon, {
						buttonSize = topBarButtonHeight,
						layoutOrder = if FFlagAppNavMyStatsTab then 8 else 3,
						showStatusIndicator = shopGlobalStatusIndicatorEnabled,
						onActivated = onShopGlobalIconActivated,
						isActive = shopGlobalIconIsActive,
						icon = (if CommonIcon and shopIsActiveMappedSignal
							then CommonIcon("BuildingStore", nil, shopIsActiveMappedSignal)
							else nil) :: React.Node?,
					})
					else nil,
			}),
			TopRightFrame = React.createElement(View, {
				tag = "anchor-top-right auto-x",
				Size = UDim2.fromOffset(0, topBarButtonHeight),
				Position = UDim2.new(1, -screenSideOffset, 0, topBarTopMargin),
			}, {
				HealthBar = React.createElement(HealthBar)
			})
		}),
		VRBottomBar = if VRService.VREnabled then 
			React.createElement(VoiceStateContext.Provider, {}, {
				VRBottomBar = VoiceStateContext.withVoiceState(function(voiceContext)
					return React.createElement(VRBottomBar, {
						voiceChatServiceManager = VoiceChatServiceManager,
						voiceEnabled = voiceContext.voiceEnabled,
						voiceState = voiceContext.voiceState,
						showBadgeOver12 = if isInExperienceUIVREnabled then showBadgeOver12 else nil,
					})
				end)
			}) else nil,
	})
end

return TopBarApp
