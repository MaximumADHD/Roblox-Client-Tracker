local CoreGui = game:GetService("CoreGui")
local HttpService = game:GetService("HttpService")
local NotificationService = game:GetService("NotificationService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local Modules = CoreGui.RobloxGui.Modules
local LuaChat = Modules.LuaChat
local LuaApp = Modules.LuaApp

local Constants = require(LuaChat.Constants)
local WebApi = require(LuaChat.WebApi)
local ConversationActions = require(LuaChat.Actions.ConversationActions)
local FetchChatEnabled = require(LuaChat.Actions.FetchChatEnabled)
local ReceivedUserTyping = require(LuaChat.Actions.ReceivedUserTyping)
local DialogInfo = require(LuaChat.DialogInfo)
local Config = require(LuaChat.Config)
local ToastModel = require(LuaChat.Models.ToastModel)

local ChangedParticipants = require(LuaChat.Actions.ChangedParticipants)
local PopRoute = require(LuaChat.Actions.PopRoute)
local RemovedConversation = require(LuaChat.Actions.RemovedConversation)
local RenamedGroupConversation = require(LuaChat.Actions.RenamedGroupConversation)
local SetChatEnabled = require(LuaChat.Actions.SetChatEnabled)
local SetConnectionState = require(LuaChat.Actions.SetConnectionState)
local SetRoute = require(LuaChat.Actions.SetRoute)
local ShowToast = require(LuaChat.Actions.ShowToast)
local SetPreloading = require(LuaApp.Actions.SetPreloading)

local StringsLocale = require(LuaApp.StringsLocale)

local Intent = DialogInfo.Intent

local function jsonDecode(data)
	return HttpService:JSONDecode(data)
end

local function getNewestWithNilPreviousMessageId(messages)
	for id, message, _ in messages:CreateReverseIterator() do
		if message.previousMessageId == nil then
			return id
		end
	end
	return messages.keys[1]
end

local RobloxEventReceiver = {}
function RobloxEventReceiver:init(appState)
	local function onChatNotifications(eventData)
		local detail = jsonDecode(eventData.detail)
		local detailType = eventData.detailType
		if detailType == "RemovedFromConversation" then
			local conversationId = tostring(detail.ConversationId)
			appState.store:Dispatch(RemovedConversation(conversationId))

			local chatReducer = appState.store:GetState().ChatAppReducer
			if chatReducer and chatReducer.Location then
				local currentLocation = chatReducer.Location.current
				if currentLocation and currentLocation.parameters then
					if currentLocation.parameters.conversationId == conversationId then
						local messageKey = StringsLocale.Keys.REMOVED_FROM_CONVERSATION
						local toastModel = ToastModel.new(Constants.ToastIDs.REMOVED_FROM_CONVERSATION, messageKey, {})
						appState.store:Dispatch(ShowToast(toastModel))
					end
				end
			end
		elseif detailType == "ConversationRemoved" then
			local conversationId = tostring(detail.ConversationId)
			appState.store:Dispatch(RemovedConversation(conversationId))
		elseif detailType == "ConversationTitleChanged" then
			local conversationId = tostring(detail.ConversationId)
			local userId = tostring(detail.ActorTargetId)
			spawn(function()
				local status, result = WebApi.GetConversations({conversationId})

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->ConversationTitleChanged")
					return
				end

				local conversations = result.conversations

				if #conversations > 0 then
					local conversation = conversations[1]
					local title = conversation.title
					local isDefaultTitle = conversation.isDefaultTitle
					appState.store:Dispatch(
						RenamedGroupConversation(conversationId, title, isDefaultTitle, conversation.lastUpdated)
					)
				end
			end)
		elseif detailType == "ParticipantAdded" then
			local convoId = tostring(detail.ConversationId)
			spawn(function()
				local status, result = WebApi.GetConversations({convoId})

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->ParticipantAdded")
					return
				end

				local conversations = result.conversations

				if #conversations > 0 then
					local conversation = conversations[1]
					local participants = conversation.participants
					local title = conversation.title
					appState.store:Dispatch(ChangedParticipants(convoId, participants, title, conversation.lastUpdated))
				end
			end)
		elseif detailType == "ParticipantLeft" then
			local convoId = tostring(detail.ConversationId)
			spawn(function()
				local status, result = WebApi.GetConversations({convoId})

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->ParticipantLeft", status)
					return
				end

				local conversations = result.conversations

				if #conversations > 0 then
					local conversation = conversations[1]
					local participants = conversation.participants
					local title = conversation.title
					appState.store:Dispatch(ChangedParticipants(convoId, participants, title, conversation.lastUpdated))
				end
			end)
		elseif detailType == "AddedToConversation" then
			local conversationId = tostring(detail.ConversationId)
			spawn(function()
				local status = appState.store:Dispatch(ConversationActions.GetConversations(conversationId))

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->AddedToConversation")
					return
				end
			end)
		elseif detailType == "NewConversation" then
			local conversationId = tostring(detail.ConversationId)
			spawn(function()
				local status = appState.store:Dispatch(ConversationActions.GetConversations(conversationId))

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->NewConversation")
					return
				end
			end)
		elseif detailType == "NewMessage" or detailType == "NewMessageBySelf" then
			local conversationId = tostring(detail.ConversationId)
			appState.store:Dispatch(ConversationActions.GetNewMessages(conversationId, detailType == "NewMessageBySelf"))
		elseif detailType == "ParticipantTyping" then
			local conversationId = tostring(detail.ConversationId)
			local userId = tostring(detail.UserId)

			appState.store:Dispatch(ReceivedUserTyping(conversationId, userId))
		end
	end

	local function onPresenceNotifications(eventData)
		local detail = jsonDecode(eventData.detail)
		local userId = tostring(detail.UserId)
		appState.store:Dispatch(ConversationActions.GetUserPresences({userId}))
	end

	local function onAppShellNotifications(eventData)
		local detailType = eventData.detailType
		if detailType == "StartConversationWithUserId" then
			local userId = eventData.detail
			spawn(function()
				local status, result = WebApi.StartOneToOneConversation(userId)

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->AppShellNotifications, Status: "..tostring(status) )
					return
				end

				if appState.store:GetState().ChatAppReducer.Conversations[result.id] == nil then
					--Call GetConversations to make sure we hit the user and presence
					--endpoints if need be. Being a bit lazy I suppose
					local status = appState.store:Dispatch(
						ConversationActions.GetConversations({result.id})
					)

					if status ~= WebApi.Status.OK then
						warn("WebApi failure in RobloxEventReceiver->StartConversationWithUserId, Status: "..tostring(status))
						return
					end
				end

				appState.store:Dispatch(SetRoute(Intent.Conversation, {conversationId = result.id}, Intent.ConversationHub))
			end)
		elseif detailType == "StartConversationWithId" then
			local convoId = eventData.detail
			if appState.store:GetState().ChatAppReducer.Conversations[convoId] == nil then
				local status = appState.store:Dispatch(
					ConversationActions.GetConversations({convoId})
				)

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->StartConversationWithId, Status: "..tostring(status))
					return
				end
			end

			appState.store:Dispatch(SetRoute(Intent.Conversation, {conversationId = convoId}, Intent.ConversationHub))
		elseif detailType == "Preloading" then
			local isPreloading = eventData.detail == "true"
			appState.store:Dispatch(SetPreloading(isPreloading))
		end
	end

	local function onPrivacyNotifications(eventData)
		if eventData.detailType == "ChatDisabled" then
			appState.store:Dispatch(SetChatEnabled(false))
		elseif eventData.detailType == "ChatEnabled" then
			appState.store:Dispatch(SetChatEnabled(true))
		end
	end

	local function onFriendshipNotifications(eventData)
		local detail = jsonDecode(eventData.detail)
		if eventData.detailType == "FriendshipCreated" then
			local userId = tostring(Players.LocalPlayer.UserId) == tostring(detail.EventArgs.UserId1)
				and detail.EventArgs.UserId2 or detail.EventArgs.UserId1
			appState.store:Dispatch(ConversationActions.FriendshipCreated(tostring(userId)))
		end
	end

	local function onRobloxEventReceived(eventData)
		if eventData.namespace == "ChatNotifications" then
			onChatNotifications(eventData)
		elseif eventData.namespace == "PresenceNotifications" then
			onPresenceNotifications(eventData)
		elseif eventData.namespace == "ChatPrivacySettingNotifications" then
			onPrivacyNotifications(eventData)
		elseif eventData.namespace == "AppShellNotifications" then
			onAppShellNotifications(eventData)
		elseif eventData.namespace == "FriendshipNotifications" then
			onFriendshipNotifications(eventData)
		end
	end

	local lastSeqNum = nil
	local function onRobloxConnectionChanged(connectionHubName, connectionState, seqNum)
		if connectionHubName == "signalR" then
			appState.store:Dispatch(SetConnectionState(connectionState))
			if connectionState == Enum.ConnectionState.Connected then
				if seqNum ~= lastSeqNum then
					appState.store:Dispatch(FetchChatEnabled(function(chatEnabled)
						if chatEnabled then
							appState.store:Dispatch(ConversationActions.RefreshConversations())
							spawn(function()
								appState.store:Dispatch(ConversationActions.GetAllFriendsAsync())
							end)
							appState.store:Dispatch(ConversationActions.GetAllUserPresences())
						end
					end))
					lastSeqNum = seqNum
				end
				local conversations = appState.store:GetState().ChatAppReducer.Conversations
				for conversationId, conversation in pairs(conversations) do
					if conversation.fetchingOlderMessages then
						local messages = conversation.messages
						local exclusiveMessageStartId = getNewestWithNilPreviousMessageId(messages)
						appState.store:Dispatch(ConversationActions.GetOlderMessages(conversationId, exclusiveMessageStartId))
					end
				end
			end

		end
	end

	local function onBackButtonPressed()
		if #appState.store:GetState().ChatAppReducer.Location.history > 1 then
			appState.store:Dispatch(PopRoute())
		else
			GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().BACK_BUTTON_NOT_CONSUMED)
		end
	end

	--Protect this call because Tests run in a downgraded security context
	pcall(function()
		NotificationService.RobloxEventReceived:connect(onRobloxEventReceived)
		NotificationService.RobloxConnectionChanged:connect(onRobloxConnectionChanged)
		GuiService.ShowLeaveConfirmation:Connect(onBackButtonPressed)
	end)

	if Config.Debug then
		UserInputService.InputEnded:Connect(function(input, gameProcessed)
			if input.UserInputType == Enum.UserInputType.Keyboard then
				if input.KeyCode == Enum.KeyCode.Left then
					onBackButtonPressed()
				end
			end
		end)
	end
end

return RobloxEventReceiver