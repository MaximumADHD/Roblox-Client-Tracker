--!nonstrict
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TeleportService = game:GetService("TeleportService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local LocalizationService = game:GetService("LocalizationService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local VRService = game:GetService("VRService")
local CorePackages = game:GetService("CorePackages")
local TelemetryService = game:GetService("TelemetryService")

CorePackages:WaitForChild("Workspace"):WaitForChild("Packages") -- WaitForChild used here because Workspace is not available on startup
local Create = require(CorePackages.Workspace.Packages.AppCommonLib).Create
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)
local Localization = require(CorePackages.Workspace.Packages.InExperienceLocales).Localization
local Logging = require(CorePackages.Workspace.Packages.AppCommonLib).Logging
local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url
local mutedError = require(CorePackages.Workspace.Packages.Loggers).mutedError

local FFlagDisableReconnectsForRootedKicks = game:DefineFastFlag("DisableReconnectsForRootedKicks", false)

local fflagDebugEnableErrorStringTesting = game:DefineFastFlag("DebugEnableErrorStringTesting", false)
local fflagShouldMuteUnlocalizedError = game:DefineFastFlag("ShouldMuteUnlocalizedError", false)
local fflagUpdateConnectionErrorLoc = game:DefineFastFlag("UpdateConnectionErrorLoc", false)

local fflagConnectionEventMetrics = game:DefineFastFlag("ConnectionEventMetrics", false)
local fflagUseConfigurableReconnectWait = game:DefineFastFlag("UseConfigurableReconnectWait", false)
local FIntConfigurableReconnectWaitMs = game:DefineFastInt("ConfigurableReconnectWaitMs", 0)

local fflagReconnectToSameServer = game:DefineFastFlag("ReconnectToSameServer", false)
local fflagShowScreentimeLockoutKickMessage = game:DefineFastFlag("ShowScreentimeLockoutKickMessage", false)

local fflagShowNewConnectErrorsMessage = game:DefineFastFlag("ShowNewConnectErrorsMessage", false)
local fflagAddConnectionErrorLocalizationKeys = game:DefineFastFlag("AddConnectionErrorLocalizationKeys", false)

local FFlagAddClientDisconnectVerboselyModeratedGame = game:DefineFastFlag("AddClientDisconnectVerboselyModeratedGame", false)

local connectionEventConfig = {
	eventName = "ConnectionEvent",
	backends = { "RobloxTelemetryCounter" },
	lastUpdated = { 2025, 7, 31 },
	description = [[Counter to track connection events.]],
	links = "https://roblox.atlassian.net/browse/CSC-585"
}
local timeTakenToFetchStarterPlaceIdConfig = {
	eventName = "TimeTakenToFetchStarterPlaceId",
	backends = { "RobloxTelemetryStat" },
	lastUpdated = { 2025, 7, 31 },
	description = [[Stat for time taken to fetch starter place ID.]],
	links = "https://roblox.atlassian.net/browse/CSC-585"
}
local GraceTimeoutWaitConfig = {
	eventName = "GraceTimeoutWait",
	backends = { "RobloxTelemetryStat" },
	lastUpdated = { 2025, 7, 31 },
	description = [[Stat for time waited for legacy or configurable grace timeout.]],
	links = "https://roblox.atlassian.net/browse/CSC-585"
}
local timeUntilStartTeleportConfig = {
	eventName = "TimeUntilTeleportStartProfiler",
	backends = { "RobloxTelemetryStat" },
	lastUpdated = { 2025, 7, 31 },
	description = [[Stat for time until teleport starts.]],
	links = "https://roblox.atlassian.net/browse/CSC-585"
}

-- After 2 hours, disable reconnect after the failure of first try
local fIntPotentialClientTimeout = game:DefineFastInt("PotentialClientTimeoutSeconds", 7200)

local fintMaxKickMessageLength = game:DefineFastInt("MaxKickMessageLength", 200)

local FFlagRefactorReconnectUnblockTeleport = game:DefineFastFlag("RefactorReconnectUnblockTeleport", false)

local coreGuiOverflowDetection = game:GetEngineFeature("CoreGuiOverflowDetection")

