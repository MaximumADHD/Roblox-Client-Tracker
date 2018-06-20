local Action = require(script.Parent.Parent.Action)

return Action("ClientLogAppendMessage", function(newMessage)
	return {
		newMessage = newMessage
	}
end)