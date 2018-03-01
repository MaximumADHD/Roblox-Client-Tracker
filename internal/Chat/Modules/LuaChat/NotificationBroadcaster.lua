local GuiService = game:GetService("GuiService")
local NotificationService = game:GetService("NotificationService")

local NotificationBroadcaster = {}
NotificationBroadcaster.__index = NotificationBroadcaster

function NotificationBroadcaster.new(appState)
	local self = {
		appState = appState,
	}
	setmetatable(self, NotificationBroadcaster)

	self.unreadConversationCount = 0
	self.hasLoadedConversations = false

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

	if (not self.hasLoadedConversations) and state.Conversations ~= oldState.Conversations then
		local hasLoadedConversations = next(state.Conversations) ~= nil
		if hasLoadedConversations then
			NotificationService:ActionEnabled(Enum.AppShellActionType.TapConversationEntry)
			self.hasLoadedConversations = true
		end
	end
end

return NotificationBroadcaster