local LEAVE_GAME_FRAME_WAITS = 2

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

local FFlagUpdateConnectionLocWarning = game:DefineFastFlag("UpdateConnectionLocWarning", false)

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
	if FFlagUpdateConnectionLocWarning then
		Logging.warn("Failed to translate string with key: " .. key .. ", LocaleId: ".. localeId)
	else
		Logging.warn("Failed to translate string with key: " .. key)
	end
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
}

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
}

if fflagShowNewConnectErrorsMessage then
	ErrorTitles[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = "Connection Failed"
	ErrorTitles[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = "Connection Failed"
end

local ErrorTitleLocalizationKey = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = "InGame.ConnectionError.Title.JoinError",
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = "InGame.ConnectionError.Title.JoinError",
	[ConnectionPromptState.RECONNECT_DISCONNECT] = "InGame.ConnectionError.Title.Disconnected",
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = "InGame.ConnectionError.Title.Disconnected",
	[ConnectionPromptState.TELEPORT_FAILED] = "InGame.ConnectionError.Title.TeleportFailed",
	[ConnectionPromptState.RECONNECT_DISABLED] = "InGame.CommonUI.Title.Error",
	[ConnectionPromptState.OUT_OF_MEMORY_KEEPPLAYING_LEAVE] = "InGame.ConnectionError.Title.LowMemoryWarning",
}

if fflagShowNewConnectErrorsMessage then
	ErrorTitleLocalizationKey[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = "InGame.ConnectionError.Title.ConnectionFailed"
	ErrorTitleLocalizationKey[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = "InGame.ConnectionError.Title.ConnectionFailed"
end

-- only return success when a valid root id is given
local function fetchStarterPlaceId(universeId)
	local apiPath = "v1/games"
	local params = "universeIds=" .. universeId
	local fullUrl = Url.GAME_URL .. apiPath .. "?" .. params
	local success, result = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, fullUrl)
	if success then
		local result = HttpService:JSONDecode(result)
		if result and result["data"] and result["data"][1] then
			local rootId = result["data"][1]["rootPlaceId"]
			if rootId then
				return true, rootId
			end
		end
	end
	return false, -1
end

-- Screengui holding the prompt and make it on top of blur
local screenGui = Create("ScreenGui")({
	Parent = CoreGui,
	Name = "RobloxPromptGui",
	OnTopOfCoreBlur = true,
	DisplayOrder = 9,
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
local reconnectFunction = function()
	local startTime = tick()
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		if fflagConnectionEventMetrics then
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "UserClickWhileReconnecting"}}, 1.0)
		end
		return
	end

	if fflagConnectionEventMetrics then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectInitiated"}}, 1.0)
	end
	-- Remove old report counters once TelemetryV2 flag is enabled
	AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectActivated")
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	errorPrompt:primaryShimmerPlay()

	if fflagReconnectToSameServer then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectSameServer"}}, 1.0)
		TeleportService:TeleportReconnect()
	else
		local fetchStarterPlaceSuccess, starterPlaceId
		if game.GameId > 0 then
			fetchStarterPlaceSuccess, starterPlaceId = fetchStarterPlaceId(game.GameId)
		end

		if fflagConnectionEventMetrics then
			TelemetryService:LogStat(timeTakenToFetchStarterPlaceIdConfig, {}, tick() - startTime)
		end

		if fflagUseConfigurableReconnectWait then
			local waitTimeInSeconds = FIntConfigurableReconnectWaitMs / 1000
			wait(waitTimeInSeconds)
			if fflagConnectionEventMetrics then
				TelemetryService:LogStat(GraceTimeoutWaitConfig, {}, waitTimeInSeconds)
			end
		else
			-- Wait for the remaining time (if there is any)
			local currentTime = tick()
			if currentTime < graceTimeout then
				if fflagConnectionEventMetrics then
					TelemetryService:LogStat(GraceTimeoutWaitConfig, {}, graceTimeout - currentTime)
				end
				wait(graceTimeout - currentTime)
			end
		end

		if fflagConnectionEventMetrics then
			TelemetryService:LogStat(timeUntilStartTeleportConfig, {}, tick() - startTime)
		end

		if fetchStarterPlaceSuccess and starterPlaceId > 0 then
			if fflagConnectionEventMetrics then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectToStarterPlaceId"}}, 1.0)
			end
			TeleportService:Teleport(starterPlaceId)
		else
			if fflagConnectionEventMetrics then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectToGamePlaceId"}}, 1.0)
			end
			TeleportService:Teleport(game.PlaceId)
		end
	end

	if FFlagCoreScriptShowTeleportPrompt then
		if FFlagRefactorReconnectUnblockTeleport then
			TeleportService:UnblockAsync()
		else
			GuiService:SetMenuIsOpen(false, DEFAULT_ERROR_PROMPT_KEY)
		end
	end
end

local leaveFunction = function()
	if fflagConnectionEventMetrics then
		TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "LeaveInitiated"}}, 1.0)
	end
	GuiService.SelectedCoreObject = nil
	for i = 1, LEAVE_GAME_FRAME_WAITS do
		RunService.RenderStepped:wait()
	end
	game:Shutdown()
