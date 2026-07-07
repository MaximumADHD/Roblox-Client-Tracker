local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local ExpChatShared = require(CorePackages.Workspace.Packages.ExpChatShared)
local React = require(CorePackages.Packages.React)

local SharedFlags = require(CorePackages.Workspace.Packages.SharedFlags)
local FFlagExpChatUseMessagesStore = SharedFlags.FFlagExpChatUseMessagesStore

local useExpChatMessagesReducerSlice = ExpChat.Hooks.useExpChatMessagesReducerSlice

local function useOrderedMessages()
	local messages
	local messagesIdsInOrder

	if FFlagExpChatUseMessagesStore then
		local messagesStore = ExpChatShared.context.messagesStore
		if not messagesStore then
			return {}
		end
		messages = messagesStore.getByMessageId(false) or {}
		messagesIdsInOrder = messagesStore.getWindowMessagesInOrder(false) or {}
	else
		local messagesReducerSlice = useExpChatMessagesReducerSlice()
		if not messagesReducerSlice then
			return {}
		end
		messages = messagesReducerSlice.byMessageId
		messagesIdsInOrder = messagesReducerSlice.windowMessagesInOrder
	end

	return React.useMemo(function()
		return Cryo.List.map(messagesIdsInOrder, function(id)
			return messages[id]
		end)
	end, { messages, messagesIdsInOrder })
end

return useOrderedMessages
