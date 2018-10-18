local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TeleportService = game:GetService("TeleportService")
local AnalyticsService = game:GetService("AnalyticsService")

local create = require(RobloxGui.Modules.Common.Create)
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)

local LEAVE_GAME_FRAME_WAITS = 2

local function safeGetFInt(name, defaultValue)
	local success, result = pcall(function() return tonumber(settings():GetFVariable(name)) end)
	return success and result or defaultValue
end
local inGameGlobalGuiInset = safeGetFInt("InGameGlobalGuiInset", 36)
local defaultTimeoutTime  = safeGetFInt("DefaultTimeoutTimeMs", 10000) / 1000

local errorPrompt
local graceTimeout = -1
local screenWidth = RobloxGui.AbsoluteSize.X

local ConnectionPromptState = {
	NONE = 1, -- General Error Message
	RECONNECT_PLACELAUNCH = 2, -- Show PlaceLaunching Reconnect Options
	RECONNECT_DISCONNECT = 3, -- Show Disconnect Reconnect Options
	TELEPORT_FAILED = 4, --  Show Teleport Failure Message
	IS_RECONNECTING = 5, -- Show Reconnecting Animation
	RECONNECT_DISABLED = 6, -- i.e After player being kicked from server
}

local connectionPromptState = ConnectionPromptState.NONE

-- error that triggers reconnection
local errorForReconnect = Enum.ConnectionError.OK

-- this will be loaded from localization table
local ErrorTitles = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = "Join Error",
	[ConnectionPromptState.RECONNECT_DISCONNECT] = "Disconnected",
	[ConnectionPromptState.RECONNECT_DISABLED] = "Disconnected",
	[ConnectionPromptState.TELEPORT_FAILED] = "Teleport Failed",
}

-- might have different design on xbox
-- if GuiService:IsTenFootInterface() then
-- errorPrompt = ErrorPrompt.new("XBox")
errorPrompt = ErrorPrompt.new("Default")

-- Screengui holding the prompt and make it on top of blur
local screenGui = create 'ScreenGui' {
	Parent = CoreGui,
	Name = "RobloxPromptGui",
	OnTopOfCoreBlur = true
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

errorPrompt:setParent(promptOverlay)

-- Button Callbacks --
local reconnectFunction = function()
	if connectionPromptState == ConnectionPromptState.IS_RECONNECTING then
		return
	end

	AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectActivated")
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	errorPrompt:primaryShimmerPlay()

	-- Wait until it passes the defaultTimeOut
	local currentTime = tick()
	if currentTime < graceTimeout then
		wait(graceTimeout - currentTime)
	end
	TeleportService:Teleport(game.placeId)
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
	[Enum.ConnectionError.DisconnectPlayerless] = true,
	[Enum.ConnectionError.DisconnectCloudEditKick] = true,
	[Enum.ConnectionError.DisconnectHashTimeout] = true,
	[Enum.ConnectionError.DisconnectOnRemoteSysStats] = true,
}

local ButtonList = {
	[ConnectionPromptState.RECONNECT_PLACELAUNCH] = {
		{
			Text = "Retry",
			LayoutOrder = 2,
			Callback = reconnectFunction,
			Primary = true
		},
		{
			Text = "Cancel",
			LayoutOrder = 1,
			Callback = leaveFunction,
		}
	},
	[ConnectionPromptState.RECONNECT_DISCONNECT] = {
		{
			Text = "Reconnect",
			LayoutOrder = 2,
			Callback = reconnectFunction,
			Primary = true
		},
		{
			Text = "Leave",
			LayoutOrder = 1,
			Callback = leaveFunction,
		}
	},
	[ConnectionPromptState.TELEPORT_FAILED] = {
		{
			Text = "OK",
			LayoutOrder = 1,
			Callback = closePrompt,
			Primary = true,
		}
	},
	[ConnectionPromptState.RECONNECT_DISABLED] = {
		{
			Text = "Leave",
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
	[ConnectionPromptState.RECONNECT_DISABLED] = function()
		RunService:SetRobloxGuiFocused(true)
		promptOverlay.Active = true
		promptOverlay.Transparency = 1
	end,
}

local function onEnter(newState)
	if updateFullScreenEffect[newState] then
		updateFullScreenEffect[newState]()
	end
	errorPrompt:setErrorTitle(ErrorTitles[newState])
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

	if reconnectDisabledList[errorCode] then
		return ConnectionPromptState.RECONNECT_DISABLED
	end

	if oldState == ConnectionPromptState.NONE then
		if errorType == Enum.ConnectionError.DisconnectErrors then

			-- reconnection will be delayed after graceTimeout
			graceTimeout = tick() + defaultTimeoutTime
			errorForReconnect = Enum.ConnectionError.DisconnectErrors
			return ConnectionPromptState.RECONNECT_DISCONNECT
		elseif errorType == Enum.ConnectionError.PlacelaunchErrors then
			errorForReconnect = Enum.ConnectionError.PlacelaunchErrors
			return ConnectionPromptState.RECONNECT_PLACELAUNCH
		elseif errorType == Enum.ConnectionError.TeleportErrors then
			return ConnectionPromptState.TELEPORT_FAILED
		end
	end

	if oldState == ConnectionPromptState.IS_RECONNECTING then

		-- if is reconnecting, then it is the reconnect failure
		AnalyticsService:ReportCounter("ReconnectPrompt-ReconnectFailed")
		if errorType == Enum.ConnectionError.TeleportErrors then
			if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
				return ConnectionPromptState.RECONNECT_PLACELAUNCH
			elseif errorForReconnect == Enum.ConnectionError.DisconnectErrors then
				return ConnectionPromptState.RECONNECT_DISCONNECT
			end
		end
	end

	return oldState
end

local function updateErrorPrompt(errorMsg, errorCode, errorType)
	local newPromptState = stateTransit(errorType, errorCode, connectionPromptState)
	if newPromptState ~= connectionPromptState then
		onExit(connectionPromptState)
		connectionPromptState = newPromptState
		onEnter(newPromptState)
	end

	if connectionPromptState ~= ConnectionPromptState.TELEPORT_FAILED then
		errorMsg = string.match(errorMsg, "Teleport Failed: (.*)") or errorMsg
	end
	errorPrompt:onErrorChanged(errorMsg, errorCode)
end

local function onErrorMessageChanged()
	local errorMsg = GuiService:GetErrorMessage()
	local errorCode = GuiService:GetErrorCode()
	local errorType = GuiService:GetErrorType()
	updateErrorPrompt(errorMsg, errorCode, errorType)
end

local function onScreenSizeChanged()
	local newWidth = RobloxGui.AbsoluteSize.X
	if screenWidth ~= newWidth then
		screenWidth = newWidth
		errorPrompt:resizeWidth(screenWidth)
	end
end

-- adjust size to the current screen width
errorPrompt:resizeWidth(screenWidth)
RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):connect(onScreenSizeChanged)

-- pre-run it once in case some error occurs before the connection
onErrorMessageChanged()
GuiService.ErrorMessageChanged:connect(onErrorMessageChanged)