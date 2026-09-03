--!nonstrict
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TeleportService = game:GetService("TeleportService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local LocalizationService = game:GetService("LocalizationService")
local VRService = game:GetService("VRService")
local CorePackages = game:GetService("CorePackages")
local TelemetryService = game:GetService("TelemetryService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local FFlagConnectionRemoveLoadingTimeout = game:DefineFastFlag("ConnectionRemoveLoadingTimeout", false)

CorePackages:WaitForChild("Workspace"):WaitForChild("Packages", if FFlagConnectionRemoveLoadingTimeout then math.huge else nil) -- WaitForChild used here because Workspace is not available on startup
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local Logging = require(CorePackages.Workspace.Packages.AppCommonLib).Logging
local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local mutedError = require(CorePackages.Workspace.Packages.Loggers).mutedError
local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol

local fflagDebugEnableErrorStringTesting = game:DefineFastFlag("DebugEnableErrorStringTesting", false)
local fflagShouldMuteUnlocalizedError = game:DefineFastFlag("ShouldMuteUnlocalizedError", false)

local fflagShowScreentimeLockoutKickMessage = game:DefineFastFlag("ShowScreentimeLockoutKickMessage", false)

local connectionEventConfig = {
	eventName = "ConnectionEvent",
	backends = { "RobloxTelemetryCounter" },
	lastUpdated = { 2025, 7, 31 },
	description = [[Counter to track connection events.]],
	links = "https://roblox.atlassian.net/browse/CSC-585"
}

-- After 2 hours, disable reconnect after the failure of first try
local fIntPotentialClientTimeout = game:DefineFastInt("PotentialClientTimeoutSeconds", 7200)

local fintMaxKickMessageLength = game:DefineFastInt("MaxKickMessageLength", 200)

local FFlagRefactorReconnectUnblockTeleport = game:DefineFastFlag("RefactorReconnectUnblockTeleport", false)

local FFlagConnectionEnableAutoReconnect = game:DefineFastFlag("ConnectionEnableAutoReconnect", false)

-- Auto-reconnect retry delay settings
local FIntConnectionAutoReconnectFirstDelayMs = game:DefineFastInt("ConnectionAutoReconnectFirstDelayMs", 2000)
local FIntConnectionAutoReconnectBaseDelayMs = game:DefineFastInt("ConnectionAutoReconnectBaseDelayMs", 5000)
local FIntConnectionAutoReconnectMaxDelayMs = game:DefineFastInt("ConnectionAutoReconnectMaxDelayMs", 20000)
local FIntConnectionAutoReconnectJitterMs = game:DefineFastInt("ConnectionAutoReconnectJitterMs", 2000)
local FIntConnectionAutoReconnectMaxDurationSeconds = game:DefineFastInt("ConnectionAutoReconnectMaxDurationSeconds", 300)

local autoReconnectRng
if FFlagConnectionEnableAutoReconnect then
	autoReconnectRng = Random.new()
end

local coreGuiOverflowDetection = game:GetEngineFeature("CoreGuiOverflowDetection")

local DEFAULT_ERROR_PROMPT_KEY = "ErrorPrompt"

local FFlagCoreScriptShowTeleportPrompt = require(RobloxGui.Modules.Flags.FFlagCoreScriptShowTeleportPrompt)

local FFlagAllowDisconnectGuiForOkUnknown = require(RobloxGui.Modules.Flags.FFlagAllowDisconnectGuiForOkUnknown)

local FFlagEnableExperienceGenericChallengeRenderingConnection = game:DefineFastFlag("EnableExperienceGenericChallengeRenderingConnection2", false)

local GetFFlagDisplayChannelNameOnErrorPrompt = require(RobloxGui.Modules.Flags.GetFFlagDisplayChannelNameOnErrorPrompt)

local function safeGetFInt(name, defaultValue)
	local success, result = pcall(function()
		return tonumber(settings():GetFVariable(name))
	end)
	return success and result or defaultValue
end

local function safeGetFString(name, defaultValue)
	local success, result = pcall(function()
		return settings():GetFVariable(name)
	end)
	return success and result or defaultValue
end

-- Delay (seconds) before the next auto-reconnect: attempt 1 is a
-- short delay, attempt 2 the base delay, attempt 3+ exponential up to the cap. Jitter
-- is added to every attempt to prevent a thundering herd for platform wide disconnects.
local function computeAutoReconnectDelaySeconds(attempt)
	local delayMs
	if attempt <= 1 then
		delayMs = FIntConnectionAutoReconnectFirstDelayMs
	elseif attempt == 2 then
		delayMs = FIntConnectionAutoReconnectBaseDelayMs
	else
		delayMs = math.min(FIntConnectionAutoReconnectBaseDelayMs * 2 ^ (attempt - 2), FIntConnectionAutoReconnectMaxDelayMs)
	end

	if FIntConnectionAutoReconnectJitterMs > 0 then
		delayMs = delayMs + autoReconnectRng:NextInteger(0, FIntConnectionAutoReconnectJitterMs)
	end

	return delayMs / 1000
end

-- use the default TopBarHeight before Chrome service loads
local inGameGlobalGuiInset = 36

local defaultTimeoutTime = safeGetFInt("DefaultTimeoutTimeMs", 10000) / 1000

-- when this flag turns on, all the errors will not have reconnect option
local reconnectDisabled = settings():GetFFlag("ReconnectDisabled")
local reconnectDisabledReason = safeGetFString(
	"ReconnectDisabledReason",
	"We're sorry, Roblox is temporarily unavailable.  Please try again later."
)

local lastErrorTimeStamp = tick()

local FFlagAddPlacelaunchDeviceBlock = game:DefineFastFlag("AddPlacelaunchDeviceBlock2", false)
local FFlagAddContextualPlayabilityConnectionErrors = game:DefineFastFlag("AddContextualPlayabilityConnectionErrors", false)
local FFlagAddVipOwnerNotPresentConnectionError = game:DefineFastFlag("AddVipOwnerNotPresentConnectionError", false)
local FFlagVipOwnerNotPresentEnableReconnect = game:DefineFastFlag("VipOwnerNotPresentEnableReconnect", false)

local FFlagRAKickLogic = game:DefineFastFlag("RAKickLogic2", false)
local FIntRAMinEngineVersion = game:DefineFastInt("RAMinEngineVersion", 725)

local supportsRemoteAttestationEnums = false
if FFlagRAKickLogic then
	local currentVersionStr = RunService:GetRobloxVersion()
	local currentVersionMajorVersion = tonumber(string.match(currentVersionStr, "%.(%d+)%."))
	if currentVersionMajorVersion and currentVersionMajorVersion >= FIntRAMinEngineVersion then
		supportsRemoteAttestationEnums = true
	end
end

local FFlagConnectionAmpUpsellOnLeave =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagConnectionAmpUpsellOnLeave
local FFlagConnectionAmpParentalApprovalUpsell =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagConnectionAmpParentalApprovalUpsell
local FFlagConnectionParentalApprovalLeaveOnly =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagConnectionParentalApprovalLeaveOnly
local FFlagConnectionUpsellAnalytics =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagConnectionUpsellAnalytics
local FFlagUniversalFeatureRestrictionReceivers =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagUniversalFeatureRestrictionReceivers
local isPioneerLaunch = require(CorePackages.Workspace.Packages.PioneerUtils).isPioneerLaunch
local FFlagErrorPromptUseLeaveGameHelper =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagErrorPromptUseLeaveGameHelper

local LEAVE_GAME_FRAME_WAITS = 2

local leaveGame = require(RobloxGui.Modules.Settings.leaveGame)

local FFlagAddCollaborationCoreGatedConnectionError = game:DefineFastFlag("AddCollaborationCoreGatedConnectionError2", false)
local EngineFeaturePlacelaunchCollaborationCoreGatedConnectionError =
	game:GetEngineFeature("PlacelaunchCollaborationCoreGatedConnectionError")
local FFlagRobloxExperienceKickOverride = game:DefineFastFlag("RobloxExperienceKickOverride", false)

-- ConnectionAmpUpsellOnLeave owns AMP-specific bits (ApolloClient lookup,
-- feature names, telemetry, wizard display order). Required only when the
-- flag is on so the disabled path pays nothing.
local ConnectionAmpUpsellOnLeave
if FFlagConnectionAmpUpsellOnLeave then
	ConnectionAmpUpsellOnLeave = require(RobloxGui.Modules.ConnectionAmpUpsellOnLeave)
end

local buildRobloxExperienceKickContent = require(CorePackages.Workspace.Packages.InterventionShared.buildRobloxExperienceKickContent)
local showFeatureRestrictionDirect = require(CorePackages.Workspace.Packages.UniversalFeatureRestrictions.showFeatureRestrictionDirect)

local function fetchUniverseIdFromPlaceId(placeId)
	local url = string.format("%suniverses/v1/places/%d/universe", Url.APIS_URL, placeId)
	local fetchOk, body = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, url)
	if not fetchOk or type(body) ~= "string" then
		return nil
	end
	local decodeOk, decoded = pcall(HttpService.JSONDecode, HttpService, body)
	if not decodeOk or type(decoded) ~= "table" then
		return nil
	end
	local uid = decoded.universeId
	if type(uid) ~= "number" or uid <= 0 then
		return nil
	end
	return uid
end

-- The new, supported way to translate strings in the client.
-- This function should be used instead of coreScriptTableTranslator:FormatByKey.
-- Errors will be caught and an empty string will be returned if the translation fails.
local function translateString(key: string, arguments: { [string]: any }?): string
	local localeId = LocalizationService.RobloxLocaleId
	local localization = Localization.new(localeId)
	localization:SetLocale(localeId)

	local success, result = pcall(function()
		return localization:Format(key, arguments)
	end)
	if success then
		return result
	end
	Logging.warn("Failed to translate string with key: " .. key .. ", LocaleId: ".. localeId)
	return ""
end

local errorPrompt
local graceTimeout = -1
local screenWidth = RobloxGui.AbsoluteSize.X
local screenHeight = RobloxGui.AbsoluteSize.Y

local ConnectionPromptState = {
	NONE = 1, -- General Error Message
	RECONNECT_PLACELAUNCH = 2, -- Show PlaceLaunching Reconnect Options
	RECONNECT_DISCONNECT = 3, -- Show Disconnect Reconnect Options
	TELEPORT_FAILED = 4, --  Show Teleport Failure Message
	IS_RECONNECTING = 5, -- Show Reconnecting Animation
	RECONNECT_DISABLED_DISCONNECT = 6, -- i.e After Player Being Kicked From Server
	RECONNECT_DISABLED_PLACELAUNCH = 7, -- Unauthorized join
	RECONNECT_DISABLED = 8, -- General Disable by FFlag, i.e overloaded servers
	OUT_OF_MEMORY_KEEPPLAYING_LEAVE = 9, -- Show Out Of Memory with Keep Playing/Leave Message
	RECONNECT_CONNECT_FAILURE = 10, -- Show Connect Failure Reconnect Options
	RECONNECT_DISABLED_CONNECT_FAILURE = 11, -- i.e. Version out of date
	RECONNECT_AGE_CHECK_REQUIRED = 12, -- Placelaunch blocked by age verification; Leave opens the AMP age-check wizard
	RECONNECT_PARENT_APPROVAL_REQUIRED = 13, -- Placelaunch blocked by parental approval; Leave opens the AMP CanApproveExperience wizard
	RECONNECT_COLLABORATION_CORE_GATED = 14, -- Placelaunch blocked by missing trusted relationships with collaborators; View collaborators opens the collaborators dashboard webpage
}

if FFlagConnectionEnableAutoReconnect then
	ConnectionPromptState.AUTO_RECONNECTING = 15 -- Show auto-reconnect "Reconnecting…" prompt (Leave only), retries TeleportReconnect on a backoff loop
end

local connectionPromptState = ConnectionPromptState.NONE

-- error that triggers reconnection
local errorForReconnect = Enum.ConnectionError.OK

-- this will be loaded from localization table
local ErrorTitles = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = "Join Error",
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = "Join Error",
	[ConnectionPromptState.RECONNECT_DISCONNECT] = "Disconnected",
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = "Disconnected",
	[ConnectionPromptState.TELEPORT_FAILED] = "Teleport Failed",
	[ConnectionPromptState.RECONNECT_DISABLED] = "Error",
	[ConnectionPromptState.OUT_OF_MEMORY_KEEPPLAYING_LEAVE] = "Low Memory Warning",
	[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = "Connection Failed",
	[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = "Connection Failed",
}

if FFlagConnectionAmpUpsellOnLeave then
	ErrorTitles[ConnectionPromptState.RECONNECT_AGE_CHECK_REQUIRED] = "Join Error"
	ErrorTitles[ConnectionPromptState.RECONNECT_PARENT_APPROVAL_REQUIRED] = "Join Error"
end

if FFlagAddCollaborationCoreGatedConnectionError then
	ErrorTitles[ConnectionPromptState.RECONNECT_COLLABORATION_CORE_GATED] = "Join Error"
end

if FFlagConnectionEnableAutoReconnect then
	ErrorTitles[ConnectionPromptState.AUTO_RECONNECTING] = "Disconnected"
end

local ErrorTitleLocalizationKey = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = "InGame.ConnectionError.Title.JoinError",
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = "InGame.ConnectionError.Title.JoinError",
	[ConnectionPromptState.RECONNECT_DISCONNECT] = "InGame.ConnectionError.Title.Disconnected",
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = "InGame.ConnectionError.Title.Disconnected",
	[ConnectionPromptState.TELEPORT_FAILED] = "InGame.ConnectionError.Title.TeleportFailed",
	[ConnectionPromptState.RECONNECT_DISABLED] = "InGame.CommonUI.Title.Error",
	[ConnectionPromptState.OUT_OF_MEMORY_KEEPPLAYING_LEAVE] = "InGame.ConnectionError.Title.LowMemoryWarning",
	[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = "InGame.ConnectionError.Title.ConnectionFailed",
	[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = "InGame.ConnectionError.Title.ConnectionFailed",
}

if FFlagConnectionAmpUpsellOnLeave then
	ErrorTitleLocalizationKey[ConnectionPromptState.RECONNECT_AGE_CHECK_REQUIRED] = "InGame.ConnectionError.Title.JoinError"
	ErrorTitleLocalizationKey[ConnectionPromptState.RECONNECT_PARENT_APPROVAL_REQUIRED] = "InGame.ConnectionError.Title.JoinError"
end

if FFlagAddCollaborationCoreGatedConnectionError then
	ErrorTitleLocalizationKey[ConnectionPromptState.RECONNECT_COLLABORATION_CORE_GATED] =
		"InGame.ConnectionError.Title.JoinError"
end

if FFlagConnectionEnableAutoReconnect then
	ErrorTitleLocalizationKey[ConnectionPromptState.AUTO_RECONNECTING] = "InGame.ConnectionError.Title.Disconnected"
end

-- DisplayOrder for the connection-error prompt. Exposed as a local so the
-- ConnectionAmpUpsellOnLeave module can position the wizard one order above
-- it without hardcoding a number on the other side.
local ROBLOX_PROMPT_DISPLAY_ORDER = 9

-- Screengui holding the prompt and make it on top of blur
local screenGui = Create("ScreenGui")({
	Parent = CoreGui,
	Name = "RobloxPromptGui",
	OnTopOfCoreBlur = true,
	DisplayOrder = ROBLOX_PROMPT_DISPLAY_ORDER,
	AutoLocalize = false,
})

-- semi-transparent frame overlay
local promptOverlay = Create("Frame")({
	Name = "promptOverlay",
	BackgroundColor3 = Color3.new(0, 0, 0),
	BackgroundTransparency = 1,
	Size = UDim2.new(1, 0, 1, inGameGlobalGuiInset),
	Position = UDim2.new(0, 0, 0, -inGameGlobalGuiInset),
	Active = false,
	Parent = screenGui,
})

-- Update promptOverlay height after ChromeService fully loads
coroutine.wrap(function()
	local TopBarConstant = require(RobloxGui.Modules.TopBar.Constants)
	local updatedInGameGlobalGuiInset = TopBarConstant.ApplyDisplayScale(TopBarConstant.TopBarHeight)

	promptOverlay.Size = UDim2.new(1, 0, 1, updatedInGameGlobalGuiInset)
	promptOverlay.Position = UDim2.new(0, 0, 0, -updatedInGameGlobalGuiInset)
end)()

-- Button Callbacks --
local function openCollaboratorsPageForUniverseId(universeId)
	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ViewCollaboratorsOpenUrl"}}, 1.0)

	local url = string.format(
		"%sdashboard/creations/experiences/%s/safety/collaborators",
		Url.CREATE_URL,
		tostring(universeId)
	)
	LinkingProtocol.default:openURL(url)
end

local viewCollaboratorsFunction = function()
	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ViewCollaboratorsInitiated"}}, 1.0)

	local universeId = game.GameId
	if universeId and universeId ~= 0 then
		openCollaboratorsPageForUniverseId(universeId)
		return
	end

	local placeId = game.PlaceId
	if not placeId or placeId == 0 then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ViewCollaboratorsMissingPlaceId"}}, 1.0)
		return
	end

	coroutine.wrap(function()
		local resolvedUniverseId = fetchUniverseIdFromPlaceId(placeId)
		if not resolvedUniverseId then
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ViewCollaboratorsUniverseIdLookupFailed"}}, 1.0)
			return
		end
		openCollaboratorsPageForUniverseId(resolvedUniverseId)
	end)()
end

local reconnectFunction = function()
	local startTime = tick()
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "UserClickWhileReconnecting"}}, 1.0)
		return
	end

	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectInitiated"}}, 1.0)
	-- Remove old report counters once TelemetryV2 flag is enabled
	AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectActivated")
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	errorPrompt:primaryShimmerPlay()

	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectSameServer"}}, 1.0)
	TeleportService:TeleportReconnect()

	if FFlagCoreScriptShowTeleportPrompt then
		if FFlagRefactorReconnectUnblockTeleport then
			TeleportService:UnblockAsync()
		else
			GuiService:SetMenuIsOpen(false, DEFAULT_ERROR_PROMPT_KEY)
		end
	end
