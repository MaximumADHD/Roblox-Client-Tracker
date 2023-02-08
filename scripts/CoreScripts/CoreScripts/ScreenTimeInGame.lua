--!nonstrict
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local NotificationService = game:GetService("NotificationService")
local CorePackages = game:GetService("CorePackages")
local HttpService = game:GetService("HttpService")

local ScreenTimeHttpRequests = require(CorePackages.Regulations.ScreenTime.HttpRequests)
local ScreenTimeConstants = require(CorePackages.Regulations.ScreenTime.Constants)
local GetFFlagScreenTimeSignalR = require(CorePackages.Regulations.ScreenTime.GetFFlagScreenTimeSignalR)
local Logging = require(CorePackages.Logging)
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)

local function leaveGame()
	GuiService.SelectedCoreObject = nil
	game:Shutdown()
end

local ScreenTimeState = {
	Warning = 1,
	Lockout = 2,
	OpenWebView = 3,
}

local TAG = "ScreenTimeInGame"

local screenTimeHttpRequests = ScreenTimeHttpRequests:new(HttpService)
local screenTimeUpdatedConnection

local function disconnectAndLeaveGame()
	if screenTimeUpdatedConnection then
		screenTimeUpdatedConnection:Disconnect()
		screenTimeUpdatedConnection = nil
	end
	leaveGame()
end

--[[
Resolving message:
	* display (move message PendingResolve -> Displaying)
	* report execution - report as soon as displayed to resolve with server
	* user input - pressing "ok" (move message Displaying -> Resolved)
]]

local messageQueue = {
	pendingResolveMessage = {},
	displaying = nil,
	resolvedMessage = {},
	displayMessageCallback = nil,

	update = function(self, instructions)
		for _, instruction in pairs(instructions) do
			local pendingMessage = {
				id = instruction.serialId,
				instructionName = instruction.instructionName,
				message = instruction.message,
				type = instruction.type,
			}
			table.insert(self.pendingResolveMessage, pendingMessage)
		end
		self:processNext()
	end,

	processNext = function(self)
		if self.displaying then -- dialog is showing
			return
		end

		local messageToDisplay = table.remove(self.pendingResolveMessage, 1)
		if not messageToDisplay then -- table is empty
			return
		end

		if self.resolvedMessage[messageToDisplay.id] then -- message was displayed before
			self:processNext()
			return
		end

		self.displaying = messageToDisplay
		if self.displayMessageCallback then
			self.displayMessageCallback(messageToDisplay.message)
		end
	end,

	-- currently messages will be resolved on client side by user click on the "OK" button
	resolve = function(self)
		self.resolvedMessage[self.displaying.id] = self.displaying.message
		-- Report execution after user interacted
		screenTimeHttpRequests:reportExecution(self.displaying.instructionName, self.displaying.id)

		self.displaying = nil
		self:processNext()
	end,
}

-- Setting up the prompt and connect callbacks
local extraConfiguration = {
	MessageTextScaled = true,
	HideErrorCode = true,
	MenuIsOpenKey = "ScreenTimePrompt",
}

local prompt = ErrorPrompt.new("Default", extraConfiguration)
prompt:setParent(RobloxGui)

local function displayMessage(message)
	prompt:_open(message)
end

local function resolveMessage()
	prompt:_close()
	messageQueue:resolve()
end

local buttonList = {
	{
		Text = "OK",
		LocalizationKey = "InGame.CommonUI.Button.Ok",
		LayoutOrder = 1,
		Callback = resolveMessage,
		Primary = true,
	}
}

messageQueue.displayMessageCallback = displayMessage

prompt:updateButtons(buttonList)
prompt:setErrorTitle("Warning", "InGame.CommonUI.Title.Warning")

local screenWidth = RobloxGui.AbsoluteSize.X
local function onScreenSizeChanged()
	if not prompt then
		return
	end
	local newWidth = RobloxGui.AbsoluteSize.X
	if screenWidth ~= newWidth then
		screenWidth = newWidth
		prompt:resizeWidth(screenWidth)
	end
end

RobloxGui:GetPropertyChangedSignal("AbsoluteSize"):connect(onScreenSizeChanged)
onScreenSizeChanged()

local function screenTimeStatesUpdated(instructions)
	local filteredInstructions = {}
	for _, instruction in ipairs(instructions) do
		if instruction.type == ScreenTimeState.Warning then
			table.insert(filteredInstructions, instruction)
		elseif instruction.type == ScreenTimeState.Lockout then
			-- If there is a lockout, we will stop getting other state and then leaveGame
			disconnectAndLeaveGame()
			return
		elseif instruction.type == ScreenTimeState.OpenWebView then
			-- Don’t process it in games according to the requirement.
			-- Doc: https://luobu.atlassian.net/l/c/BJ0vnXZi
			-- It will be processed by other codes when user is not in any game.
		end
	end

	messageQueue:update(filteredInstructions)
end

local function requestInstructions()
	screenTimeHttpRequests:getInstructions(function(success, unauthorized, instructions)
		if success then
			screenTimeStatesUpdated(instructions)
		elseif unauthorized then
			-- Leave it to LuaApp
			Logging.warn(TAG .. " requestInstructions failed: unauthorized")
		else
			Logging.warn(TAG .. " requestInstructions failed: error")
		end
	end)
end

screenTimeUpdatedConnection = NotificationService.RobloxEventReceived:Connect(function(eventData)
	if GetFFlagScreenTimeSignalR() then
		if eventData.namespace == ScreenTimeConstants.SIGNALR_NAMESPACE and
			eventData.detailType == ScreenTimeConstants.SIGNALR_TYPE_NEW_INSTRUCTION then
			requestInstructions()
		end
	else
		if eventData.namespace == ScreenTimeConstants.HEARTBEAT_NOTIFICATIONS_NAMESPACE then
			if eventData.detailType == ScreenTimeConstants.HEARTBEAT_CONSECUTIVE_FAILURE then
				disconnectAndLeaveGame()
				return
			end

			local success, json = pcall(function()
				return HttpService:JSONDecode(eventData.detail)
			end)
			if not success then
				Logging.warn(TAG .. " json decoding failed")
				return
			end
			-- "errorCode" has been checked by C++, so no need to recheck.
			if json.notifications == nil then
				Logging.warn(TAG .. " empty heartbeat notifications")
				return
			end
			for _, notification in ipairs(json.notifications) do
				if notification.type == ScreenTimeConstants.HEARTBEAT_NOTIFICATION_TYPE_NEW_INSTRUCTION then
					requestInstructions()
				end
			end
		end
	end
end)
