local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local NotificationService = game:GetService("NotificationService")
local HttpService = game:GetService("HttpService")
local HttpRbxApiService = game:GetService("HttpRbxApiService")

local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)
local Url = require(RobloxGui.Modules.Common.Url)

local function leaveGame()
	GuiService.SelectedCoreObject = nil
	game:Shutdown()
end

local antiAddictionState = {
	Warning = 1,
	Lockout = 2
}

local function parseResponse(responseTable)
	local state = responseTable["response"]["state"]["type"]
	local messages = responseTable["response"]["state"]["messages"]
	return {
		State = state,
		Messages = messages,
	}
end

local function markRead(messageId)
	local apiPath = "screen-time-api/v1/messages/mark-read"
	local params = "mesasgeId=" .. messageId
	local fullUrl = Url.RCS_URL..apiPath.."?"..params
	local success, result = pcall(HttpRbxApiService.GetAsyncFullUrl, HttpRbxApiService, fullUrl)
end

--[[
Resolving message:
	* display (move message PendingResolve -> Displaying)
	* markread - spawned as soon as displayed to resolve with server
	* user input - pressing "ok" (move message Displaying -> Resolved)
]]

local messageQueue = {
	pendingResolveMessage = {},
	displaying = nil,
	resolvedMessage = {},
	displayMessageCallback = nil,

	update = function(self, newMessageList)
		for _, message in pairs(newMessageList) do
			local pendingMessage = {
				id = message["id"],
				message = message["text"]
			}
			table.insert(self.pendingResolveMessage, pendingMessage)
		end
		self:processNext()
	end,

	processNext = function(self)
		if self.displaying then
			return
		end
		local messageToDisplay = table.remove(self.pendingResolveMessage, 1)
		if not messageToDisplay then
			return
		end

		if self.resolvedMessage[messageToDisplay.id] then
			self:processNext()
			return
		end

		self.displaying = messageToDisplay

		if self.displayMessageCallback then
			self.displayMessageCallback(messageToDisplay.message)
		end

		spawn(function()
			markRead(messageToDisplay.id)
		end)
	end,

	-- currently messages will be resolved on client side by user click on the "OK" button
	resolve = function(self)
		self.resolvedMessage[self.displaying.id] = self.displaying.message
		self.displaying = nil
		self:processNext()
	end,
}

-- Setting up the prompt and connect callbacks
local extraConfiguration = {
	MessageTextScaled = true,
	HideErrorCode = true,
	MenuIsOpenKey = "AnitAddictionPrompt",
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
-- Setting up the prompt and connect callbacks

local antiAddictionUpdatedConnection
local function antiAddictionStatesUpdated(responseTable)
	local response = parseResponse(responseTable)

	-- immediately quit when locked out
	if response.State == antiAddictionState.Lockout then
		if antiAddictionUpdatedConnection then
			antiAddictionUpdatedConnection:Disconnect()
		end
		leaveGame()
	end

	messageQueue:update(response.Messages)
end

antiAddictionUpdatedConnection = NotificationService.RobloxEventReceived:Connect(function(eventData)
	if eventData.namespace == "AntiAddictionNotifications" then
		local responseTable = HttpService:JSONDecode(eventData.detail)
		antiAddictionStatesUpdated(responseTable)
	end
end)