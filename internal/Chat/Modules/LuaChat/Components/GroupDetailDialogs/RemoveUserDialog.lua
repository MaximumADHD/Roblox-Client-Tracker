local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local DialogComponents = require(Components.DialogComponents)
local ConversationActions = require(Modules.Actions.ConversationActions)
local ResponseIndicator = require(Components.ResponseIndicator)

local RemoveUserDialog = {}

function RemoveUserDialog.new(appState, titleKey, messageKey, cancelTitleKey, confirmTitleKey, conversation)
	local self = {}
	setmetatable(self, {__index = RemoveUserDialog})

	self.appState = appState
	self.dialog = DialogComponents.ConfirmationDialog.new(appState, titleKey, messageKey, cancelTitleKey, confirmTitleKey)

	-- Setup ResponseIndicator
	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)
	self.responseIndicator.rbx.Parent = self.dialog.rbx

	self.conversation = conversation

	self.dialog.saved:Connect(function(user)
		local userId = user.id
		local convoId = self.conversation.id

		self.responseIndicator.rbx.Parent = self.rbx
		self.responseIndicator:SetVisible(true)

		local action = ConversationActions.RemoveUserFromConversation(userId, convoId, function()
			self.responseIndicator:SetVisible(false)
		end)
		self.appState.store:Dispatch(action)
	end)

	return self
end

function RemoveUserDialog:Destruct()
	self.responseIndicator:Destruct()
	self.dialog:Destruct()
end

return RemoveUserDialog