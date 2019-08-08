local ActionCreator = require(script.Parent.Parent.ActionCreator)

return ActionCreator("SetHasPermissionToVoiceChat", function(hasPermissionToVoiceChat)
	return {
		hasPermissionToVoiceChat = hasPermissionToVoiceChat,
	}
end)