end

local closePrompt = function()
	GuiService:ClearError()
end
-- Button Callbacks --

-- Reconnect Disabled List
local reconnectDisabledList = {
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
	[Enum.ConnectionError.DisconnectPrivateServerKickout] = true,
	[Enum.ConnectionError.DisconnectRaknetErrors] = true,
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
	[Enum.ConnectionError.AndroidRootedKick] = FFlagDisableReconnectsForRootedKicks,
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

if fflagShowNewConnectErrorsMessage then
	reconnectDisabledList[Enum.ConnectionError.IPRecentlyConnected] = true
	reconnectDisabledList[Enum.ConnectionError.ConnectionBanned] = true
	reconnectDisabledList[Enum.ConnectionError.InvalidPassword] = true
	reconnectDisabledList[Enum.ConnectionError.OurSystemRequiresSecurity] = true
	reconnectDisabledList[Enum.ConnectionError.IncompatibleProtocolVersion] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectRaknetErrors] = false
end

if fflagAddConnectionErrorLocalizationKeys then
	reconnectDisabledList[Enum.ConnectionError.DisconnectBySecurityPolicy] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectBlockedIP] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectCollaboratorPermissionRevoked] = true
	reconnectDisabledList[Enum.ConnectionError.DisconnectCollaboratorUnderage] = true
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
}

if fflagShowNewConnectErrorsMessage then
	ButtonList[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = {
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
	}
	ButtonList[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		},
	}
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
}

