--[[
	// FileName: NewChat.lua
	// Written by: Xsitsu
	// Description: Bridges the topbar in corescripts to any chat system running in the non-corescripts environment.
]]
local CoreGuiService = game:GetService("CoreGui")
local RobloxGui = CoreGuiService:WaitForChild("RobloxGui")

local StarterGui = game:GetService("StarterGui")
local GuiService = game:GetService("GuiService")
local PlayersService = game:GetService("Players")

local ChatTypesSet = false
local ClassicChatEnabled = PlayersService.ClassicChat
local BubbleChatEnabled = PlayersService.BubbleChat

local Util = require(RobloxGui.Modules.ChatUtil)

local moduleApiTable = {}
do
		local ChatWindowState =
		{
			Visible = true,
			MessageCount = 0,
			TopbarEnabled = true,
			CoreGuiEnabled = true,
		}

		local communicationsConnections = {}
		local eventConnections = {}

		local SetCoreCache = {}

		local function FindInCollectionByKeyAndType(collection, indexName, type)
			if (collection and collection[indexName] and collection[indexName]:IsA(type)) then
				return collection[indexName]
			end
			return nil
		end

		local function DispatchEvent(eventName, ...)
			local event = FindInCollectionByKeyAndType(communicationsConnections.ChatWindow, eventName, "BindableEvent")
			if (event) then
				event:Fire(...)
				return true
			end
			return false
		end

		local function AttemptInvokeFunction(functionName, ...)
			local func = FindInCollectionByKeyAndType(communicationsConnections.ChatWindow, functionName, "BindableFunction")
			if (func) then
				return true, func:Invoke()
			end
			return false, nil
		end

		local function DoConnectGetCore(connectionName)
			StarterGui:RegisterGetCore(connectionName, function(data)
				local func = FindInCollectionByKeyAndType(communicationsConnections.GetCore, connectionName, "BindableFunction")
				local rVal = nil
				if (func) then rVal = func:Invoke(data) end
				return rVal
			end)
		end

		function moduleApiTable:ToggleVisibility()
			ChatWindowState.Visible = not ChatWindowState.Visible
			local didFire = DispatchEvent("ToggleVisibility")
			if (not didFire) then
				moduleApiTable.VisibilityStateChanged:fire(ChatWindowState.Visible)
			end
		end

		function moduleApiTable:SetVisible(visible)
			ChatWindowState.Visible = visible
			local didFire = DispatchEvent("SetVisible", ChatWindowState.Visible)
			if (not didFire) then
				moduleApiTable.VisibilityStateChanged:fire(ChatWindowState.Visible)
			end
		end

		function moduleApiTable:FocusChatBar()
			DispatchEvent("FocusChatBar")
		end

		function moduleApiTable:GetVisibility()
			local success, retVal = AttemptInvokeFunction("GetVisibility")
			if (success) then
				return retVal
			else
				return ChatWindowState.Visible
			end
		end

		function moduleApiTable:GetMessageCount()
			local success, retVal = AttemptInvokeFunction("GetMessageCount")
			if (success) then
				return retVal
			else
				return ChatWindowState.MessageCount
			end
		end

		function moduleApiTable:TopbarEnabledChanged(enabled)
			ChatWindowState.TopbarEnabled = enabled
			DispatchEvent("TopbarEnabledChanged", ChatWindowState.TopbarEnabled)
		end

		function moduleApiTable:IsFocused(useWasFocused)
			local success, retVal = AttemptInvokeFunction("IsFocused", useWasFocused)
			if (success) then
				return retVal
			else
				return false
			end
		end

		function moduleApiTable:ClassicChatEnabled()
			return ClassicChatEnabled
		end

		function moduleApiTable:IsBubbleChatOnly()
			return BubbleChatEnabled and not ClassicChatEnabled
		end

		function moduleApiTable:IsDisabled()
			return not (BubbleChatEnabled or ClassicChatEnabled)
		end

		function SetInitialChatTypes(chatTypesTable)
			if ChatTypesSet then
				return
			end
			ChatTypesSet = true

			local bubbleChat = chatTypesTable.BubbleChatEnabled
			local classicChat = chatTypesTable.ClassicChatEnabled
			if type(bubbleChat) == "boolean" then
				BubbleChatEnabled = bubbleChat
			end
			if type(classicChat) == "boolean" then
				ClassicChatEnabled = classicChat
			end

			if not (ClassicChatEnabled or BubbleChatEnabled) then
				moduleApiTable.ChatDisabled:fire()
			end
			if BubbleChatEnabled and not ClassicChatEnabled then
				moduleApiTable.BubbleChatOnlySet:fire()
			end
		end

		moduleApiTable.ChatBarFocusChanged = Util.Signal()
		moduleApiTable.VisibilityStateChanged = Util.Signal()
		moduleApiTable.MessagesChanged = Util.Signal()

		-- Signals that are called when we get information on if Bubble Chat and Classic chat are enabled from the chat.
		moduleApiTable.BubbleChatOnlySet = Util.Signal()
		moduleApiTable.ChatDisabled = Util.Signal()

		StarterGui.CoreGuiChangedSignal:connect(function(coreGuiType, enabled)
			if (coreGuiType == Enum.CoreGuiType.All or coreGuiType == Enum.CoreGuiType.Chat) then
				ChatWindowState.CoreGuiEnabled = enabled
				DispatchEvent("CoreGuiEnabled", ChatWindowState.CoreGuiEnabled)
			end
		end)

		GuiService:AddSpecialKey(Enum.SpecialKey.ChatHotkey)
		GuiService.SpecialKeyPressed:connect(function(key, modifiers)
			DispatchEvent("SpecialKeyPressed", key, modifiers)
		end)

		function DoConnectSetCore(setCoreName)
			StarterGui:RegisterSetCore(setCoreName, function(data)
				local event = FindInCollectionByKeyAndType(communicationsConnections.SetCore, setCoreName, "BindableEvent")
				if (event) then
					event:Fire(data)
				else
					if SetCoreCache[setCoreName] == nil then
						SetCoreCache[setCoreName] = {}
					end
					table.insert(SetCoreCache[setCoreName], data)
				end
			end)
		end

		DoConnectSetCore("ChatMakeSystemMessage")
		DoConnectSetCore("ChatWindowPosition")
		DoConnectSetCore("ChatWindowSize")
		DoConnectSetCore("ChatBarDisabled")

		DoConnectGetCore("ChatWindowPosition")
		DoConnectGetCore("ChatWindowSize")
		DoConnectGetCore("ChatBarDisabled")

		local function RegisterCoreGuiConnections(containerTable)
			if (type(containerTable) == "table") then
				local chatWindowCollection = containerTable.ChatWindow
				local setCoreCollection = containerTable.SetCore
				local getCoreCollection = containerTable.GetCore

				if (type(chatWindowCollection) == "table") then
					for i, v in pairs(eventConnections) do
						v:disconnect()
					end

					if type(chatWindowCollection.ChatTypes) == "table" then
						SetInitialChatTypes(chatWindowCollection.ChatTypes)
					end

					eventConnections = {}
					communicationsConnections.ChatWindow = {}

					communicationsConnections.ChatWindow.ToggleVisibility = FindInCollectionByKeyAndType(chatWindowCollection, "ToggleVisibility", "BindableEvent")
					communicationsConnections.ChatWindow.SetVisible = FindInCollectionByKeyAndType(chatWindowCollection, "SetVisible", "BindableEvent")
					communicationsConnections.ChatWindow.FocusChatBar = FindInCollectionByKeyAndType(chatWindowCollection, "FocusChatBar", "BindableEvent")
					communicationsConnections.ChatWindow.TopbarEnabledChanged = FindInCollectionByKeyAndType(chatWindowCollection, "TopbarEnabledChanged", "BindableEvent")
					communicationsConnections.ChatWindow.IsFocused = FindInCollectionByKeyAndType(chatWindowCollection, "IsFocused", "BindableFunction")
					communicationsConnections.ChatWindow.SpecialKeyPressed = FindInCollectionByKeyAndType(chatWindowCollection, "SpecialKeyPressed", "BindableEvent")


					local function DoConnect(index)
						communicationsConnections.ChatWindow[index] = FindInCollectionByKeyAndType(chatWindowCollection, index, "BindableEvent")
						if (communicationsConnections.ChatWindow[index]) then
							local con = communicationsConnections.ChatWindow[index].Event:connect(function(...) moduleApiTable[index]:fire(...) end)
							table.insert(eventConnections, con)
						end
					end

					DoConnect("ChatBarFocusChanged")
					DoConnect("VisibilityStateChanged")
					DoConnect("MessagesChanged")

					local index = "MessagePosted"
					communicationsConnections.ChatWindow[index] = FindInCollectionByKeyAndType(chatWindowCollection, index, "BindableEvent")
					if (communicationsConnections.ChatWindow[index]) then
						local con = communicationsConnections.ChatWindow[index].Event:connect(function(message) game:GetService("Players"):Chat(message) end)
						table.insert(eventConnections, con)
					end

					moduleApiTable:SetVisible(ChatWindowState.Visible)
					moduleApiTable:TopbarEnabledChanged(ChatWindowState.TopbarEnabled)

					local event = FindInCollectionByKeyAndType(chatWindowCollection, "CoreGuiEnabled", "BindableEvent")
					if (event) then
						communicationsConnections.ChatWindow.CoreGuiEnabled = event
						event:Fire(ChatWindowState.CoreGuiEnabled)
					end

				else
					error("Table 'ChatWindow' must be provided!")

				end

				if (type(setCoreCollection) == "table" and type(getCoreCollection) == "table") then
					communicationsConnections.SetCore = {}
					communicationsConnections.GetCore = {}

					local function addSetCore(setCoreName)
						local event = FindInCollectionByKeyAndType(setCoreCollection, setCoreName, "BindableEvent")
						if (event) then
							communicationsConnections.SetCore[setCoreName] = event
							if SetCoreCache[setCoreName] then
								for i, data in pairs(SetCoreCache[setCoreName]) do
									event:Fire(data)
								end
								SetCoreCache[setCoreName] = nil
							end
						end
					end

					addSetCore("ChatMakeSystemMessage")
					addSetCore("ChatWindowPosition")
					addSetCore("ChatWindowSize")
					addSetCore("ChatBarDisabled")

					communicationsConnections.GetCore.ChatWindowPosition = FindInCollectionByKeyAndType(getCoreCollection, "ChatWindowPosition", "BindableFunction")
					communicationsConnections.GetCore.ChatWindowSize = FindInCollectionByKeyAndType(getCoreCollection, "ChatWindowSize", "BindableFunction")
					communicationsConnections.GetCore.ChatBarDisabled = FindInCollectionByKeyAndType(getCoreCollection, "ChatBarDisabled", "BindableFunction")

				elseif (type(setCoreCollection) ~= "nil" or type(getCoreCollection) ~= "nil") then
					error("Both 'SetCore' and 'GetCore' must be tables if provided!")

				end

			end
		end

		StarterGui:RegisterSetCore("CoreGuiChatConnections", RegisterCoreGuiConnections)

end

return moduleApiTable
