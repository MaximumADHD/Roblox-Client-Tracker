local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local DialogComponents = require(Components.DialogComponents)
local ConversationActions = require(Modules.Actions.ConversationActions)
local ResponseIndicator = require(Components.ResponseIndicator)

local EditChatGroupNameDialog = {}

function EditChatGroupNameDialog.new(appState, titleLocalizationKey, maxChar, conversation)
	local self = {}
	setmetatable(self, {__index = EditChatGroupNameDialog})

	self.dialog = DialogComponents.TextInputDialog.new(appState, titleLocalizationKey, maxChar)

	-- Setup ResponseIndicator
	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)
	self.responseIndicator.rbx.Parent = self.dialog.rbx

	self.conversation = conversation

	self:UpdateGroupName()

	-- Define saved action
	self.dialog.saved:Connect(function(newName)
		self.responseIndicator:SetVisible(true)
		local callback = function()
			self.responseIndicator:SetVisible(false)
		end
		local action = ConversationActions.RenameGroupConversation(self.conversation.id, newName, callback)
		appState.store:Dispatch(action)
	end)

	return self
end

function EditChatGroupNameDialog:UpdateGroupName()
	local groupName = ""

	if not self.conversation.isDefaultTitle then
		groupName = self.conversation.title
	end

	self.dialog:Update(groupName)
end

function EditChatGroupNameDialog:Destruct()
	self.responseIndicator:Destruct()
	self.dialog:Destruct()
end

return EditChatGroupNameDialog