local CorePackages = game:GetService("CorePackages")
local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local LocalizationService = game:GetService("LocalizationService")

local RobloxGui = CoreGui.RobloxGui
local root = script:FindFirstAncestor("AbuseReportMenu")

local CoreScriptsRootProvider = require(CorePackages.Workspace.Packages.CoreScriptsRoactCommon).CoreScriptsRootProvider
local React = require(CorePackages.Packages.React)
local requestInternalWrapper = require(CorePackages.Workspace.Packages.Http).NetworkLayers.requestInternalWrapper
local RoactNetworking = require(CorePackages.Workspace.Packages.RoactServiceTags).RoactNetworking
local RoactServices = require(CorePackages.Workspace.Packages.RoactServices).RoactServices

local FocusNavigationUtils = require(CorePackages.Workspace.Packages.FocusNavigationUtils)
local FocusNavigableSurfaceIdentifierEnum = FocusNavigationUtils.FocusNavigableSurfaceIdentifierEnum
local FocusRoot = FocusNavigationUtils.FocusRoot
local useRegistryEntry = FocusNavigationUtils.FocusNavigableSurfaceRegistry.useRegistryEntry
local DynamicReportInExpContainer =
	require(CorePackages.Workspace.Packages.GenericAbuseReporting.DynamicReportInExpContainer)

local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local LocalizationProvider = require(CorePackages.Workspace.Packages.Localization).LocalizationProvider

local VoiceChatServiceManager = require(RobloxGui.Modules.VoiceChat.VoiceChatServiceManager).default

local useCaptureScreenshotV2 = require(root.Hooks.useCaptureScreenshotV2)
local isAbuseReportMenuOpenCloseSignalEnabled = require(root.Flags.isAbuseReportMenuOpenCloseSignalEnabled)
local FIntAbuseReportTabClearCapturedScreenshotOnCloseFixDelay =
	require(root.Flags.FIntAbuseReportTabClearCapturedScreenshotOnCloseFixDelay)
local isInWHAM1707Experiment = require(script.Parent.isInWHAM1707Experiment)
local safetyServiceSignals = require(script.Parent.safetyServiceSignals)

local inExpChatMessagesLoader = require(script.Parent.inExpChatMessagesLoader)
local inExpVoiceUsersLoader = require(script.Parent.inExpVoiceUsersLoader)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagIEMSettingsPageDisplaying = SharedFlags.FFlagIEMSettingsPageDisplaying

local LuauPolyfill = require(CorePackages.Packages.LuauPolyfill)
local setTimeout = LuauPolyfill.setTimeout

local function shouldEmitMenuOpenCloseSignal(): boolean
	return isAbuseReportMenuOpenCloseSignalEnabled() and isInWHAM1707Experiment()
end

export type Props = {
	-- hides the whole IGM
	hideReportTab: () -> (),
	-- shows the whole IGM
	showReportTab: () -> (),
	registerOnReportTabHidden: (() -> ()) -> (),
	registerOnReportTabDisplayed: (() -> ()) -> (),
	registerOnReportTabDisplaying: (() -> ()) -> (),
	registerOnSettingsHidden: (() -> ()) -> (), -- IGM closed
	registerSetNextPlayerToReport: ((player: Player) -> ()) -> (),
}

type ScreenshotSnapshotRef = {
	current: {
		screenshotId: string,
		identificationResults: any,
	},
}

type InnerProps = {
	isReportTabVisible: boolean,
	preselectedPlayer: Player?,
	reportAnythingSnapshotRef: ScreenshotSnapshotRef,
	onClose: () -> (),
	onReportFinish: () -> (),
}

-- Pure, props-driven view. Knows nothing about the imperative host bridge or the
-- screenshot lifecycle; it just renders the report flow from the props it is given.
local function AbuseReportMenuContentInner(props: InnerProps)
	-- Yield RouterView focus when an InExp modal (CentralOverlay) is open so the two
	-- FocusRoots don't fight for gamepad selection.
	local centralOverlay = useRegistryEntry(FocusNavigableSurfaceIdentifierEnum.CentralOverlay)
	local isFocusable = centralOverlay == nil

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		Position = UDim2.new(0, 0, 0, 0),
		Size = UDim2.new(1, 0, 1, 0),
	}, {
		FocusNavigationCoreScriptsWrapper = React.createElement(FocusRoot, {
			frameProps = {
				Size = UDim2.new(1, 0, 1, 0),
			},
			isFocusable = isFocusable,
			isAutoFocusRoot = true,
			isIsolated = true,
			surfaceIdentifier = FocusNavigableSurfaceIdentifierEnum.RouterView,
		}, {
			DynamicReportInExpContainer = React.createElement(DynamicReportInExpContainer, {
				onClose = props.onClose,
				isReportTabVisible = props.isReportTabVisible,
				reportAnythingSnapshotRef = props.reportAnythingSnapshotRef,
				inExpChatMessagesLoader = inExpChatMessagesLoader,
				inExpVoiceUsersLoader = inExpVoiceUsersLoader,
				voiceChatServiceManager = VoiceChatServiceManager,
				preselectedPlayer = props.preselectedPlayer,
				onReportFinish = props.onReportFinish,
			}),
		}),
	})
end

