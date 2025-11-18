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
local GetFFlagEnableCrossExpVoice = SharedFlags.GetFFlagEnableCrossExpVoice
local GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice =
	SharedFlags.GetFFlagFixSeamlessVoiceIntegrationWithPrivateVoice
local isInExperienceUIVREnabled =
	require(CorePackages.Workspace.Packages.SharedExperimentDefinition).isInExperienceUIVREnabled
local isSpatial = require(CorePackages.Workspace.Packages.AppCommonLib).isSpatial

-- Components 
local View = Foundation.View
local SelectionCursorProvider = UIBlox.App.SelectionImage.SelectionCursorProvider

local GamepadConnector = require(Components.GamepadConnector)
local GamepadNavigationDialog = require(Presentation.GamepadNavigationDialog)
local HealthBar = require(Presentation.HealthBar)
local HurtOverlay = require(Presentation.HurtOverlay)
local HeadsetMenu = require(Presentation.HeadsetMenu)
local MenuIcon = require(Presentation.MenuIcon)
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

type TopBarProps = {}

local function TopBarApp(props: TopBarProps)
	local useFoundationTokens = Foundation.Hooks.useTokens
	local showBadgeOver12 = UniversalAppPolicy.useAppPolicy(function(appPolicy)
		return appPolicy.ShowBadgeOver12 or false
	end)

	local keepOutAreasStore = SignalsReact.useSignalState(function(scope) 
		return CoreGuiCommon.Stores.GetKeepOutAreasStore(scope)
	end)
	local uiScale = SignalsReact.useSignalState(function(scope) 
		return Display.GetDisplayStore(scope).getUIScale(scope)
	end)
	
	local unibarMenuRef = React.useRef(nil :: GuiObject?)
	local menuIconRef = React.useRef(nil :: GuiObject?)

	React.useEffect(function()
		return function() 
			if keepOutAreasStore then 
				keepOutAreasStore.cleanup()
			end
		end
	end, {})

	local onAreaChanged = function(rbx)
		keepOutAreasStore.setKeepOutArea(Constants.TopBarKeepOutAreaId, rbx.AbsolutePosition, rbx.AbsoluteSize)
	end

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
			HeadsetMenu = React.createElement(HeadsetMenu),
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

			HurtOverlay = React.createElement(HurtOverlay),
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
			SongbirdDebugAudio = React.createElement(Songbird.DebugAudioEmitters),
		}),
		TopBarFrame = React.createElement(View, {
			Size = UDim2.new(1, 0, 0, topBarHeight),
		}, {
			TopLeftFrame = React.createElement(View, {
				tag = "anchor-top-left auto-x row gap-small",
				Size = UDim2.fromOffset(0, topBarButtonHeight),
				Position = UDim2.new(0, screenSideOffset, 0, topBarTopMargin),
				onAbsoluteSizeChanged = onAreaChanged,
				onAbsolutePositionChanged = onAreaChanged,
			}, {
				MenuIcon = React.createElement(SelectionCursorProvider, {}, {
					Icon = React.createElement(MenuIcon, {
						layoutOrder = 1,
						showBadgeOver12 = showBadgeOver12,
						menuIconRef = menuIconRef,
						unibarMenuRef = unibarMenuRef,
						onAreaChanged = function() end,
					}),
				}),
				TraversalBackButton = React.createElement(TraversalBackButton),
				UnibarFrame = React.createElement(MenuIconContext.Provider, {
					value = {
						menuIconRef = menuIconRef,
					},
				}, {
					React.createElement(Unibar, {
						layoutOrder = 1,
						onMinWidthChanged = function() end,
						onAreaChanged = function() end,
						menuRef = unibarMenuRef
					}),
				}),
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
