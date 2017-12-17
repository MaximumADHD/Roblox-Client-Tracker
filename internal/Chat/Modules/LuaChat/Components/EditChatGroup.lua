local Players = game:GetService("Players")
local CoreGui = game:GetService("CoreGui")

local LuaApp = CoreGui.RobloxGui.Modules.LuaApp
local StringsLocale = require(LuaApp.StringsLocale)

local Modules = script.Parent.Parent
local Components = Modules.Components

local Signal = require(Modules.Signal)
local Create = require(Modules.Create)
local Constants = require(Modules.Constants)
local ConversationActions = require(Modules.Actions.ConversationActions)
local ActionType = require(Modules.ActionType)
local Immutable = require(Modules.Immutable)
local DialogInfo = require(Modules.DialogInfo)

local ConversationModel = require(Modules.Models.Conversation)

local HeaderLoader = require(Components.HeaderLoader)
local FriendSearchBoxComponent = require(Components.FriendSearchBox)
local ResponseIndicator = require(Components.ResponseIndicator)

local Intent = DialogInfo.Intent

local EditChatGroup = {}
EditChatGroup.__index = EditChatGroup

function EditChatGroup.new(appState, maxSize, convoId)
	local self = {
		appState = appState,
		maxSize = maxSize,
		convoId = convoId,
	}
	self.connections = {}
	setmetatable(self, EditChatGroup)

	self.conversation = ConversationModel.empty()
	self.alreadyParticipants = {}

	local oldConversation = self.appState.store:GetState().Conversations[self.convoId]
	self.fromType = oldConversation.conversationType
	for _, userId in pairs(oldConversation.participants) do
		self.alreadyParticipants[userId] = true
	end

	self.searchComponent = FriendSearchBoxComponent.new(
		appState,
		self.conversation.participants,
		self.maxSize,
		function(user)
			local isNotPlayer = user.id ~= tostring(Players.LocalPlayer.UserId)
			local isNotInList = not self.alreadyParticipants[user.id]
			return user.isFriend and isNotPlayer and isNotInList
		end
	)
	local addParticipantConnection = self.searchComponent.addParticipant:Connect(function(id)
		self.searchComponent.search:ReleaseFocus()
		self:ChangeParticipants(Immutable.Set(self.conversation.participants, #self.conversation.participants+1, id))
	end)
	table.insert(self.connections, addParticipantConnection)

	local removeParticipantConnection = self.searchComponent.removeParticipant:Connect(function(id)
		self.searchComponent.search:ReleaseFocus()
		self:ChangeParticipants(Immutable.RemoveValueFromList(self.conversation.participants, id))
	end)
	table.insert(self.connections, removeParticipantConnection)

	-- Header:
	self.header = HeaderLoader.GetHeader(appState, Intent.EditChatGroup)
	self.header:SetDefaultSubtitle()
	self.header:SetTitle(appState.localization:Format(StringsLocale.Keys.ADD_FRIENDS))
	self.header:SetBackButtonEnabled(true)

	self.responseIndicator = ResponseIndicator.new(appState)
	self.responseIndicator:SetVisible(false)

	self.rbx = Create.new"Frame" {
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundColor3 = Constants.Color.GRAY5,
		BorderSizePixel = 0,

		self.header.rbx,
		Create.new"Frame" {
			Name = "Content",
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundColor3 = Constants.Color.GRAY5,
			BorderSizePixel = 0,

			self.searchComponent.rbx,
		},
		self.responseIndicator.rbx,
	}

	self.saveGroup = self.header:CreateHeaderButton("SaveGroup", StringsLocale.Keys.SAVE_ADDED_FRIENDS)
	self.saveGroup:SetEnabled(false)

	self.header:AddButton(self.saveGroup)
	local saveGroupConnection = self.saveGroup.Pressed:Connect(function()
		self.searchComponent.search:ReleaseFocus()
		if #self.conversation.participants == 0 then
			return
		end
		if self.fromType == ConversationModel.Type.MULTI_USER_CONVERSATION then
			self.responseIndicator:SetVisible(true)

			self.appState.store:Dispatch(
				ConversationActions.AddUsersToConversation(self.convoId, self.conversation.participants, function()
					self.responseIndicator:SetVisible(false)
					self.appState.store:Dispatch({
						type = ActionType.SetRoute,
						popToIntent = Intent.ConversationHub,
						intent = Intent.Conversation,
						parameters = {
							conversationId = self.convoId,
						},
					})
				end)
			)
		elseif self.fromType == ConversationModel.Type.ONE_TO_ONE_CONVERSATION then
			self.responseIndicator:SetVisible(true)

			local originalConvo = self.appState.store:GetState().Conversations[self.convoId]
			local allParticipants = Immutable.Append(self.conversation.participants)
			for _, userId in ipairs(originalConvo.participants) do
				if userId ~= tostring(Players.LocalPlayer.UserId) then
					table.insert(allParticipants, userId)
				end
			end
			local newConvo = Immutable.JoinDictionaries(originalConvo, {
				participants = allParticipants,
				clientId = self.conversation.clientId,
				title = "",
			})

			self.appState.store:Dispatch(
				ConversationActions.CreateConversation(newConvo,function(convoId)
					self.responseIndicator:SetVisible(false)
					self.appState.store:Dispatch({
						type = ActionType.SetRoute,
						popToIntent = Intent.ConversationHub,
						intent = Intent.Conversation,
						parameters = {
							conversationId = convoId,
						},
					})
				end)
			)
		end
	end)
	table.insert(self.connections, saveGroupConnection)

	self.rbx.Content.Position = UDim2.new(0, 0, 0, self.header.rbx.Size.Y.Offset)
	self.rbx.Content.Size = UDim2.new(1, 0, 1, -self.header.rbx.Size.Y.Offset)

	self.BackButtonPressed = Signal.new()
	self.header.BackButtonPressed:Connect(function()
		self.searchComponent.search:ReleaseFocus()
		self.BackButtonPressed:Fire()
	end)

	if not self.appState.store:GetState().FetchedAllFriends then
		self.appState.store:Dispatch(ConversationActions.GetAllFriends())
	end

	self.tooManyFriendsAlertId = nil

	return self
end

function EditChatGroup:ChangeParticipants(participants)
	self.conversation = Immutable.Set(self.conversation, "participants", participants)
	self.searchComponent:Update(participants)
	self.saveGroup:SetEnabled(#participants > 0)
end

function EditChatGroup:Update(current, previous)
	self.header:SetConnectionState(current.ConnectionState)
	self.searchComponent:Update(self.conversation.participants)

	self.saveGroup:SetEnabled(#self.conversation.participants ~= #self.alreadyParticipants)
end

function EditChatGroup:Destruct()
	for _, connection in ipairs(self.connections) do
		connection:Disconnect()
	end
	self.connections = {}

	self.header:Destroy()
	self.responseIndicator:Destruct()
	self.searchComponent:Destruct()
	self.rbx:Destroy()
end

return EditChatGroup