end

-- For placelaunch errors that require the user to clear a backend gate before
-- retrying (PlacelaunchAgeVerificationRequired / PlacelaunchParentalApprovalRequired),
-- TeleportReconnect is a no-op engine-side because the original placelaunch was
-- marked non-auto-retryable. Re-issue the placelaunch explicitly using the
-- PlaceId already on the DataModel (game.PlaceId is populated with the target
-- place during placelaunch, including while the error prompt is up); the
-- engine's join flow owns the loading UI from there.
local reconnectViaPlacelaunch = function()
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "UserClickWhileReconnecting"}}, 1.0)
		return
	end

	local placeId = game.PlaceId
	if not placeId or placeId == 0 then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlacelaunchRetryMissingPlaceId"}}, 1.0)
		return
	end

	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlacelaunchRetryInitiated"}}, 1.0)
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	errorPrompt:primaryShimmerPlay()

	GuiService:ClearError()
	TeleportService:Teleport(placeId)
end

local leaveFunction = function()
	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "LeaveInitiated"}}, 1.0)
	if FFlagErrorPromptUseLeaveGameHelper then
		leaveGame(false, {
			shouldNativeExit = isPioneerLaunch(),
			inhibitAppRating = true,
			telemetryContext = "ErrorPrompt",
		})
	else
		GuiService.SelectedCoreObject = nil
		for i = 1, LEAVE_GAME_FRAME_WAITS do
			RunService.RenderStepped:wait()
		end
		game:Shutdown()
	end
