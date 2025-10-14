local CorePackages = game:GetService("CorePackages")

local Cryo = require(CorePackages.Packages.Cryo)
local ExpChat = require(CorePackages.Workspace.Packages.ExpChat)
local React = require(CorePackages.Packages.React)

local useExpChatMessagesReducerSlice = ExpChat.Hooks.useExpChatMessagesReducerSlice

local useOrderedMessages = function()
	local messagesReducerSlice = useExpChatMessagesReducerSlice()
	-- Cautious check to ensure messagesReducerSlice is valid before using to avoid runtime errors
	if not messagesReducerSlice then
		return {}
	end

	local messages = messagesReducerSlice.byMessageId
	local messagesIdsInOrder = messagesReducerSlice.windowMessagesInOrder

	return React.useMemo(function()
		return Cryo.List.map(messagesIdsInOrder, function(id)
			return messages[id]
		end)
	end, { messages, messagesIdsInOrder })
end

return useOrderedMessages
