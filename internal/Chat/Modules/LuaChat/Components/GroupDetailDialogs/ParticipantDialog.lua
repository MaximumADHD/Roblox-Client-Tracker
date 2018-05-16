local Players = game:GetService("Players")
local GuiService = game:GetService("GuiService")
local CoreGui = game:GetService("CoreGui")

local Modules = script.Parent.Parent.Parent
local Components = Modules.Components

local WebApi = require(Modules.WebApi)
local DialogInfo = require(Modules.DialogInfo)
local ConversationModel = require(Modules.Models.Conversation)

local GenericDialogType = require(Components.GroupDetailDialogs.GenericDialogType)
local DialogComponents = require(Components.DialogComponents)
local Intent = DialogInfo.Intent

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp


local SetRoute = require(Modules.Actions.SetRoute)

local PARTICIPANT_VIEW = 1
local PARTICIPANT_REPORT = 2
local PARTICIPANT_REMOVE = 3

local ParticipantDialog = {}

function ParticipantDialog.new(appState, titleKey, options, conversationId, conversation, userId)
	local self = {}
	setmetatable(self, {__index = ParticipantDialog})

	self.appState = appState
	self.dialog = DialogComponents.OptionDialog.new(appState, titleKey, options, userId)

	self.conversationId = conversationId
	self.conversation = conversation

	if conversation ~= nil then
		if conversation.initiator == tostring(Players.LocalPlayer.UserId)
			and conversation.conversationType == ConversationModel.Type.MULTI_USER_CONVERSATION then
			self.dialog.optionGuis[PARTICIPANT_REMOVE].Visible = true
		else
			self.dialog.optionGuis[PARTICIPANT_REMOVE].Visible = false
		end
		self.dialog:Resize()
	end

	self.dialog.selected:Connect(function(optionId, userId)
		local user = self.appState.store:GetState().Users[userId]
		if user == nil then
			return
		end

		if optionId == PARTICIPANT_VIEW then
			if user and user.id and (type(user.id) == 'string' or type(user.id) == 'number') then
				GuiService:BroadcastNotification(WebApi.MakeUserProfileUrl(user.id),
					GuiService:GetNotificationTypeList().VIEW_PROFILE)
			else
				print("Bad input to RequestNativeView, show error prompt here")
			end
		elseif optionId == PARTICIPANT_REPORT then
			if user and user.id and (type(user.id) == 'string' or type(user.id) == 'number') then
				GuiService:BroadcastNotification(WebApi.MakeReportUserUrl(user.id, conversationId),
					GuiService:GetNotificationTypeList().REPORT_ABUSE)
			else
				print("Bad input to RequestNativeView, show error prompt here")
			end
		elseif optionId == PARTICIPANT_REMOVE then
			local messageArguments = {
				USERNAME = user.name,
			}
			self.appState.store:Dispatch(SetRoute(Intent.GenericDialog, {
					dialog = GenericDialogType.RemoveUserDialog,
					dialogParameters = {
						titleKey = "Feature.Chat.Action.RemoveUser",
						messageKey = "Feature.Chat.Message.RemoveUser",
						cancelTitleKey = "Feature.Chat.Action.Cancel",
						confirmationTitleKey = "Feature.Chat.Action.Remove",
						conversation = self.conversation,
						user = user,
						messageArguments = messageArguments
					}
				}
			))

		end
	end)

	return self
end

function ParticipantDialog:Destruct()
	self.dialog:Destruct()
end

return ParticipantDialog