end

local closePrompt = function()
	GuiService:ClearError()
end
-- Button Callbacks --

local autoReconnectState = {
	active = false,
	attempt = 0,
	pendingThread = nil,
	nextAttemptAt = 0,
	tickerThread = nil,
	errorCode = nil,
	baseMessage = nil,
	lastRenderedText = nil,
	lastRemaining = nil,
}

local function pushErrorToPrompt(msg, code)
	if not errorPrompt then return end
	if GetFFlagDisplayChannelNameOnErrorPrompt() then
		errorPrompt:onErrorChanged(msg, code, true)
	else
		errorPrompt:onErrorChanged(msg, code)
	end
end

local function renderAutoReconnectPrompt()
	if not errorPrompt then
		return
	end
	if connectionPromptState ~= ConnectionPromptState.AUTO_RECONNECTING
		and connectionPromptState ~= ConnectionPromptState.IS_RECONNECTING then
		return
	end

	local remaining
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		remaining = -1
	else
		remaining = math.max(0, math.ceil(autoReconnectState.nextAttemptAt - tick()))
	end
	if remaining == autoReconnectState.lastRemaining then
		return
	end
	autoReconnectState.lastRemaining = remaining

	local attempt = autoReconnectState.attempt
	local status
	if remaining <= 0 then
		status = translateString("InGame.ConnectionError.ReconnectingAttempt", { RBX_ATTEMPT = attempt })
	elseif remaining == 1 then
		status = translateString("InGame.ConnectionError.ReconnectingAttemptInSecond", { RBX_ATTEMPT = attempt })
	else
		status = translateString(
			"InGame.ConnectionError.ReconnectingAttemptInSeconds",
			{ RBX_ATTEMPT = attempt, RBX_SECONDS = remaining }
		)
	end

	local msg = if autoReconnectState.baseMessage and autoReconnectState.baseMessage ~= ""
		then autoReconnectState.baseMessage .. "\n" .. status
		else status

	if msg == autoReconnectState.lastRenderedText then
		return
	end
	autoReconnectState.lastRenderedText = msg
	pushErrorToPrompt(msg, autoReconnectState.errorCode)
end

-- Refreshes the countdown ~4x/sec for the cycle's lifetime. Waits before the first
-- render so the initial prompt open happens on the main thread, not in this task.
local function ensureAutoReconnectTicker()
	if autoReconnectState.tickerThread then
		return
	end
	autoReconnectState.tickerThread = task.spawn(function()
		while autoReconnectState.active do
			task.wait(0.25)
			renderAutoReconnectPrompt()
		end
		autoReconnectState.tickerThread = nil
	end)
end

local function cancelAutoReconnect()
	autoReconnectState.active = false
	autoReconnectState.attempt = 0
	autoReconnectState.nextAttemptAt = 0
	autoReconnectState.errorCode = nil
	autoReconnectState.baseMessage = nil
	autoReconnectState.lastRenderedText = nil
	autoReconnectState.lastRemaining = nil
	if autoReconnectState.pendingThread then
		task.cancel(autoReconnectState.pendingThread)
		autoReconnectState.pendingThread = nil
	end
	if autoReconnectState.tickerThread then
		task.cancel(autoReconnectState.tickerThread)
		autoReconnectState.tickerThread = nil
	end
end

-- Bucket the attempt index so the AutoReconnectAttempt counter stays low-cardinality.
local function autoReconnectAttemptBucket(attempt)
	if attempt <= 5 then
		return tostring(attempt)
	elseif attempt <= 8 then
		return "6-8"
	else
		return "9+"
	end
end

local function fireAutoReconnect()
	autoReconnectState.pendingThread = nil
	-- Never issue a reconnect while one is already in flight (see note above).
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		return
	end

	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "AutoReconnectAttempt", attemptBucket = autoReconnectAttemptBucket(autoReconnectState.attempt)}}, 1.0)
	-- IS_RECONNECTING is the in-flight marker stateTransit uses to detect the next
	-- reconnect failure; set it directly, as the manual reconnectFunction does.
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	renderAutoReconnectPrompt()
	if errorPrompt then
		errorPrompt:primaryShimmerPlay()
	end
	TeleportService:TeleportReconnect()

	if FFlagCoreScriptShowTeleportPrompt then
		if FFlagRefactorReconnectUnblockTeleport then
			TeleportService:UnblockAsync()
		else
			GuiService:SetMenuIsOpen(false, DEFAULT_ERROR_PROMPT_KEY)
		end
	end
end

local function scheduleAutoReconnect()
	autoReconnectState.active = true
	if autoReconnectState.pendingThread then
		task.cancel(autoReconnectState.pendingThread)
		autoReconnectState.pendingThread = nil
	end
	autoReconnectState.attempt = autoReconnectState.attempt + 1
	local delaySeconds = computeAutoReconnectDelaySeconds(autoReconnectState.attempt)
	autoReconnectState.nextAttemptAt = tick() + delaySeconds
	autoReconnectState.lastRenderedText = nil
	autoReconnectState.lastRemaining = nil
	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "AutoReconnectScheduled"}}, 1.0)
	ensureAutoReconnectTicker()
	autoReconnectState.pendingThread = task.delay(delaySeconds, fireAutoReconnect)
end

