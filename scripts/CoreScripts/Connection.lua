local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local TeleportService = game:GetService("TeleportService")

local create = require(RobloxGui.Modules.Common.Create)
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)

local LEAVE_GAME_FRAME_WAITS = 2
local inGameGlobalGuiInset = settings():GetFVariable("InGameGlobalGuiInset")

local errorPrompt

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
	connectionPromptState = ConnectionPromptState.IS_RECONNECTING
	TeleportService:Teleport(game.placeId)
end

local leaveFunction = function()
	GuiService.SelectedCoreObject = nil
	for i = 1, LEAVE_GAME_FRAME_WAITS do
		RunService.RenderStepped:wait()
	end
	RunService:SetRobloxGuiFocused(false)
	game:Shutdown()
end

local closePrompt = function()
	GuiService:ClearError()
end
-- Button Callbacks --

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
}

-- state transit function
local function processError(errorType)
	if errorType == Enum.ConnectionError.OK then
		connectionPromptState = ConnectionPromptState.NONE
	elseif connectionPromptState == ConnectionPromptState.NONE then
		if errorType == Enum.ConnectionError.DisconnectErrors then
			connectionPromptState = ConnectionPromptState.RECONNECT_DISCONNECT
			errorForReconnect = Enum.ConnectionError.DisconnectErrors
		elseif errorType == Enum.ConnectionError.PlacelaunchErrors then
			connectionPromptState = ConnectionPromptState.RECONNECT_PLACELAUNCH
			errorForReconnect = Enum.ConnectionError.PlacelaunchErrors
		elseif errorType == Enum.ConnectionError.TeleportErrors then
			connectionPromptState = ConnectionPromptState.TELEPORT_FAILED
		end

	elseif connectionPromptState == ConnectionPromptState.IS_RECONNECTING then

		-- if is reconnecting, then it is the reconnect failure
		if errorType == Enum.ConnectionError.TeleportErrors then
			if errorForReconnect == Enum.ConnectionError.PlacelaunchErrors then
				connectionPromptState = ConnectionPromptState.RECONNECT_PLACELAUNCH
			elseif errorForReconnect == Enum.ConnectionError.DisconnectErrors then
				connectionPromptState = ConnectionPromptState.RECONNECT_DISCONNECT
			end
		end
	end
end

local function updateErrorPrompt(errorMsg, errorCode, errorType)
	processError(errorType)
	if updateFullScreenEffect[connectionPromptState] then
		updateFullScreenEffect[connectionPromptState]()
	end
	if connectionPromptState ~= ConnectionPromptState.TELEPORT_FAILED then
		errorMsg = string.match(errorMsg, "Teleport Failed: (.*)") or errorMsg
	end
	errorPrompt:setErrorTitle(ErrorTitles[connectionPromptState])
	errorPrompt:updateButtons(ButtonList[connectionPromptState])
	errorPrompt:onErrorChanged(errorMsg, errorCode)
end

local function onErrorMessageChanged()
	local errorMsg = GuiService:GetErrorMessage()
	local errorCode = GuiService:GetErrorCode()
	local errorType = GuiService:GetErrorType()
	updateErrorPrompt(errorMsg, errorCode, errorType)
end

GuiService.ErrorMessageChanged:connect(onErrorMessageChanged)