local RunService = game:GetService("RunService")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local AntiAddictionService = game:GetService("AntiAddictionService")

local Create = require(RobloxGui.Modules.Common.Create)
local ErrorPrompt = require(RobloxGui.Modules.ErrorPrompt)

local function leaveGame()
	GuiService.SelectedCoreObject = nil
	game:Shutdown()
end

local antiAddictionState = {
	Warning = 1,
	Lockout = 2
}

local function parseResponse(responseTable)
	local antiAddictionState = responseTable["response"]["state"]["type"]
	local messages = responseTable["response"]["state"]["messages"]
	return {
		State = antiAddictionState,
		Messages = messages,
	}
end

--[[
Update the MessageQueue:
	* Only add new pending message that has not appeared yet.
	* Remove message no longer appear in new heartbeat
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
	hasNotAppeared = function(self, id)
		local appeared = not self.pendingResolveMessage[id] and not self.resolvedMessage[id]
		if self.displaying then
			appeared = appeared and self.displaying.id ~= id
		end
		return appeared
	end,

	update = function(self, newMessageList)
		local validateIds = {}
		for _,message in pairs(newMessageList) do
			local id = message["id"]
			validateIds[id] = true
			if self:hasNotAppeared(id) then
				self.pendingResolveMessage[id] = message["text"]
			end
		end

		for id, message in pairs(self.pendingResolveMessage) do
			if not validateIds[id] then
				self.pendingResolveMessage[id] = nil
			end
		end

		for id, message in pairs(self.resolvedMessage) do
			if not validateIds[id] then
				self.resolvedMessage[id] = nil
			end
		end
		self:processNext()
	end,

	processNext = function(self)
		if self.displaying then
			return
		end
		local id, message = next(self.pendingResolveMessage)
		if not id then
			return
		end
		self.displaying = {id = id, Message = message}
		self.pendingResolveMessage[id] = nil

		if self.displayMessageCallback then
			self.displayMessageCallback(message)
		end

		spawn(function()
			AntiAddictionService:MarkRead(id)
		end)
	end,

	-- currently messages will be resolved on client side by user click on the "OK" button
	resolve = function(self)
		self.resolvedMessage[self.displaying.id] = self.displaying.Message
		self.displaying = nil
		self:processNext()
	end,
}

-- Setting up the prompt and connect callbacks
local extraConfiguration = {
	MessageTextScaled = true,
	HideErrorCode = true,
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
		LayoutOrder = 1,
		Callback = resolveMessage,
		Primary = true,
	}
}

messageQueue.displayMessageCallback = displayMessage
prompt:updateButtons(buttonList)
prompt:setErrorTitle("Warning")

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
onScreenSizeChanged(screenWidth)
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
local cachedResponse = AntiAddictionService:GetAntiAddictionData()
antiAddictionStatesUpdated(cachedResponse)
antiAddictionUpdatedConnection = AntiAddictionService.Updated:Connect(antiAddictionStatesUpdated)