-- "Reconnect" button on the auto prompt: skip the countdown and retry now.
local function autoReconnectNowFunction()
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "UserClickWhileReconnecting"}}, 1.0)
		return
	end
	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "AutoReconnectManualNow"}}, 1.0)
	if autoReconnectState.pendingThread then
		task.cancel(autoReconnectState.pendingThread)
		autoReconnectState.pendingThread = nil
	end
	fireAutoReconnect()
end

local autoReconnectLeaveFunction = function()
	TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "AutoReconnectLeave"}}, 1.0)
	cancelAutoReconnect()
	leaveFunction()
end

-- Reconnect Disabled List
local reconnectDisabledList = {
	[Enum.ConnectionError.IPRecentlyConnected] = true,
	[Enum.ConnectionError.ConnectionBanned] = true,
	[Enum.ConnectionError.InvalidPassword] = true,
	[Enum.ConnectionError.OurSystemRequiresSecurity] = true,
	[Enum.ConnectionError.IncompatibleProtocolVersion] = true,
	[Enum.ConnectionError.DisconnectLuaKick] = true,
	[Enum.ConnectionError.DisconnectSecurityKeyMismatch] = true,
	[Enum.ConnectionError.DisconnectNewSecurityKeyMismatch] = true,
	[Enum.ConnectionError.DisconnectDuplicateTicket] = true,
	[Enum.ConnectionError.DisconnectWrongVersion] = true,
	[Enum.ConnectionError.DisconnectProtocolMismatch] = true,
	[Enum.ConnectionError.DisconnectBadhash] = true,
	[Enum.ConnectionError.DisconnectIllegalTeleport] = true,
	[Enum.ConnectionError.DisconnectDuplicatePlayer] = true,
	[Enum.ConnectionError.DisconnectCloudEditKick] = true,
	[Enum.ConnectionError.DisconnectOnRemoteSysStats] = true,
	[Enum.ConnectionError.DisconnectBySecurityPolicy] = true,
	[Enum.ConnectionError.DisconnectBlockedIP] = true,
	[Enum.ConnectionError.DisconnectPrivateServerKickout] = true,
	[Enum.ConnectionError.DisconnectCollaboratorPermissionRevoked] = true,
	[Enum.ConnectionError.DisconnectCollaboratorUnderage] = true,
	[Enum.ConnectionError.PlacelaunchFlooded] = true,
	[Enum.ConnectionError.PlacelaunchHashException] = true,
	[Enum.ConnectionError.PlacelaunchHashExpired] = true,
	[Enum.ConnectionError.PlacelaunchUnauthorized] = true,
	[Enum.ConnectionError.PlacelaunchUserLeft] = true,
	[Enum.ConnectionError.PlacelaunchRestricted] = true,
	[Enum.ConnectionError.PlacelaunchUserPrivacyUnauthorized] = true,
	[Enum.ConnectionError.PlacelaunchCreatorBan] = true,
	[Enum.ConnectionError.AndroidAnticheatKick] = true,
	[Enum.ConnectionError.AndroidEmulatorKick] = true,
	[Enum.ConnectionError.AndroidRootedKick] = true,
}
-- When removing engine feature CoreGuiOverflowDetection, move this into the above list.
if coreGuiOverflowDetection then
	-- Older versions of the engine don't have this variant, using subscript
	-- syntax instead avoids a possible type error.
	reconnectDisabledList[Enum.ConnectionError["DisconnectClientFailure"]] = true
end

if fflagShowScreentimeLockoutKickMessage then
	reconnectDisabledList[Enum.ConnectionError.ScreentimeLockoutKick] = true
end

if FFlagAddPlacelaunchDeviceBlock then
	reconnectDisabledList[Enum.ConnectionError.PlacelaunchDeviceBlock] = true
end

if FFlagAddContextualPlayabilityConnectionErrors then
	reconnectDisabledList[Enum.ConnectionError.PlacelaunchAgeVerificationRequired] = true
	reconnectDisabledList[Enum.ConnectionError.PlacelaunchParentalApprovalRequired] = true
	reconnectDisabledList[Enum.ConnectionError.PlacelaunchCoreGated] = true
end

if FFlagAddVipOwnerNotPresentConnectionError and not FFlagVipOwnerNotPresentEnableReconnect then
	reconnectDisabledList[Enum.ConnectionError.PlacelaunchVipOwnerNotPresent] = true
end

local PlacelaunchCollaborationCoreGatedEnum = if FFlagAddCollaborationCoreGatedConnectionError
		and EngineFeaturePlacelaunchCollaborationCoreGatedConnectionError
	then Enum.ConnectionError["PlacelaunchCollaborationCoreGated"]
	else nil

if FFlagAddCollaborationCoreGatedConnectionError and PlacelaunchCollaborationCoreGatedEnum then
	reconnectDisabledList[PlacelaunchCollaborationCoreGatedEnum] = true
end

if FFlagRAKickLogic and supportsRemoteAttestationEnums then
	reconnectDisabledList[Enum.ConnectionError.DisconnectRemoteAttestationUnsupported] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectRemoteAttestationGeneralFailure] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectRemoteAttestationOSOutOfDate] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectRemoteAttestationBootValidationFailure] = true
end

local autoReconnectAllowedList = {}
if FFlagConnectionEnableAutoReconnect then
	autoReconnectAllowedList = {
		[Enum.ConnectionError.DisconnectConnectionLost] = true,
		[Enum.ConnectionError.DisconnectTimeout] = true,
		[Enum.ConnectionError.DisconnectRaknetErrors] = true,
		[Enum.ConnectionError.DisconnectReceivePacketError] = true,
		[Enum.ConnectionError.DisconnectReceivePacketStreamError] = true,
		[Enum.ConnectionError.DisconnectSendPacketError] = true,
		[Enum.ConnectionError.DisconnectHashTimeout] = true,
		[Enum.ConnectionError.ReplicatorTimeout] = true,
		[Enum.ConnectionError.NetworkTimeout] = true,
		[Enum.ConnectionError.NetworkInternal] = true,
		[Enum.ConnectionError.NetworkSend] = true,
	}
end

local ButtonList = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = {
		{
			Text = "Retry",
			LocalizationKey = "InGame.CommonUI.Button.Retry",
			LayoutOrder = 2,
			Callback = reconnectFunction,
			Primary = true,
		},
		{
			Text = "Cancel",
			LocalizationKey = "Feature.SettingsHub.Action.CancelSearch",
			LayoutOrder = 1,
			Callback = leaveFunction,
		},
	},
	[ConnectionPromptState.RECONNECT_DISCONNECT] = {
		{
			Text = "Reconnect",
			LocalizationKey = "InGame.ConnectionError.Button.Reconnect",
			LayoutOrder = 2,
			Callback = reconnectFunction,
			Primary = true,
		},
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
		},
	},
	[ConnectionPromptState.TELEPORT_FAILED] = {
		{
			Text = "OK",
			LocalizationKey = "InGame.CommonUI.Button.Ok",
			LayoutOrder = 1,
			Callback = closePrompt,
			Primary = true,
		},
	},
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		},
	},
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		},
	},
	[ConnectionPromptState.RECONNECT_DISABLED] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		},
	},
	[ConnectionPromptState.OUT_OF_MEMORY_KEEPPLAYING_LEAVE] = {
		{
			Text = "Keep Playing",
			LocalizationKey = "InGame.CommonUI.Button.KeepPlaying",
			LayoutOrder = 1,
			Callback = closePrompt,
		},
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 2,
			Callback = leaveFunction,
			Primary = true,
		},
	},
	[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = {
		{
			Text = "Retry",
			LocalizationKey = "InGame.CommonUI.Button.Retry",
			LayoutOrder = 2,
			Callback = reconnectFunction,
			Primary = true,
		},
		{
			Text = "Cancel",
			LocalizationKey = "Feature.SettingsHub.Action.CancelSearch",
			LayoutOrder = 1,
			Callback = leaveFunction,
		},
	},
	[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		},
	},
}

if FFlagConnectionAmpUpsellOnLeave then
	local openAgeCheckWizardThenReconnect = ConnectionAmpUpsellOnLeave.createAgeCheckCallback(
		connectionEventConfig,
		reconnectViaPlacelaunch,
		ROBLOX_PROMPT_DISPLAY_ORDER
	)
	ButtonList[ConnectionPromptState.RECONNECT_AGE_CHECK_REQUIRED] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
		},
		{
			Text = ConnectionAmpUpsellOnLeave.PrimaryButtonText,
			LocalizationKey = ConnectionAmpUpsellOnLeave.PrimaryButtonLocalizationKey,
			LayoutOrder = 2,
			Callback = openAgeCheckWizardThenReconnect,
			Primary = true,
		},
	}
