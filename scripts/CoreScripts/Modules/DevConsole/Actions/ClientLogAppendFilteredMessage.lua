local Action = require(script.Parent.Parent.Action)

return Action("ClientLogAppendFilteredMessage", function(newMessage)
	return {
		newMessage = newMessage
	}
end)