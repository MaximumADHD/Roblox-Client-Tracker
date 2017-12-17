--[[
	// FileName: ChatSelector.lua
	// Written by: Xsitsu
	// Description: Code for determining which chat version to use in game.
]]

local FORCE_IS_CONSOLE = false
local FORCE_IS_VR = false

local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")
local Modules = RobloxGui:WaitForChild("Modules")
local Common = Modules:WaitForChild("Common")

local StarterGui = game:GetService("StarterGui")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local RunService = game:GetService("RunService")

local Players = game:GetService("Players")

local Util = require(RobloxGui.Modules.ChatUtil)

local ClassicChatEnabled = Players.ClassicChat
local BubbleChatEnabled = Players.BubbleChat

local useModule = nil

local state = {Visible = true}
local interface = {}
do
	function interface:ToggleVisibility()
		if (useModule) then
			useModule:ToggleVisibility()
		else
			state.Visible = not state.Visible
		end
	end

	function interface:SetVisible(visible)
		if (useModule) then
			useModule:SetVisible(visible)
		else
			state.Visible = visible
		end
	end

	function interface:FocusChatBar()
		if (useModule) then
			useModule:FocusChatBar()
		end
	end

	function interface:GetVisibility()
		if (useModule) then
			return useModule:GetVisibility()
		else
			return state.Visible
		end
	end

	function interface:GetMessageCount()
		if (useModule) then
			return useModule:GetMessageCount()
		else
			return 0
		end
	end

	function interface:TopbarEnabledChanged(...)
		if (useModule) then
			return useModule:TopbarEnabledChanged(...)
		end
	end

	function interface:IsFocused(useWasFocused)
		if (useModule) then
			return useModule:IsFocused(useWasFocused)
		else
			return false
		end
	end

	function interface:ClassicChatEnabled()
		if useModule then
			return useModule:ClassicChatEnabled()
		else
			return ClassicChatEnabled
		end
	end

	function interface:IsBubbleChatOnly()
		if useModule then
			return useModule:IsBubbleChatOnly()
		end
		return BubbleChatEnabled and not ClassicChatEnabled
	end

	function interface:IsDisabled()
		if useModule then
			return useModule:IsDisabled()
		end
		return not (BubbleChatEnabled or ClassicChatEnabled)
	end

	interface.ChatBarFocusChanged = Util.Signal()
	interface.VisibilityStateChanged = Util.Signal()
	interface.MessagesChanged = Util.Signal()

	-- Signals that are called when we get information on if Bubble Chat and Classic chat are enabled from the chat.
	interface.BubbleChatOnlySet = Util.Signal()
	interface.ChatDisabled = Util.Signal()
end

local StopQueueingSystemMessages = false
local MakeSystemMessageQueue = {}
local function MakeSystemMessageQueueingFunction(data)
	if (StopQueueingSystemMessages) then return end
	table.insert(MakeSystemMessageQueue, data)
end

local function NonFunc() end
StarterGui:RegisterSetCore("ChatMakeSystemMessage", MakeSystemMessageQueueingFunction)
StarterGui:RegisterSetCore("ChatWindowPosition", NonFunc)
StarterGui:RegisterGetCore("ChatWindowPosition", NonFunc)
StarterGui:RegisterSetCore("ChatWindowSize", NonFunc)
StarterGui:RegisterGetCore("ChatWindowSize", NonFunc)
StarterGui:RegisterSetCore("ChatBarDisabled", NonFunc)
StarterGui:RegisterGetCore("ChatBarDisabled", NonFunc)


StarterGui:RegisterGetCore("ChatActive", function()
	return interface:GetVisibility()
end)
StarterGui:RegisterSetCore("ChatActive", function(visible)
	return interface:SetVisible(visible)
end)


local function ConnectSignals(useModule, interface, sigName)
	--// "MessagesChanged" event is not created for Studio Start Server
	if (useModule[sigName]) then
		useModule[sigName]:connect(function(...) interface[sigName]:fire(...) end)
	end
end

local isConsole = GuiService:IsTenFootInterface() or FORCE_IS_CONSOLE
local isVR = UserInputService.VREnabled or FORCE_IS_VR

if ( not isConsole and not isVR ) then
	spawn(function()
		useModule = require(RobloxGui.Modules.NewChat)

		ConnectSignals(useModule, interface, "ChatBarFocusChanged")
		ConnectSignals(useModule, interface, "VisibilityStateChanged")
		ConnectSignals(useModule, interface, "BubbleChatOnlySet")
		ConnectSignals(useModule, interface, "ChatDisabled")

		while Players.LocalPlayer == nil do Players.ChildAdded:wait() end
		local LocalPlayer = Players.LocalPlayer

		ConnectSignals(useModule, interface, "MessagesChanged")
		-- Retained for legacy reasons, no longer used by the chat scripts.
		StarterGui:RegisterGetCore("UseNewLuaChat", function() return true end)

		useModule:SetVisible(state.Visible)
		StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, StarterGui:GetCoreGuiEnabled(Enum.CoreGuiType.Chat))

		StopQueueingSystemMessages = true
		for i, messageData in pairs(MakeSystemMessageQueue) do
			pcall(function() StarterGui:SetCore("ChatMakeSystemMessage", messageData) end)
		end
	end)
elseif not isConsole then
	useModule = require(RobloxGui.Modules.Chat)

	ConnectSignals(useModule, interface, "ChatBarFocusChanged")
	ConnectSignals(useModule, interface, "VisibilityStateChanged")

	while Players.LocalPlayer == nil do Players.ChildAdded:wait() end
	local LocalPlayer = Players.LocalPlayer

	if (LocalPlayer.ChatMode == Enum.ChatMode.TextAndMenu or RunService:IsStudio()) then
		ConnectSignals(useModule, interface, "MessagesChanged")
	end

	StarterGui:RegisterGetCore("UseNewLuaChat", function() return false end)

end

return interface
