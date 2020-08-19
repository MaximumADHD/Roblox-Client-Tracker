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

local screenTimeState = {
	Warning = 1,
	Lockout = 2
}

local function parseResponse(responseTable)
	local state = screenTimeState.Warning
	local instructions = responseTable.instructions
	for _, instruction in ipairs(instructions) do
		if instruction.type == screenTimeState.Lockout then
			--if there is a lockout, we will stop getting other state and then leaveGame
			state = screenTimeState.Lockout
			break
		end
	end
	return {
		State = state,
		Messages = responseTable.instructions,
	}
end

local function markRead(messageToDisplay)
	-- The ScreenTime V2 markRead endpoint, https://apis.roblox.qq.com/timed-entertainment-allowance/v1/reportExecute
	local apiPath = "/timed-entertainment-allowance/v1/reportExecute"
	local fullUrl = Url.APIS_URL .. apiPath
	local nowLocal = os.date("*t", os.time())
	-- Required time format 2020-06-04T04:44:09Z
	local formattedTime = ("%d-%02d-%02dT%02d:%02d:%02dZ"):format(nowLocal.year, nowLocal.month, nowLocal.day, nowLocal.hour, nowLocal.min, nowLocal.sec)
	local payload = HttpService:JSONEncode({
		instructionName = messageToDisplay.instructionName,
		serialId = messageToDisplay.id,
		execTime = formattedTime,
	})
	pcall(function()
		return HttpRbxApiService:PostAsyncFullUrl(fullUrl, payload) 
	end)
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
		for _, instruction in pairs(newMessageList) do
			local pendingMessage = {
				id = instruction.serialId,
				instructionName = instruction.instructionName,
				message = instruction.message,
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

		spawn(function()
			markRead(messageToDisplay)
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



local screenTimeUpdatedConnection
local function screenTimeStatesUpdated(responseTable)
	local response = parseResponse(responseTable)
	if response.State == screenTimeState.Lockout then
		-- immediately quit when locked out
		if screenTimeUpdatedConnection then
			screenTimeUpdatedConnection:Disconnect()
		end
		leaveGame()
	elseif response.State == screenTimeState.Warning then
		messageQueue:update(response.Messages)
	end
end

screenTimeUpdatedConnection = NotificationService.RobloxEventReceived:Connect(function(eventData)
	if eventData.namespace == "ScreenTimeClientNotifications" then
		local responseTable = HttpService:JSONDecode(eventData.detail)
		screenTimeStatesUpdated(responseTable)
	end
end)
