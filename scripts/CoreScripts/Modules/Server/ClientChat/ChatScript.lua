--	// FileName: ChatScript.lua
--	// Written by: Xsitsu
--	// Description: Hooks main chat module up to Topbar in corescripts.

local StarterGui = game:GetService("StarterGui")
local GuiService = game:GetService("GuiService")
local ChatService = game:GetService("Chat")

local MAX_COREGUI_CONNECTION_ATTEMPTS = 10

local ClientChatModules = ChatService:WaitForChild("ClientChatModules")
local ChatSettings = require(ClientChatModules:WaitForChild("ChatSettings"))

local function DoEverything()
	local Chat = require(script:WaitForChild("ChatMain"))

	local containerTable = {}
	containerTable.ChatWindow = {}
	containerTable.SetCore = {}
	containerTable.GetCore = {}

	containerTable.ChatWindow.ChatTypes = {}
	containerTable.ChatWindow.ChatTypes.BubbleChatEnabled = ChatSettings.BubbleChatEnabled
	containerTable.ChatWindow.ChatTypes.ClassicChatEnabled = ChatSettings.ClassicChatEnabled

	--// Connection functions
	local function ConnectEvent(name)
		local event = Instance.new("BindableEvent")
		event.Name = name
		containerTable.ChatWindow[name] = event

		event.Event:connect(function(...) Chat[name](Chat, ...) end)
	end

	local function ConnectFunction(name)
		local func = Instance.new("BindableFunction")
		func.Name = name
		containerTable.ChatWindow[name] = func

		func.OnInvoke = function(...) return Chat[name](Chat, ...) end
	end

	local function ReverseConnectEvent(name)
		local event = Instance.new("BindableEvent")
		event.Name = name
		containerTable.ChatWindow[name] = event

		Chat[name]:connect(function(...) event:Fire(...) end)
	end

	local function ConnectSignal(name)
		local event = Instance.new("BindableEvent")
		event.Name = name
		containerTable.ChatWindow[name] = event

		event.Event:connect(function(...) Chat[name]:fire(...) end)
	end

	local function ConnectSetCore(name)
		local event = Instance.new("BindableEvent")
		event.Name = name
		containerTable.SetCore[name] = event

		event.Event:connect(function(...) Chat[name.."Event"]:fire(...) end)
	end

	local function ConnectGetCore(name)
		local func = Instance.new("BindableFunction")
		func.Name = name
		containerTable.GetCore[name] = func

		func.OnInvoke = function(...) return Chat["f"..name](...) end
	end

	--// Do connections
	ConnectEvent("ToggleVisibility")
	ConnectEvent("SetVisible")
	ConnectEvent("FocusChatBar")
	ConnectFunction("GetVisibility")
	ConnectFunction("GetMessageCount")
	ConnectEvent("TopbarEnabledChanged")
	ConnectFunction("IsFocused")

	ReverseConnectEvent("ChatBarFocusChanged")
	ReverseConnectEvent("VisibilityStateChanged")
	ReverseConnectEvent("MessagesChanged")
	ReverseConnectEvent("MessagePosted")

	ConnectSignal("CoreGuiEnabled")

	ConnectSetCore("ChatMakeSystemMessage")
	ConnectSetCore("ChatWindowPosition")
	ConnectSetCore("ChatWindowSize")
	ConnectGetCore("ChatWindowPosition")
	ConnectGetCore("ChatWindowSize")
	ConnectSetCore("ChatBarDisabled")
	ConnectGetCore("ChatBarDisabled")

	ConnectEvent("SpecialKeyPressed")

	SetCoreGuiChatConnections(containerTable)
end

function SetCoreGuiChatConnections(containerTable)
	local tries = 0
	while tries < MAX_COREGUI_CONNECTION_ATTEMPTS do
		tries = tries + 1
		local success, ret = pcall(function() StarterGui:SetCore("CoreGuiChatConnections", containerTable) end)
		if success then
			break
		end
		if not success and tries == MAX_COREGUI_CONNECTION_ATTEMPTS then
			error("Error calling SetCore CoreGuiChatConnections: " .. ret)
		end
		wait()
	end
end

function checkBothChatTypesDisabled()
	if ChatSettings.BubbleChatEnabled ~= nil then
		if ChatSettings.ClassicChatEnabled ~= nil then
			return not (ChatSettings.BubbleChatEnabled or ChatSettings.ClassicChatEnabled)
		end
	end
	return false
end

if (not GuiService:IsTenFootInterface()) and (not game:GetService('UserInputService').VREnabled) then
	if not checkBothChatTypesDisabled() then
		DoEverything()
	else
		local containerTable = {}
		containerTable.ChatWindow = {}

		containerTable.ChatWindow.ChatTypes = {}
		containerTable.ChatWindow.ChatTypes.BubbleChatEnabled = false
		containerTable.ChatWindow.ChatTypes.ClassicChatEnabled = false
		SetCoreGuiChatConnections(containerTable)
	end
end
