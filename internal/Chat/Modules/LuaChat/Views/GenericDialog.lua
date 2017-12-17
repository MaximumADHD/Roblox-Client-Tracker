local Modules = script.Parent.Parent
local Components = Modules.Components

local BaseScreen = require(Modules.Views.Phone.BaseScreen)

local GenericDialogType = require(Components.GroupDetailDialogs.GenericDialogType)
local EditChatGroupNameDialog = require(Components.GroupDetailDialogs.EditChatGroupNameDialog)
local LeaveGroupDialog = require(Components.GroupDetailDialogs.LeaveGroupDialog)
local ParticipantDialog = require(Components.GroupDetailDialogs.ParticipantDialog)
local RemoveUserDialog = require(Components.GroupDetailDialogs.RemoveUserDialog)

local GenericDialog = BaseScreen:Template()
GenericDialog.__index = GenericDialog

function GenericDialog.new(appState, route)
	local self = {
		appState = appState,
		route = route,
		connections = {},
	}
	setmetatable(self, GenericDialog)

	self.dialogComponent = self.route.parameters.dialog
	self.parameters = self.route.parameters.dialogParameters

	if self.route.parameters.dialog == GenericDialogType.EditChatGroupNameDialog then
		self.currentDialog = EditChatGroupNameDialog.new(
			self.appState,
			self.parameters.titleLocalizationKey,
			self.parameters.maxChar,
			self.parameters.conversation
		)
		self.rbx = self.currentDialog.dialog.rbx
		self.textBoxToFocus = self.currentDialog.dialog.textInputComponent.textBoxComponent
	elseif self.route.parameters.dialog == GenericDialogType.LeaveGroupDialog then
		self.currentDialog = LeaveGroupDialog.new(
				self.appState,
				self.parameters.titleKey,
				self.parameters.messageKey,
				self.parameters.cancelTitleKey,
				self.parameters.confirmationTitleKey,
				self.parameters.conversation
			)
		self.rbx = self.currentDialog.dialog.rbx
	elseif self.route.parameters.dialog == GenericDialogType.ParticipantDialog then
		self.currentDialog = ParticipantDialog.new(
				self.appState,
				self.parameters.titleKey,
				self.parameters.options,
				self.parameters.conversationId,
				self.parameters.conversation,
				self.parameters.userId
			)
		self.rbx = self.currentDialog.dialog.rbx
	elseif self.route.parameters.dialog == GenericDialogType.RemoveUserDialog then
		self.currentDialog = RemoveUserDialog.new(
				self.appState,
				self.parameters.titleKey,
				self.parameters.messageKey,
				self.parameters.cancelTitleKey,
				self.parameters.confirmationTitleKey,
				self.parameters.conversation
			)
		self.currentDialog.dialog:Update(self.parameters.messageKey, self.parameters.user, self.parameters.messageArguments)
		self.rbx = self.currentDialog.dialog.rbx
	else
		print("Attempting to open unknown type of Dialog: ", self.route.parameters.dialog)
	end

	return self
end

function GenericDialog:Start()
	self.rbx.Visible = true
	if self.textBoxToFocus then
		self.textBoxToFocus:CaptureFocus()
	end
end

function GenericDialog:Stop()
	self.rbx.Visible = false
	self.rbx.Parent = nil
	self.currentDialog:Destruct()
	self.textBoxToFocus = nil
end

function GenericDialog:Resume()

end

function GenericDialog:Pause()

end

function GenericDialog:Update(current, previous)
	self.dialogComponent:Update(current, previous)
end

return GenericDialog