local LuaChat = script.Parent.Parent
local ActionType = require(LuaChat.ActionType)

local typingCount = 0

return function(conversationId, userId)
	return function(store)
		spawn(function()
			typingCount = typingCount + 1
			local thisTypingCount = typingCount

			store:Dispatch({
				type = ActionType.SetUserTyping,
				conversationId = conversationId,
				userId = userId,
				value = true
			})

			wait(5)

			if typingCount == thisTypingCount then
				store:Dispatch({
					type = ActionType.SetUserTyping,
					conversationId = conversationId,
					userId = userId,
					value = false
				})
			end
		end)
	end
end