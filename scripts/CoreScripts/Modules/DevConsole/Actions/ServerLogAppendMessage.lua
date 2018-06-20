local Action = require(script.Parent.Parent.Action)

return Action("ServerLogAppendMessage", function(newMessage)
	return {
		newMessage = newMessage
	}
end)