if fflagShowNewConnectErrorsMessage then
	updateFullScreenEffect[ConnectionPromptState.RECONNECT_CONNECT_FAILURE] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end
	updateFullScreenEffect[ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end
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

		if fflagShowNewConnectErrorsMessage then
			if errorType == Enum.ConnectionError.ConnectErrors then
				graceTimeout = tick() + defaultTimeoutTime
				errorForReconnect = Enum.ConnectionError.ConnectErrors
				if reconnectDisabledList[errorCode] then
					return ConnectionPromptState.RECONNECT_DISABLED_CONNECT_FAILURE
				end
				if fflagConnectionEventMetrics then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ConnectError"}}, 1.0)
				end
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ConnectFailed"}}, 1.0)
				return ConnectionPromptState.RECONNECT_CONNECT_FAILURE
			end
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
			if fflagConnectionEventMetrics then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "Disconnected"}}, 1.0)
			end
			AnalyticsService:ReportCounter("ReconnectPrompt-Disconnect")
			return ConnectionPromptState.RECONNECT_DISCONNECT
		elseif errorType == Enum.ConnectionError.PlacelaunchErrors then
			errorForReconnect = Enum.ConnectionError.PlacelaunchErrors
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH
			end
			if fflagConnectionEventMetrics then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchError"}}, 1.0)
			end
			AnalyticsService:ReportCounter("ReconnectPrompt-PlaceLaunch")
			return ConnectionPromptState.RECONNECT_PLACELAUNCH
		elseif errorType == Enum.ConnectionError.TeleportErrors then
			if fflagConnectionEventMetrics then
				TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "TeleportError"}}, 1.0)
			end
			AnalyticsService:ReportCounter("ReconnectPrompt-TeleportFailed")
			return ConnectionPromptState.TELEPORT_FAILED
		end
	end

	if oldState == ConnectionPromptState.IS_RECONNECTING then
		-- if is reconnecting, then it is the reconnect failure
		if fflagConnectionEventMetrics then
			TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectFailed"}}, 1.0)
		end
		AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectFailed")

		if errorType == Enum.ConnectionError.TeleportErrors then
			-- disable reconnect at second try after a long period of time since last error pops up.
			if tick() > lastErrorTimeStamp + fIntPotentialClientTimeout then
				if fflagConnectionEventMetrics then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ReconnectTimedOut"}}, 1.0)
				end
				if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
					return ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH
				else
					return ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT
				end
			end

			if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
				if fflagConnectionEventMetrics then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "PlaceLaunchReconnectFailed"}}, 1.0)
				end
				return ConnectionPromptState.RECONNECT_PLACELAUNCH
			elseif errorForReconnect == Enum.ConnectionError.DisconnectErrors then
				if fflagConnectionEventMetrics then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "DisconnectReconnectFailed"}}, 1.0)
				end
				return ConnectionPromptState.RECONNECT_DISCONNECT
			elseif errorForReconnect == Enum.ConnectionError.ConnectErrors then
				if fflagConnectionEventMetrics then
					TelemetryService:LogCounter(connectionEventConfig, {customFields = {selectedItem = "ConnectReconnectFailed"}}, 1.0)
				end
				return ConnectionPromptState.RECONNECT_CONNECT_FAILURE
			end
		end
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
	[Enum.ConnectionError.DisconnectRaknetErrors] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectRaknetErrors",
	[Enum.ConnectionError.DisconnectWrongVersion] = "InGame.ConnectionError.DisconnectWrongVersion",
	[Enum.ConnectionError.DisconnectBySecurityPolicy] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectBySecurityPolicy",
	[Enum.ConnectionError.DisconnectBlockedIP] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectBlockedIP",
	[Enum.ConnectionError.DisconnectClientFailure] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectClientFailure",
	[Enum.ConnectionError.DisconnectClientRequest] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectClientRequest",
	[Enum.ConnectionError.DisconnectPrivateServerKickout] = "InGame.ConnectionError.DisconnectPrivateServerKickout",
	[Enum.ConnectionError.DisconnectModeratedGame] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectModeratedGame",
	[Enum.ConnectionError.ServerShutdown] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.ServerShutdown",
	[Enum.ConnectionError.ReplicatorTimeout] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.ReplicatorTimeout",
	[Enum.ConnectionError.PlayerRemoved] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.PlayerRemoved",
	[Enum.ConnectionError.DisconnectOutOfMemoryKeepPlayingLeave] = "InGame.ConnectionError.DisconnectOutOfMemoryKeepPlayingLeave",
	[Enum.ConnectionError.DisconnectRomarkEndOfTest] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectRomarkEndOfTest",
	[Enum.ConnectionError.DisconnectCollaboratorPermissionRevoked] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectCollaboratorPermissionRevoked",
	[Enum.ConnectionError.DisconnectCollaboratorUnderage] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.DisconnectCollaboratorUnderage",
	[Enum.ConnectionError.NetworkInternal] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.NetworkInternal",
	[Enum.ConnectionError.NetworkSend] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.NetworkSend",
	[Enum.ConnectionError.NetworkTimeout] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.NetworkTimeout",
	[Enum.ConnectionError.NetworkMisbehavior] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.NetworkMisbehavior",
	[Enum.ConnectionError.NetworkSecurity] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.NetworkSecurity",
	[Enum.ConnectionError.ReplacementReady] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.ReplacementReady",
	[Enum.ConnectionError.ServerEmpty] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.ServerEmpty",
	[Enum.ConnectionError.PhantomFreeze] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.PhantomFreeze",
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
	[Enum.ConnectionError.PlacelaunchCreatorBan] = if FFlagRemoveRefToMissingLocInConnection then nil else "InGame.ConnectionError.PlacelaunchCreatorBan",
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

