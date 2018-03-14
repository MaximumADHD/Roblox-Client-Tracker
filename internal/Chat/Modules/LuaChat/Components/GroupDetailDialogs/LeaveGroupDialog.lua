local Players = game:GetService("Players")

local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local DialogComponents = require(Components.DialogComponents)
local ConversationActions = require(Modules.Actions.ConversationActions)

local LeaveGroupDialog = {}

function LeaveGroupDialog.new(appState, titleKey, messageKey, cancelTitleKey, confirmTitleKey, conversation)
	local self = {}
	setmetatable(self, {__index = LeaveGroupDialog})

	self.dialog = DialogComponents.ConfirmationDialog.new(appState, titleKey, messageKey, cancelTitleKey, confirmTitleKey)

	self.conversation = conversation

	self.dialog.saved:Connect(function()
		local userId = tostring(Players.LocalPlayer.UserId)
		local convoId = self.conversation.id
		local action = ConversationActions.RemoveUserFromConversation(userId, convoId)
		appState.store:Dispatch(action)
	end)

	return self
end

function LeaveGroupDialog:Destruct()
	self.dialog:Destruct()
end

return LeaveGroupDialog