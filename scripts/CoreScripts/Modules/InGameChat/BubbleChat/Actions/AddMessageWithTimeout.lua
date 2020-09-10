local Types = require(script.Parent.Parent.Types)
local maybeAssert = require(script.Parent.Parent.Helpers.maybeAssert)
local AddMessage = require(script.Parent.AddMessage)
local RemoveMessage = require(script.Parent.RemoveMessage)

local function addMessageWithTimeout(message)
	maybeAssert(Types.IMessageData(message))

	return function(store)
		store:dispatch(AddMessage(message))

		local settings = store:getState().chatSettings
		local userMessages = store:getState().userMessages[message.userId]
		local messages = store:getState().messages
		for i = 1, #userMessages - settings.MaxBubbles do
			store:dispatch(RemoveMessage(messages[userMessages[i]]))
		end

		wait(settings.BubbleDuration)

		store:dispatch(RemoveMessage(message))
	end
end

return addMessageWithTimeout
