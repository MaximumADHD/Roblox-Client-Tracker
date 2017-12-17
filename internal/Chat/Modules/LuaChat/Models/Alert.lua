local LuaChat = script.Parent.Parent
local MockId = require(LuaChat.MockId)

local Alert = {}

Alert.AlertType = {
	DIALOG = "DIALOG",
}

function Alert.new(titleKey, messageKey, messageArguments, alertType)
	local self = {}

	self.titleKey = titleKey
	self.messageKey = messageKey
	self.messageArguments = messageArguments
	self.createdAt = tick()
	self.id = MockId()
	self.type = alertType

	return self
end

return Alert