-- Adapter: translates the legacy host's imperative register*/hide/show bridge into
-- declarative props for AbuseReportMenuContentInner. Owns the screenshot capture
-- window, the open/close safety signals, and preselection.
local function AbuseReportMenuContent(props: Props)
	-- Logical "the user has the report tab open". The screenshot capture briefly hides
	-- and re-shows the IGM, but that is invisible to this state: tabVisible stays true
	-- across the whole capture window.
	local tabVisible, setTabVisible = React.useState(false)
	local preselectedPlayer: Player?, setPreselectedPlayer = React.useState(nil :: Player?)

	local screenshotCapture = useCaptureScreenshotV2()

	-- Keep the latest hide/show callbacks reachable from the one-time registered
	-- closures without re-registering when their identity changes.
	local hideReportTabRef = React.useRef(props.hideReportTab)
	hideReportTabRef.current = props.hideReportTab
	local showReportTabRef = React.useRef(props.showReportTab)
	showReportTabRef.current = props.showReportTab

	-- Mirrors tabVisible for use inside the long-lived registered host closures
	-- (which would otherwise read stale state). Lets us tell a genuine user open from
	-- the screenshot-driven re-show: any open while already logically visible is a
	-- re-show, no matter how delayed the host event is.
	local tabVisibleRef = React.useRef(false)
	-- Ensures ReportMenuTabOpen is emitted at most once per logical open.
	local openSignalSentRef = React.useRef(false)

	React.useEffect(
		function()
			local function onOpen()
				if tabVisibleRef.current then
					-- Screenshot re-show (or a duplicate open event): the IGM is back on
					-- screen but this is not a new user open, so there is nothing to do.
					return
				end

				tabVisibleRef.current = true
				setTabVisible(true)
				screenshotCapture.captureIfApplicable({
					hide = hideReportTabRef.current,
					show = showReportTabRef.current,
				})
			end

			if FFlagIEMSettingsPageDisplaying then
				props.registerOnReportTabDisplaying(onOpen)
			else
				props.registerOnReportTabDisplayed(onOpen)
			end

			props.registerOnReportTabHidden(function()
				if screenshotCapture.getIsCapturing() then
					-- Screenshot-driven hide: the IGM is temporarily off screen, but the
					-- report tab is still logically open, so ignore it.
					return
				end

				tabVisibleRef.current = false
				openSignalSentRef.current = false
				setTabVisible(false)
				setPreselectedPlayer(nil)
				if shouldEmitMenuOpenCloseSignal() then
					safetyServiceSignals.reportMenuTabClose()
				end
			end)

			props.registerSetNextPlayerToReport(function(player: Player)
				setPreselectedPlayer(player)
			end)

			props.registerOnSettingsHidden(function()
				-- The IGM is hidden transiently by the screenshot capture itself, so only
				-- clear the captured screenshot once the report tab is actually closed.
				-- The delay is carried over from the previous implementation; it let the
				-- close settle before clearing. It may be unnecessary now that we gate on
				-- tabVisibleRef rather than the analytics session, but it is kept to
				-- preserve the existing timing behavior.
				setTimeout(function()
					if not tabVisibleRef.current then
						screenshotCapture.reset()
					end
				end, FIntAbuseReportTabClearCapturedScreenshotOnCloseFixDelay)
			end)
		end,
		{
			-- goal here, is to only run this once, so we want all dependencies to be stable
			props.registerOnReportTabHidden,
			props.registerSetNextPlayerToReport,
			props.registerOnSettingsHidden,
			if FFlagIEMSettingsPageDisplaying
				then props.registerOnReportTabDisplaying
				else props.registerOnReportTabDisplayed,
			screenshotCapture.captureIfApplicable, -- stable
			screenshotCapture.getIsCapturing, -- stable
			screenshotCapture.reset, -- stable
		} :: { unknown }
	)

	-- Emit ReportMenuTabOpen once per logical open. When a screenshot will be taken,
	-- wait until it is ready so the open is associated with the captured shot;
	-- otherwise emit as soon as the tab is open.
	React.useEffect(
		function()
			if not tabVisible or openSignalSentRef.current then
				return
			end
			if not shouldEmitMenuOpenCloseSignal() then
				return
			end
			local screenshotReady = not screenshotCapture.isCaptureApplicable or screenshotCapture.isScreenshotTaken
			if screenshotReady then
				openSignalSentRef.current = true
				safetyServiceSignals.reportMenuTabOpen()
			end
		end,
		{
			tabVisible,
			screenshotCapture.isScreenshotTaken,
			screenshotCapture.isCaptureApplicable,
		} :: { unknown }
	)

	return React.createElement(AbuseReportMenuContentInner, {
		isReportTabVisible = tabVisible,
		preselectedPlayer = preselectedPlayer,
		reportAnythingSnapshotRef = screenshotCapture.snapshotRef,
		onClose = props.hideReportTab,
		onReportFinish = function()
			setPreselectedPlayer(nil)
		end,
	})
end

local function AbuseReportMenu(props: Props)
	local localization = Localization.new(LocalizationService.RobloxLocaleId)

	return React.createElement(
		CoreScriptsRootProvider,
		nil,
		React.createElement(LocalizationProvider, {
			localization = localization,
		}, {
			ServicesProvider = React.createElement(RoactServices.ServiceProvider, {
				services = {
					[RoactNetworking] = requestInternalWrapper(HttpService),
				},
			}, {
				AbuseReportMenuContent = React.createElement(AbuseReportMenuContent, props),
			}),
		})
	)
end

return AbuseReportMenu
