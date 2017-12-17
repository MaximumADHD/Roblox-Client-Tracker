local GuiService = game:GetService("GuiService")

local NotificationBroadcaster = {}
NotificationBroadcaster.__index = NotificationBroadcaster

function NotificationBroadcaster.new(appState)
	local self = {
		appState = appState,
	}
	setmetatable(self, NotificationBroadcaster)

	self.unreadConversationCount = 0

	appState.store.Changed:Connect(function(state, oldState)
		self:Update(state, oldState)
	end)

	return self
end

function NotificationBroadcaster:Update(state, oldState)
	if state == oldState then
		return
	end

	if state.UnreadConversationCount ~= oldState.UnreadConversationCount then

		local string = state.UnreadConversationCount > 0 and tostring(state.UnreadConversationCount) or ""
		GuiService:BroadcastNotification(string, GuiService:GetNotificationTypeList().UNREAD_COUNT)
	end
end

return NotificationBroadcaster