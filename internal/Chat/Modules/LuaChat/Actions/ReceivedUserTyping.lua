local LuaChat = script.Parent.Parent
local SetUserTyping = require(LuaChat.Actions.SetUserTyping)

local typingCount = 0

return function(conversationId, userId)
	return function(store)
		spawn(function()
			typingCount = typingCount + 1
			local thisTypingCount = typingCount

			store:Dispatch(SetUserTyping(conversationId, userId, true))

			wait(5)

			if typingCount == thisTypingCount then
				store:Dispatch(SetUserTyping(conversationId, userId, false))
			end
		end)
	end
end