end

if FFlagConnectionAmpParentalApprovalUpsell then
	local openParentApprovalWizardThenReconnect = ConnectionAmpUpsellOnLeave.createParentalApprovalCallback(
		connectionEventConfig,
		reconnectViaPlacelaunch,
		ROBLOX_PROMPT_DISPLAY_ORDER
	)
	ButtonList[ConnectionPromptState.RECONNECT_PARENT_APPROVAL_REQUIRED] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
		},
		{
			Text = ConnectionAmpUpsellOnLeave.PrimaryButtonText,
			LocalizationKey = ConnectionAmpUpsellOnLeave.PrimaryButtonLocalizationKey,
			LayoutOrder = 2,
			Callback = openParentApprovalWizardThenReconnect,
			Primary = true,
		},
	}
end

-- Asking a parent isn't supported in-experience: Continue opens a VPC dialog that
-- renders behind this prompt and soft-locks the user, so Leave is the only way out.
if FFlagConnectionParentalApprovalLeaveOnly then
	ButtonList[ConnectionPromptState.RECONNECT_PARENT_APPROVAL_REQUIRED] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		},
	}
end

if FFlagAddCollaborationCoreGatedConnectionError then
	ButtonList[ConnectionPromptState.RECONNECT_COLLABORATION_CORE_GATED] = {
		{
			Text = "Ok",
			LocalizationKey = "InGame.ConnectionError.Action.Ok",
			LayoutOrder = 1,
			Callback = leaveFunction,
		},
		{
			Text = "View collaborators",
			LocalizationKey = "InGame.ConnectionError.Action.ViewCollaborators",
			LayoutOrder = 2,
			Callback = viewCollaboratorsFunction,
			Primary = true,
		},
	}
end

if FFlagConnectionEnableAutoReconnect then
	-- Auto-reconnect retries on its own, but we keep a Reconnect button so the user
	-- can skip the countdown and retry immediately, plus Leave (cancels + shuts down).
	ButtonList[ConnectionPromptState.AUTO_RECONNECTING] = {
		{
			Text = "Reconnect Now",
			LocalizationKey = "InGame.ConnectionError.Button.ReconnectNow",
			LayoutOrder = 2,
			Callback = autoReconnectNowFunction,
			Primary = true,
		},
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = autoReconnectLeaveFunction,
		},
	}
end

if isPioneerLaunch() then
	for _, buttons in pairs(ButtonList) do
		for _, buttonData in ipairs(buttons) do
			if buttonData.Callback == leaveFunction or buttonData.Callback == autoReconnectLeaveFunction then
				buttonData.Text = "Quit"
				buttonData.LocalizationKey = "Feature.SettingsHub.Label.QuitButton"
			end
		end
	end
end

local updateFullScreenEffect = {
	[ConnectionPromptState.NONE] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = false
		promptOverlay.Transparency = 1
	end,
	[ConnectionPromptState.RECONNECT_DISCONNECT] = function()
		if VRService.VREnabled then
			RunService:SetRobloxGuiFocused(false)
		else
			RunService:SetRobloxGuiFocused(true)
		end
		promptOverlay.Active = true
		promptOverlay.Transparency = 1
	end,
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end,
	[ConnectionPromptState.TELEPORT_FAILED] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end,
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = function()
		if VRService.VREnabled then
			RunService:SetRobloxGuiFocused(false)
		else
			RunService:SetRobloxGuiFocused(true)
		end
		promptOverlay.Active = true
		promptOverlay.Transparency = 1
	end,
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end,
	[ConnectionPromptState.RECONNECT_DISABLED] = function()
		if VRService.VREnabled then
			RunService:SetRobloxGuiFocused(false)
		else
			RunService:SetRobloxGuiFocused(true)
		end
		promptOverlay.Active = true
		promptOverlay.Transparency = 1
	end,
	[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end,
	[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end,
}

if FFlagConnectionAmpUpsellOnLeave then
	-- The new AMP-on-Leave states reuse RECONNECT_PLACELAUNCH's full-screen
	-- effect verbatim (the AMP wizard renders above the prompt at a higher
	-- DisplayOrder); aliasing keeps them in sync if the placelaunch effect
	-- ever changes.
	local placelaunchEffect = updateFullScreenEffect[ConnectionPromptState.RECONNECT_PLACELAUNCH]
	updateFullScreenEffect[ConnectionPromptState.RECONNECT_AGE_CHECK_REQUIRED] = placelaunchEffect
	if FFlagConnectionAmpParentalApprovalUpsell then
		updateFullScreenEffect[ConnectionPromptState.RECONNECT_PARENT_APPROVAL_REQUIRED] = placelaunchEffect
	end
end

if FFlagAddCollaborationCoreGatedConnectionError then
	updateFullScreenEffect[ConnectionPromptState.RECONNECT_COLLABORATION_CORE_GATED] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end
end

if FFlagConnectionEnableAutoReconnect then
	-- AUTO_RECONNECTING is the disconnect prompt with retry UI; reuse its effect so the
	-- two can't drift.
	updateFullScreenEffect[ConnectionPromptState.AUTO_RECONNECTING] =
		updateFullScreenEffect[ConnectionPromptState.RECONNECT_DISCONNECT]
end

local function onEnter(newState)
	if not errorPrompt then
		local extraConfiguration = {
			MenuIsOpenKey = "ConnectionErrorPrompt",
			PlayAnimation = not fflagDebugEnableErrorStringTesting,
		}
		errorPrompt = ErrorPrompt.new("Default", extraConfiguration)
		errorPrompt:setParent(promptOverlay)
		errorPrompt:resizeWidthAndHeight(screenWidth, screenHeight)
	end
	if updateFullScreenEffect[newState] then
		updateFullScreenEffect[newState]()
	end
	errorPrompt:setErrorTitle(ErrorTitles[newState], ErrorTitleLocalizationKey[newState])
	errorPrompt:updateButtons(ButtonList[newState])
end

local function onExit(oldState)
	if oldState == ConnectionPromptState.IS_RECONNECTING then
		errorPrompt:primaryShimmerStop()
	end
end

-- state transit function
local function stateTransit(errorType, errorCode, oldState)
	-- This is necessary because we always pre-run onErrorMessageChanged() on connecting to a new game, to
	-- clear any bad state, assuming that the new GuiService in that new state will be initialized to
	-- ConnectionError::OK.
	if FFlagAllowDisconnectGuiForOkUnknown then
		if errorCode == Enum.ConnectionError.OK then
			return ConnectionPromptState.NONE
		end
	else
		if errorType == Enum.ConnectionError.OK then
			return ConnectionPromptState.NONE
		end
	end

	if oldState == ConnectionPromptState.NONE then
		if reconnectDisabled then
			return ConnectionPromptState.RECONNECT_DISABLED
		end
		lastErrorTimeStamp = tick()

		if FFlagAllowDisconnectGuiForOkUnknown then
			assert(errorCode ~= Enum.ConnectionError.OK)
			if errorType == Enum.ConnectionError.OK then
				-- If disconnected due to ConnectionError.UNKNOWN, or some other state, prompt reconnect
				return ConnectionPromptState.RECONNECT_DISCONNECT
			end
		end

		if errorType == Enum.ConnectionError.ConnectErrors then
			graceTimeout = tick() + defaultTimeoutTime
			errorForReconnect = Enum.ConnectionError.ConnectErrors
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE
			end
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ConnectError"}}, 1.0)
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ConnectFailed"}}, 1.0)
			return ConnectionPromptState.RECONNECT_CONNECT_FAILURE
		end
		if errorType == Enum.ConnectionError.DisconnectErrors then
			-- reconnection will be delayed after graceTimeout
			graceTimeout = tick() + defaultTimeoutTime
			errorForReconnect = Enum.ConnectionError.DisconnectErrors
			if errorCode == Enum.ConnectionError["DisconnectOutOfMemoryKeepPlayingLeave"]
			then
				return ConnectionPromptState.OUT_OF_MEMORY_KEEPPLAYING_LEAVE
			end
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT
			end
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "Disconnected"}}, 1.0)
			AnalyticsService:ReportCounter("ReconnectPrompt-Disconnect")
			if FFlagConnectionEnableAutoReconnect and autoReconnectAllowedList[errorCode] then
				return ConnectionPromptState.AUTO_RECONNECTING
			end
			return ConnectionPromptState.RECONNECT_DISCONNECT
		elseif errorType == Enum.ConnectionError.PlacelaunchErrors then
			errorForReconnect = Enum.ConnectionError.PlacelaunchErrors
			if FFlagConnectionAmpUpsellOnLeave then
				local ageEnum = ConnectionAmpUpsellOnLeave.AgeVerificationRequiredEnum
				if ageEnum and errorCode == ageEnum then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchAgeVerificationRequired"}}, 1.0)
					if FFlagConnectionUpsellAnalytics then
						ConnectionAmpUpsellOnLeave.fireImpressionAgeCheck(connectionEventConfig, game.PlaceId)
					end
					return ConnectionPromptState.RECONNECT_AGE_CHECK_REQUIRED
				end
			end
			if FFlagConnectionAmpParentalApprovalUpsell then
				local parentEnum = ConnectionAmpUpsellOnLeave.ParentalApprovalRequiredEnum
				if parentEnum and errorCode == parentEnum then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchParentalApprovalRequired"}}, 1.0)
					if FFlagConnectionUpsellAnalytics then
						ConnectionAmpUpsellOnLeave.fireImpressionParentalApproval(connectionEventConfig, game.PlaceId)
					end
					return ConnectionPromptState.RECONNECT_PARENT_APPROVAL_REQUIRED
				end
			end
			if FFlagAddCollaborationCoreGatedConnectionError and PlacelaunchCollaborationCoreGatedEnum and errorCode == PlacelaunchCollaborationCoreGatedEnum then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchCollaborationCoreGated"}}, 1.0)
				return ConnectionPromptState.RECONNECT_COLLABORATION_CORE_GATED
			end
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH
			end
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchError"}}, 1.0)
			AnalyticsService:ReportCounter("ReconnectPrompt-PlaceLaunch")
			return ConnectionPromptState.RECONNECT_PLACELAUNCH
		elseif errorType == Enum.ConnectionError.TeleportErrors then
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "TeleportError"}}, 1.0)
			AnalyticsService:ReportCounter("ReconnectPrompt-TeleportFailed")
			return ConnectionPromptState.TELEPORT_FAILED
		end
	end

	if oldState == ConnectionPromptState.IS_RECONNECTING then
		-- if is reconnecting, then it is the reconnect failure
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectFailed"}}, 1.0)
		AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectFailed")

		if errorType == Enum.ConnectionError.TeleportErrors then
			-- disable reconnect at second try after a long period of time since last error pops up.
			if tick() > lastErrorTimeStamp + fIntPotentialClientTimeout then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectTimedOut"}}, 1.0)
				if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
					return ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH
				else
					return ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT
				end
			end

			if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchReconnectFailed"}}, 1.0)
				return ConnectionPromptState.RECONNECT_PLACELAUNCH
			elseif errorForReconnect == Enum.ConnectionError.DisconnectErrors then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "DisconnectReconnectFailed"}}, 1.0)
				if FFlagConnectionEnableAutoReconnect and autoReconnectState.active then
					-- Keep auto-retrying until the max duration (default 5 min) elapses since
					-- the disconnect, then fall back to the manual Reconnect/Leave prompt. 0 = no cap.
					local maxDurationSeconds = FIntConnectionAutoReconnectMaxDurationSeconds
					if maxDurationSeconds <= 0 or tick() <= lastErrorTimeStamp + maxDurationSeconds then
						return ConnectionPromptState.AUTO_RECONNECTING
					end
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "AutoReconnectExhausted"}}, 1.0)
				end
				return ConnectionPromptState.RECONNECT_DISCONNECT
			elseif errorForReconnect == Enum.ConnectionError.ConnectErrors then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ConnectReconnectFailed"}}, 1.0)
				return ConnectionPromptState.RECONNECT_CONNECT_FAILURE
			end
		end
	end

	if FFlagConnectionEnableAutoReconnect and oldState == ConnectionPromptState.AUTO_RECONNECTING then
		if reconnectDisabled then
			return ConnectionPromptState.RECONNECT_DISABLED
		end
		if errorType == Enum.ConnectionError.DisconnectErrors then
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT
			end
		end
		return oldState
	end

	return oldState
