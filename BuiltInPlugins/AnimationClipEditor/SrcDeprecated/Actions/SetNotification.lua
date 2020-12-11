--[[
	Sets the value of a notification in the Notifications
	reducer at the key 'notification' to the value 'value'.
]]

local Action = require(script.Parent.Action)

return Action(script.Name, function(notification, value)
	return {
		notification = notification,
		value = value,
	}
end)