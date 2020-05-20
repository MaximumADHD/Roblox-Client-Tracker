local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TeleportService = game:GetService("TeleportService")
local AnalyticsService = game:GetService("RbxAnalyticsService")
local LocalizationService = game:GetService("LocalizationService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local create = require(RobloxGui.Modules.Common.Create)
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)
local Url = require(RobloxGui.Modules.Common.Url)
local PolicyService = require(RobloxGui.Modules.Common.PolicyService)

local fflagEnableErrorStringTesting = game:DefineFastFlag("EnableErrorStringTesting", false)
local fflagShouldMuteUnlocalizedError = game:DefineFastFlag("ShouldMuteUnlocalizedError", false)

-- After 2 hours, disable reconnect after the failure of first try
local fflagDisableReconnectAfterPotentialTimeout = game:DefineFastFlag("DisableReconnectAfterPotentialTimeout", false)
local fIntPotentialClientTimeout = game:DefineFastInt("PotentialClientTimeoutSeconds", 7200)

local LEAVE_GAME_FRAME_WAITS = 2

local function safeGetFInt(name, defaultValue)
	local success, result = pcall(function() return tonumber(settings():GetFVariable(name)) end)
	return success and result or defaultValue
end

local function safeGetFString(name, defaultValue)
	local success, result = pcall(function() return settings():GetFVariable(name) end)
	return success and result or defaultValue
end

local inGameGlobalGuiInset = safeGetFInt("InGameGlobalGuiInset", 36)
local defaultTimeoutTime  = safeGetFInt("DefaultTimeoutTimeMs", 10000) / 1000

-- when this flag turns on, all the errors will not have reconnect option
local reconnectDisabled = settings():GetFFlag("ReconnectDisabled")
local reconnectDisabledReason = safeGetFString("ReconnectDisabledReason", "We're sorry, Roblox is temporarily unavailable.  Please try again later.")

local FFlagDisableAutoTranslateForKeyTranslatedContent = require(RobloxGui.Modules.Flags.FFlagDisableAutoTranslateForKeyTranslatedContent)

local lastErrorTimeStamp = tick()

local coreScriptTableTranslator = CoreGui.CoreScriptLocalization:GetTranslator(LocalizationService.RobloxLocaleId)

local errorPrompt
local graceTimeout = -1
local screenWidth = RobloxGui.AbsoluteSize.X

local ConnectionPromptState = {
	NONE = 1, -- General Error Message
	RECONNECT_PLACELAUNCH = 2, -- Show PlaceLaunching Reconnect Options
	RECONNECT_DISCONNECT = 3, -- Show Disconnect Reconnect Options
	TELEPORT_FAILED = 4, --  Show Teleport Failure Message
	IS_RECONNECTING = 5, -- Show Reconnecting Animation
	RECONNECT_DISABLED_DISCONNECT = 6, -- i.e After Player Being Kicked From Server
	RECONNECT_DISABLED_PLACELAUNCH = 7, -- Unauthorized join
	RECONNECT_DISABLED = 8, -- General Disable by FFlag, i.e overloaded servers
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
}

local ErrorTitleLocalizationKey = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = "InGame.ConnectionError.Title.JoinError",
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = "InGame.ConnectionError.Title.JoinError",
	[ConnectionPromptState.RECONNECT_DISCONNECT] = "InGame.ConnectionError.Title.Disconnected",
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = "InGame.ConnectionError.Title.Disconnected",
	[ConnectionPromptState.TELEPORT_FAILED] = "InGame.ConnectionError.Title.TeleportFailed",
	[ConnectionPromptState.RECONNECT_DISABLED] = "InGame.CommonUI.Title.Error",
}

-- only return success when a valid root id is given
local function fetchStarterPlaceId(universeId)
	local apiPath = "v1/games"
	local params = "universeIds="..universeId
	local fullUrl = Url.GAME_URL..apiPath.."?"..params
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
local screenGui = create 'ScreenGui' {
	Parent = CoreGui,
	Name = "RobloxPromptGui",
	OnTopOfCoreBlur = true,
	DisplayOrder = 9,
	AutoLocalize = not FFlagDisableAutoTranslateForKeyTranslatedContent,
}

-- semi-transparent frame overlay
local promptOverlay = create 'Frame' {
	Name = 'promptOverlay',
	BackgroundColor3 = Color3.new(0, 0, 0),
	BackgroundTransparency = 1,
	Size = UDim2.new(1, 0, 1, inGameGlobalGuiInset),
	Position = UDim2.new(0, 0, 0, -inGameGlobalGuiInset),
	Active = false,
	Parent = screenGui
}