end

local function getCreatorBanString(errorMsg: string)
	local errorDetails = GuiService:GetErrorDetails()
	if errorDetails then
		local time = errorDetails['time']

		local banMessage
		if time then
			local minutes = errorDetails['minutes']
			local hours = errorDetails['hours']
			local days = errorDetails['days']

			local minutesString
			if minutes == 1 then
				minutesString = translateString("InGame.ConnectionError.CreatorBanMinutesSingular")
			else
				minutesString = translateString("InGame.ConnectionError.CreatorBanMinutesPlural", { RBX_TIME_MINUTES = minutes })
			end

			local hoursString
			if hours == 1 then
				hoursString = translateString("InGame.ConnectionError.CreatorBanHoursSingular")
			else
				hoursString = translateString("InGame.ConnectionError.CreatorBanHoursPlural", { RBX_TIME_HOURS = hours })
			end

			local daysString
			if days == 1 then
				daysString = translateString("InGame.ConnectionError.CreatorBanDaysSingular")
			else
				daysString = translateString("InGame.ConnectionError.CreatorBanDaysPlural", { RBX_TIME_DAYS = days })
			end

			if minutesString ~= "" and hoursString ~= "" and daysString ~= "" then
				local joinedTime = minutesString
				if hours > 0 then
					joinedTime = hoursString .. ", " .. joinedTime
				end
				if days > 0 then
					joinedTime = daysString .. ", " .. joinedTime
				end

				banMessage = translateString("InGame.ConnectionError.CreatorBanWithTime", { RBX_TIME_REMAINING = joinedTime })
			else
				return errorMsg
			end
		else
			banMessage = translateString("InGame.ConnectionError.CreatorBanNoTime")
		end

		if banMessage == "" then
			return errorMsg
		end

		local displayReason = errorDetails['displayReason']
		if displayReason and displayReason ~= "" then
			local reasonMessage = translateString("InGame.ConnectionError.CreatorBanMessage", { RBX_STR = displayReason })
			if reasonMessage ~= "" then
				return banMessage .. " " .. reasonMessage
			else
				return errorMsg
			end
		end
		return banMessage
	end
	
	return errorMsg
end

local FFlagRemoveRefToMissingLocInConnection = game:DefineFastFlag("RemoveRefToMissingLocInConnection", false)

