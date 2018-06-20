local Action = require(script.Parent.Parent.Action)

return Action("ServerLogAppendFilteredMessage", function(newMessage)
	return {
		newMessage = newMessage
	}
end)