-- Button Callbacks --
local reconnectFunction = function()
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		return
	end

	AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectActivated")
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	errorPrompt:primaryShimmerPlay()

	local fetchStarterPlaceSuccess, starterPlaceId
	if game.GameId > 0 then
		fetchStarterPlaceSuccess, starterPlaceId = fetchStarterPlaceId(game.GameId)
	end
	-- Wait for the remaining time (if there is any)
	local currentTime = tick()
	if currentTime < graceTimeout then
		wait(graceTimeout - currentTime)
	end
	if fetchStarterPlaceSuccess and starterPlaceId > 0 then
		TeleportService:Teleport(starterPlaceId)
	else
		TeleportService:Teleport(game.PlaceId)
	end
end

local leaveFunction = function()
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
	[Enum.ConnectionError.DisconnectRaknetErrors] = true,
	[Enum.ConnectionError.PlacelaunchFlooded] = true,
	[Enum.ConnectionError.PlacelaunchHashException] = true,
	[Enum.ConnectionError.PlacelaunchHashExpired] = true,
	[Enum.ConnectionError.PlacelaunchUnauthorized] = true,
	[Enum.ConnectionError.PlacelaunchUserLeft] = true,
	[Enum.ConnectionError.PlacelaunchRestricted] = true,
}

local ButtonList = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = {
		{
			Text = "Retry",
			LocalizationKey = "InGame.CommonUI.Button.Retry",
			LayoutOrder = 2,
			Callback = reconnectFunction,
			Primary = true
		},
		{
			Text = "Cancel",
			LocalizationKey = "Feature.SettingsHub.Action.CancelSearch",
			LayoutOrder = 1,
			Callback = leaveFunction,
		}
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
		}
	},
	[ConnectionPromptState.TELEPORT_FAILED] = {
		{
			Text = "OK",
			LocalizationKey = "InGame.CommonUI.Button.Ok",
			LayoutOrder = 1,
			Callback = closePrompt,
			Primary = true,
		}
	},
	[ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		}
	},
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		}
	},
	[ConnectionPromptState.RECONNECT_DISABLED] = {
		{
			Text = "Leave",
			LocalizationKey = "Feature.SettingsHub.Label.LeaveButton",
			LayoutOrder = 1,
			Callback = leaveFunction,
			Primary = true,
		}
	}
}

local updateFullScreenEffect = {
	[ConnectionPromptState.NONE] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = false
		promptOverlay.Transparency = 1
	end,
	[ConnectionPromptState.RECONNECT_DISCONNECT] = function()
		RunService:SetRobloxGuiFocused(true)
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
		RunService:SetRobloxGuiFocused(true)
		promptOverlay.Active = true
		promptOverlay.Transparency = 1
	end,
	[ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH] = function()
		RunService:SetRobloxGuiFocused(false)
		promptOverlay.Active = true
		promptOverlay.Transparency = 0.3
	end,
	[ConnectionPromptState.RECONNECT_DISABLED] = function()
		RunService:SetRobloxGuiFocused(true)
		promptOverlay.Active = true
		promptOverlay.Transparency = 1
	end,
}