local enumToLocalizationKey = {
	[Enum.ConnectionError.ConnectErrors] = "InGame.ConnectionError.ConnectErrors",
	[Enum.ConnectionError.AlreadyConnected] = "InGame.ConnectionError.ConnectionFailedWaitAndTry",
	[Enum.ConnectionError.NoFreeIncomingConnections] = "InGame.ConnectionError.ConnectionFailedWaitAndTry",
	[Enum.ConnectionError.IPRecentlyConnected] = "InGame.ConnectionError.ConnectErrors",
	[Enum.ConnectionError.ConnectionBanned] = "InGame.ConnectionError.ConnectionBanned",
	[Enum.ConnectionError.InvalidPassword] = "InGame.ConnectionError.ConnectionFailedRobloxVersion",
	[Enum.ConnectionError.OurSystemRequiresSecurity] = "InGame.ConnectionError.ConnectionFailedRobloxVersion",
	[Enum.ConnectionError.IncompatibleProtocolVersion] = "InGame.ConnectionError.ConnectionFailedRobloxVersion",
	[Enum.ConnectionError.DisconnectErrors] = "InGame.ConnectionError.DisconnectErrors",
	[Enum.ConnectionError.DisconnectBadhash] = "InGame.ConnectionError.DisconnectBadhash",
	[Enum.ConnectionError.DisconnectSecurityKeyMismatch] = "InGame.ConnectionError.DisconnectSecurityKeyMismatch",
	[Enum.ConnectionError.DisconnectProtocolMismatch] = "InGame.ConnectionError.DisconnectProtocolMismatch",
	[Enum.ConnectionError.DisconnectReceivePacketError] = "InGame.ConnectionError.DisconnectReceivePacketError",
	[Enum.ConnectionError.DisconnectReceivePacketStreamError] = "InGame.ConnectionError.DisconnectReceivePacketStreamError",
	[Enum.ConnectionError.DisconnectSendPacketError] = "InGame.ConnectionError.DisconnectSendPacketError",
	[Enum.ConnectionError.DisconnectIllegalTeleport] = "InGame.ConnectionError.DisconnectIllegalTeleport",
	[Enum.ConnectionError.DisconnectDuplicatePlayer] = "InGame.ConnectionError.DisconnectDuplicatePlayer",
	[Enum.ConnectionError.DisconnectDuplicateTicket] = "InGame.ConnectionError.DisconnectDuplicateTicket",
	[Enum.ConnectionError.DisconnectTimeout] = "InGame.ConnectionError.DisconnectTimeout",
	[Enum.ConnectionError.DisconnectLuaKick] = "InGame.ConnectionError.DisconnectLuaKick",
	[Enum.ConnectionError.DisconnectOnRemoteSysStats] = "InGame.ConnectionError.DisconnectOnRemoteSysStats",
	[Enum.ConnectionError.DisconnectHashTimeout] = "InGame.ConnectionError.DisconnectHashTimeout",
	[Enum.ConnectionError.DisconnectCloudEditKick] = "InGame.ConnectionError.DisconnectCloudEditKick",
	[Enum.ConnectionError.DisconnectPlayerless] = "InGame.ConnectionError.DisconnectPlayerless",
	[Enum.ConnectionError.DisconnectNewSecurityKeyMismatch] = "InGame.ConnectionError.DisconnectNewSecurityKeyMismatch",
	[Enum.ConnectionError.DisconnectEvicted] = "InGame.ConnectionError.DisconnectEvicted",
	[Enum.ConnectionError.DisconnectDevMaintenance] = "InGame.ConnectionError.DisconnectDevMaintenance",
	[Enum.ConnectionError.DisconnectRobloxMaintenance] = "InGame.ConnectionError.DisconnectRobloxMaintenance",
	[Enum.ConnectionError.DisconnectRejoin] = "InGame.ConnectionError.DisconnectRejoin",
	[Enum.ConnectionError.DisconnectConnectionLost] = "InGame.ConnectionError.DisconnectConnectionLost",
	[Enum.ConnectionError.DisconnectIdle] = "InGame.ConnectionError.DisconnectIdle",
	[Enum.ConnectionError.DisconnectRaknetErrors] = "InGame.ConnectionError.DisconnectRaknetErrors",
	[Enum.ConnectionError.DisconnectWrongVersion] = "InGame.ConnectionError.DisconnectWrongVersion",
	[Enum.ConnectionError.DisconnectBySecurityPolicy] = "InGame.ConnectionError.DisconnectBlockedConnection",
	[Enum.ConnectionError.DisconnectBlockedIP] = "InGame.ConnectionError.DisconnectBlockedConnection",
	[Enum.ConnectionError.DisconnectClientFailure] = "InGame.ConnectionError.DisconnectClientFailure",
	[Enum.ConnectionError.DisconnectClientRequest] = "InGame.ConnectionError.DisconnectClientRequest",
	[Enum.ConnectionError.DisconnectPrivateServerKickout] = "InGame.ConnectionError.DisconnectPrivateServerKickout",
	[Enum.ConnectionError.DisconnectModeratedGame] = "InGame.ConnectionError.ServerShutdown",
	[Enum.ConnectionError.ServerShutdown] = "InGame.ConnectionError.ServerShutdown",
	[Enum.ConnectionError.ReplicatorTimeout] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.PlayerRemoved] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.DisconnectOutOfMemoryKeepPlayingLeave] = "InGame.ConnectionError.DisconnectOutOfMemoryKeepPlayingLeave",
	[Enum.ConnectionError.DisconnectRomarkEndOfTest] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.DisconnectCollaboratorPermissionRevoked] = "InGame.ConnectionError.DisconnectCollaboratorPermissionRevoked",
	[Enum.ConnectionError.DisconnectCollaboratorUnderage] = "InGame.ConnectionError.DisconnectCollaboratorUnderage",
	[Enum.ConnectionError.NetworkInternal] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.NetworkSend] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.NetworkTimeout] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.NetworkMisbehavior] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.NetworkSecurity] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.ReplacementReady] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.ServerEmpty] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.PhantomFreeze] = "InGame.ConnectionError.DisconnectTryAgain",
	[Enum.ConnectionError.AndroidAnticheatKick] = "InGame.ConnectionError.AndroidAnticheatKick",
	[Enum.ConnectionError.AndroidEmulatorKick] = "InGame.ConnectionError.AndroidEmulatorKick",
	[Enum.ConnectionError.PlacelaunchErrors] = "InGame.ConnectionError.PlacelaunchErrors",
	[Enum.ConnectionError.PlacelaunchDisabled] = "InGame.ConnectionError.PlacelaunchDisabled",
	[Enum.ConnectionError.PlacelaunchError] = "InGame.ConnectionError.PlacelaunchError",
	[Enum.ConnectionError.PlacelaunchGameEnded] = "InGame.ConnectionError.PlacelaunchGameEnded",
	[Enum.ConnectionError.PlacelaunchGameFull] = "InGame.ConnectionError.PlacelaunchGameFull",
	[Enum.ConnectionError.PlacelaunchUserLeft] = "InGame.ConnectionError.PlacelaunchUserLeft",
	[Enum.ConnectionError.PlacelaunchRestricted] = "InGame.ConnectionError.PlacelaunchRestricted",
	[Enum.ConnectionError.PlacelaunchUnauthorized] = "InGame.ConnectionError.PlacelaunchUnauthorized",
	[Enum.ConnectionError.PlacelaunchFlooded] = "InGame.ConnectionError.PlacelaunchFlooded",
	[Enum.ConnectionError.PlacelaunchHashExpired] = "InGame.ConnectionError.PlacelaunchHashExpired",
	[Enum.ConnectionError.PlacelaunchHashException] = "InGame.ConnectionError.PlacelaunchHashException",
	[Enum.ConnectionError.PlacelaunchPartyCannotFit] = "InGame.ConnectionError.PlacelaunchPartyCannotFit",
	[Enum.ConnectionError.PlacelaunchHttpError] = "InGame.ConnectionError.PlacelaunchHttpError",
	[Enum.ConnectionError.PlacelaunchUserPrivacyUnauthorized] = "InGame.ConnectionError.PlacelaunchUserPrivacyUnauthorized",
	[Enum.ConnectionError.PlacelaunchCreatorBan] = "InGame.ConnectionError.CreatorBanNoTime",
	[Enum.ConnectionError.PlacelaunchCustomMessage] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.PlacelaunchCustomMessage",
	[Enum.ConnectionError.PlacelaunchOtherError] = "InGame.ConnectionError.PlacelaunchOtherError",
	[Enum.ConnectionError.TeleportErrors] = "InGame.ConnectionError.TeleportErrors",
	[Enum.ConnectionError.TeleportFailure] = "InGame.ConnectionError.TeleportFailure",
	[Enum.ConnectionError.TeleportGameNotFound] = "InGame.ConnectionError.TeleportGameNotFound",
	[Enum.ConnectionError.TeleportGameEnded] = "InGame.ConnectionError.TeleportGameEnded",
	[Enum.ConnectionError.TeleportGameFull] = "InGame.ConnectionError.TeleportGameFull",
	[Enum.ConnectionError.TeleportUnauthorized] = "InGame.ConnectionError.TeleportUnauthorized",
	[Enum.ConnectionError.TeleportFlooded] = "InGame.ConnectionError.TeleportFlooded",
	[Enum.ConnectionError.TeleportIsTeleporting] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.TeleportIsTeleporting",
}
	enumToLocalizationKey[Enum.ConnectionError.DisconnectVerboselyModeratedGame] = "InGame.ConnectionError.DisconnectVerboselyModeratedGame"


if fflagShowScreentimeLockoutKickMessage then
	enumToLocalizationKey[Enum.ConnectionError.ScreentimeLockoutKick] = "Feature.Screentime.Content.ScreentimeLimitDialog"
end

if FFlagAddPlacelaunchDeviceBlock then
	enumToLocalizationKey[Enum.ConnectionError.PlacelaunchDeviceBlock] = "InGame.ConnectionError.PlacelaunchDeviceBlock"
end

if FFlagAddContextualPlayabilityConnectionErrors then
	enumToLocalizationKey[Enum.ConnectionError.PlacelaunchAgeVerificationRequired] = "InGame.ConnectionError.Description.AgeCheckRequired"
	enumToLocalizationKey[Enum.ConnectionError.PlacelaunchParentalApprovalRequired] = "InGame.ConnectionError.Description.ParentalApprovalRequired"
	enumToLocalizationKey[Enum.ConnectionError.PlacelaunchCoreGated] = "InGame.ConnectionError.Description.LockedByAge"
