local Players = game:GetService("Players")

local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local DialogComponents = require(Components.DialogComponents)
local ConversationActions = require(Modules.Actions.ConversationActions)
local ResponseIndicator = require(Components.ResponseIndicator)

local LeaveGroupDialog = {}

function LeaveGroupDialog.new(appState, titleKey, messageKey, cancelTitleKey, confirmTitleKey, conversation)
	local self = {}
	setmetatable(self, {__index = LeaveGroupDialog})

	self.dialog = DialogComponents.ConfirmationDialog.new(appState, titleKey, messageKey, cancelTitleKey, confirmTitleKey)

	-- Setup ResponseIndicator
	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)
	self.responseIndicator.rbx.Parent = self.dialog.rbx

	self.conversation = conversation

	self.dialog.saved:Connect(function()
		local userId = tostring(Players.LocalPlayer.UserId)
		local convoId = self.conversation.id

		self.responseIndicator:SetVisible(true)

		local action = ConversationActions.RemoveUserFromConversation(userId, convoId, function()
			self.responseIndicator:SetVisible(false)
		end)
		appState.store:Dispatch(action)
	end)

	return self
end

function LeaveGroupDialog:Destruct()
	self.responseIndicator:Destruct()
	self.dialog:Destruct()
end

return LeaveGroupDialog