if FFlagAddClientDisconnectVerboselyModeratedGame then
	enumToLocalizationKey[Enum.ConnectionError.DisconnectVerboselyModeratedGame] = "InGame.ConnectionError.DisconnectVerboselyModeratedGame"
end


if fflagShowScreentimeLockoutKickMessage then
	enumToLocalizationKey[Enum.ConnectionError.ScreentimeLockoutKick] = "Feature.Screentime.Content.ScreentimeLimitDialog"
end

if fflagShowNewConnectErrorsMessage then
	enumToLocalizationKey[Enum.ConnectionError.ConnectErrors] = "InGame.ConnectionError.ConnectErrors"
	enumToLocalizationKey[Enum.ConnectionError.AlreadyConnected] = "InGame.ConnectionError.ConnectionFailedWaitAndTry"
	enumToLocalizationKey[Enum.ConnectionError.NoFreeIncomingConnections] = "InGame.ConnectionError.ConnectionFailedWaitAndTry"
	enumToLocalizationKey[Enum.ConnectionError.IPRecentlyConnected] = "InGame.ConnectionError.ConnectErrors"
	enumToLocalizationKey[Enum.ConnectionError.ConnectionBanned] = "InGame.ConnectionError.ConnectionBanned"
	enumToLocalizationKey[Enum.ConnectionError.InvalidPassword] = "InGame.ConnectionError.ConnectionFailedRobloxVersion"
	enumToLocalizationKey[Enum.ConnectionError.OurSystemRequiresSecurity] = "InGame.ConnectionError.ConnectionFailedRobloxVersion"
	enumToLocalizationKey[Enum.ConnectionError.IncompatibleProtocolVersion] = "InGame.ConnectionError.ConnectionFailedRobloxVersion"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRaknetErrors] = "InGame.ConnectionError.DisconnectRaknetErrors"
end

if fflagAddConnectionErrorLocalizationKeys then
	enumToLocalizationKey[Enum.ConnectionError.DisconnectBySecurityPolicy] = "InGame.ConnectionError.DisconnectBlockedConnection"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectBlockedIP] = "InGame.ConnectionError.DisconnectBlockedConnection"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectClientFailure] = "InGame.ConnectionError.DisconnectClientFailure"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectClientRequest] = "InGame.ConnectionError.DisconnectClientRequest"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectModeratedGame] = "InGame.ConnectionError.ServerShutdown"
	enumToLocalizationKey[Enum.ConnectionError.ServerShutdown] = "InGame.ConnectionError.ServerShutdown"
	enumToLocalizationKey[Enum.ConnectionError.ReplicatorTimeout] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.PlayerRemoved] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectRomarkEndOfTest] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectCollaboratorPermissionRevoked] = "InGame.ConnectionError.DisconnectCollaboratorPermissionRevoked"
	enumToLocalizationKey[Enum.ConnectionError.DisconnectCollaboratorUnderage] = "InGame.ConnectionError.DisconnectCollaboratorUnderage"
	enumToLocalizationKey[Enum.ConnectionError.NetworkInternal] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.NetworkSend] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.NetworkTimeout] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.NetworkMisbehavior] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.NetworkSecurity] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.ReplacementReady] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.ServerEmpty] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.PhantomFreeze] = "InGame.ConnectionError.DisconnectTryAgain"
	enumToLocalizationKey[Enum.ConnectionError.PlacelaunchCreatorBan] = "InGame.ConnectionError.CreatorBanNoTime"
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

	local key
	if fflagUpdateConnectionErrorLoc then
		key = enumToLocalizationKey[errorCode]
		if not key then
			mutedError("Cannot find localization key for " .. tostring(errorCode))
			key = "InGame.ConnectionError.UnknownError"
		end
	else
		key = string.gsub(tostring(errorCode), "Enum", "InGame")
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
	local newPromptState = stateTransit(errorType, errorCode, connectionPromptState)
	if newPromptState ~= connectionPromptState then
		onExit(connectionPromptState)
		connectionPromptState = newPromptState
		onEnter(newPromptState)
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