end

if FFlagAddVipOwnerNotPresentConnectionError then
	enumToLocalizationKey[Enum.ConnectionError.PlacelaunchVipOwnerNotPresent] = "InGame.ConnectionError.Description.VipOwnerNotPresent"
end

if FFlagAddCollaborationCoreGatedConnectionError and PlacelaunchCollaborationCoreGatedEnum then
	enumToLocalizationKey[PlacelaunchCollaborationCoreGatedEnum] = "InGame.ConnectionError.Description.CollaborationRequiresTrustedFriends"
end

if FFlagRAKickLogic and supportsRemoteAttestationEnums then
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRemoteAttestationTimeout] = "InGame.ConnectionError.RemoteAttestationTimeout"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRemoteAttestationUnsupported] = "InGame.ConnectionError.RemoteAttestationUnsupported"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRemoteAttestationGeneralFailure] = "InGame.ConnectionError.RemoteAttestationGeneralFailure"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRemoteAttestationOSOutOfDate] = "InGame.ConnectionError.RemoteAttestationOSOutOfDate"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRemoteAttestationBootValidationFailure] = "InGame.ConnectionError.RemoteAttestationBootValidationFailure"
end

-- Localize the error string, with a fallback to the original string upon failure.
-- If it is a teleport error but not TELEPORT_FAILED, use general string "Reconnect failed."
local function getErrorString(errorMsg: string, errorCode, reconnectError)
	if errorCode == Enum.ConnectionError.OK then
		return ""
	end

	if reconnectError then
		local attemptTranslation = translateString("InGame.ConnectionError.ReconnectFailed")
		if attemptTranslation ~= '' then
			return attemptTranslation
		end
		return "Reconnect was unsuccessful. Please try again."
	end

	if errorCode == Enum.ConnectionError.DisconnectLuaKick and errorMsg ~= '' then
		-- Limit final message length to a reasonable value
		errorMsg = errorMsg:sub(1, fintMaxKickMessageLength)

		-- errorMsg is dev message
		local attemptTranslation = translateString("InGame.ConnectionError.DisconnectLuaKickWithMessage", { RBX_STR = errorMsg })
		if attemptTranslation ~= '' then
			return attemptTranslation
		end
		return errorMsg
	end

	local key = enumToLocalizationKey[errorCode]
	if not key then
		mutedError("Cannot find localization key for " .. tostring(errorCode))
		key = "InGame.ConnectionError.UnknownError"
	end

	local attemptTranslation
	if errorCode == Enum.ConnectionError.DisconnectIdle then
		attemptTranslation = translateString(key, { RBX_NUM = tostring(20) })
	else
		attemptTranslation = translateString(key)
	end

	if attemptTranslation ~= '' then
		return attemptTranslation
	end

	if fflagShouldMuteUnlocalizedError then
		return translateString("InGame.ConnectionError.UnknownError")
	end

	return errorMsg
end

local function updateErrorPrompt(errorMsg, errorCode, errorType)
	if
		FFlagRobloxExperienceKickOverride and
		FFlagUniversalFeatureRestrictionReceivers and
		errorCode == Enum.ConnectionError.DisconnectLuaKick
	then
		local errorDetails = GuiService:GetErrorDetails()

		-- Since DisconnectLuaKick is used for both Roblox and developer initiated kicks, we branch out here for the Roblox case.
		if errorDetails and errorDetails.moderatorType == 'roblox' then
			local view = buildRobloxExperienceKickContent(errorMsg, errorDetails, translateString)
			showFeatureRestrictionDirect(view.abuseVector, view.moderationDetail, {
				onDismiss = leaveFunction,
				titleOverride = view.options.titleOverride,
				bodyOverride = view.options.bodyOverride,
			})

			TelemetryService:LogCounter(
				connectionEventConfig,
				{ customFields = { selectedItem = "RobloxExperienceKick" } },
				1.0
			)
			return
		end
	end

	local newPromptState = stateTransit(errorType, errorCode, connectionPromptState)
	if newPromptState ~= connectionPromptState then
		onExit(connectionPromptState)
		connectionPromptState = newPromptState
		onEnter(newPromptState)
		if FFlagConnectionEnableAutoReconnect then
			if newPromptState == ConnectionPromptState.AUTO_RECONNECTING then
				scheduleAutoReconnect()
			else
				-- Left the auto-reconnect cycle: stop the countdown + pending retry.
				cancelAutoReconnect()
			end
		end
	end

	if errorCode == Enum.ConnectionError.PlacelaunchCreatorBan then
		errorMsg = getCreatorBanString(errorMsg)
	elseif errorType == Enum.ConnectionError.TeleportErrors
		and connectionPromptState ~= ConnectionPromptState.TELEPORT_FAILED
		then
			errorMsg = getErrorString(errorMsg, errorCode, true)
		else
			errorMsg = getErrorString(errorMsg, errorCode)
		end

	if connectionPromptState == ConnectionPromptState.RECONNECT_DISABLED then
		errorMsg = reconnectDisabledReason
	end

	if FFlagConnectionEnableAutoReconnect and connectionPromptState == ConnectionPromptState.AUTO_RECONNECTING then
		-- Capture the localized disconnect message + code on the first entry only;
		-- on failure re-entries errorMsg is the teleport "reconnect failed" text.
		if autoReconnectState.baseMessage == nil then
			autoReconnectState.baseMessage = errorMsg
			autoReconnectState.errorCode = errorCode
		end
		renderAutoReconnectPrompt()
		return
	end

	if errorPrompt then
		if GetFFlagDisplayChannelNameOnErrorPrompt() then
			errorPrompt:onErrorChanged(errorMsg, errorCode, true)
		else
			errorPrompt:onErrorChanged(errorMsg, errorCode)
		end
	end
end

local function onErrorMessageChanged()
	local errorMsg = GuiService:GetErrorMessage()
	local errorCode = GuiService:GetErrorCode()
	local errorType = GuiService:GetErrorType()
	updateErrorPrompt(errorMsg, errorCode, errorType)
end

local function onScreenSizeChanged()
	if not errorPrompt then
		return
	end
	local newWidth = RobloxGui.AbsoluteSize.X
	local newHeight = RobloxGui.AbsoluteSize.Y
	if screenWidth ~= newWidth or screenHeight ~= newHeight then
		screenWidth = newWidth
		screenHeight = newHeight
		errorPrompt:resizeWidthAndHeight(screenWidth, screenHeight)
	end
end

-- This script is always loaded from the engine
RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):connect(onScreenSizeChanged)

-- pre-run it once in case some error occurs before the connection
onErrorMessageChanged()
GuiService.ErrorMessageChanged:connect(onErrorMessageChanged)

if fflagDebugEnableErrorStringTesting then
	local testingSet = require(RobloxGui.Modules.ErrorTestSets)
	for errorType, errorList in pairs(testingSet) do
		for _, errorCode in pairs(errorList) do
			updateErrorPrompt(
				"Should show localized strings, please file a jira ticket for missing translation.",
				errorCode,
				errorType
			)
			wait(2)
			if FFlagConnectionEnableAutoReconnect then
				cancelAutoReconnect()
			end
			connectionPromptState = ConnectionPromptState.NONE
		end
	end
end

if coreGuiOverflowDetection then
	GuiService.CoreGuiRenderOverflowed:Connect(function()
		-- When CoreGui overflows, it causes things to stop rendering, and we try to
		-- kick the client from the game with a disconnect message. To give the best
		-- chance for the user actually seeing this message, everything else in
		-- CoreGui should be hidden.
		for _, child in pairs(CoreGui:GetChildren()) do
			if child:IsA("ScreenGui") and child.Name ~= "RobloxPromptGui" then
				child.Enabled = false
			end
		end
	end)
end

if FFlagEnableExperienceGenericChallengeRenderingConnection then
	-- Initializes the in-experience challenge interceptor, used to handle
	-- rendering challenges such as 2-Step-Verification on suspicious actions e.g. economic actions.
	-- This is to support challenges at game join.
	coroutine.wrap(function()
		local initChallengeInterceptor =
			require(CorePackages.Workspace.Packages.GenericChallenges).Middleware.InitExperienceChallengeInterceptor
		initChallengeInterceptor()
	end)()
end