local function onEnter(newState)
	if not errorPrompt then
		local extraConfiguration = {
			MenuIsOpenKey = "ConnectionErrorPrompt",
			PlayAnimation = not fflagEnableErrorStringTesting
		}
		errorPrompt = ErrorPrompt.new("Default", extraConfiguration)
		errorPrompt:setParent(promptOverlay)
		errorPrompt:resizeWidth(screenWidth)
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
	if errorType == Enum.ConnectionError.OK then
		return ConnectionPromptState.NONE
	end

	if oldState == ConnectionPromptState.NONE then
		if reconnectDisabled then
			return ConnectionPromptState.RECONNECT_DISABLED
		end
		lastErrorTimeStamp = tick()

		if errorType == Enum.ConnectionError.DisconnectErrors then
			-- reconnection will be delayed after graceTimeout
			graceTimeout = tick() + defaultTimeoutTime
			errorForReconnect = Enum.ConnectionError.DisconnectErrors
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT
			end
			AnalyticsService:ReportCounter("ReconnectPrompt-Disconnect")
			return ConnectionPromptState.RECONNECT_DISCONNECT
		elseif errorType == Enum.ConnectionError.PlacelaunchErrors then
			errorForReconnect = Enum.ConnectionError.PlacelaunchErrors
			if reconnectDisabledList[errorCode] then
				return ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH
			end
			AnalyticsService:ReportCounter("ReconnectPrompt-PlaceLaunch")
			return ConnectionPromptState.RECONNECT_PLACELAUNCH
		elseif errorType == Enum.ConnectionError.TeleportErrors then
			AnalyticsService:ReportCounter("ReconnectPrompt-TeleportFailed")
			return ConnectionPromptState.TELEPORT_FAILED
		end
	end

	if oldState == ConnectionPromptState.IS_RECONNECTING then

		-- if is reconnecting, then it is the reconnect failure
		AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectFailed")

		if errorType == Enum.ConnectionError.TeleportErrors then

			if fflagDisableReconnectAfterPotentialTimeout then
				-- disable reconnect at second try after a long period of time since last error pops up.
				if tick() > lastErrorTimeStamp + fIntPotentialClientTimeout then
					if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
						return ConnectionPromptState.RECONNECT_DISABLED_PLACELAUNCH
					else
						return ConnectionPromptState.RECONNECT_DISABLED_DISCONNECT
					end
				end
			end

			if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
				return ConnectionPromptState.RECONNECT_PLACELAUNCH
			elseif errorForReconnect == Enum.ConnectionError.DisconnectErrors then
				return ConnectionPromptState.RECONNECT_DISCONNECT
			end
		end
	end

	return oldState
end

-- Look up in corelocalization for new string. Otherwise fallback to the original string
-- If it is teleport error but not TELEPORT_FAILED, use general string "Reconnect failed."
local function getErrorString(errorMsg, errorCode, reconnectError)
	if errorCode == Enum.ConnectionError.OK then
		return ""
	end

	if reconnectError then
		local success, attemptTranslation = pcall(function()
			return coreScriptTableTranslator:FormatByKey("InGame.ConnectionError.ReconnectFailed")
		end)
		if success then return attemptTranslation end
		return "Reconnect was unsuccessful. Please try again."
	end

	if errorCode == Enum.ConnectionError.DisconnectLuaKick then
		return errorMsg
	end

	local key = string.gsub(tostring(errorCode), "Enum", "InGame")
	if coreScriptTableTranslator then
		local success, attemptTranslation = pcall(function()
			if errorCode == Enum.ConnectionError.DisconnectIdle then
				return coreScriptTableTranslator:FormatByKey(key, {RBX_NUM=tostring(20)})
			end
			return coreScriptTableTranslator:FormatByKey(key)
		end)

		-- Mute errors for jv app if they are not successfully translated
		if not success and fflagShouldMuteUnlocalizedError then
			local successUnknownError, localizedUnknownError = pcall(function()
				return coreScriptTableTranslator:FormatByKey("InGame.ConnectionError.UnknownError")
			end)
			return successUnknownError and localizedUnknownError or ""
		end

		if success then return attemptTranslation end
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

	if errorType == Enum.ConnectionError.TeleportErrors and
		connectionPromptState ~= ConnectionPromptState.TELEPORT_FAILED then
		errorMsg = getErrorString(errorMsg, errorCode, true)
	else
		errorMsg = getErrorString(errorMsg, errorCode)
	end

	if connectionPromptState == ConnectionPromptState.RECONNECT_DISABLED then
		errorMsg = reconnectDisabledReason
	end

	if errorPrompt then
		errorPrompt:onErrorChanged(errorMsg, errorCode)
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
	if screenWidth ~= newWidth then
		screenWidth = newWidth
		errorPrompt:resizeWidth(screenWidth)
	end
end

local function onLocaleIdChanged()
	coreScriptTableTranslator = CoreGui.CoreScriptLocalization:GetTranslator(LocalizationService.RobloxLocaleId)
end

RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):connect(onScreenSizeChanged)
LocalizationService:GetPropertyChangedSignal("RobloxLocaleId"):connect(onLocaleIdChanged)

-- pre-run it once in case some error occurs before the connection
onErrorMessageChanged()
GuiService.ErrorMessageChanged:connect(onErrorMessageChanged)

if fflagEnableErrorStringTesting then
	local testingSet = require(RobloxGui.Modules.ErrorTestSets)
	for errorType, errorList in pairs(testingSet) do
		for _, errorCode in pairs(errorList) do
			updateErrorPrompt("Should show localized strings, please file a jira ticket for missing translation.", errorCode, errorType)
			wait(2)
			connectionPromptState = ConnectionPromptState.NONE
		end
	end
end