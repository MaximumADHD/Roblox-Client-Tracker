local Modules = script.Parent

local WebApi = require(Modules.WebApi)
local ActionType = require(Modules.ActionType)
local ConversationActions = require(Modules.Actions.ConversationActions)
local FetchChatEnabled = require(Modules.Actions.FetchChatEnabled)
local ReceivedUserTyping = require(Modules.Actions.ReceivedUserTyping)
local DialogInfo = require(Modules.DialogInfo)
local Config = require(Modules.Config)

local Intent = DialogInfo.Intent

local HttpService = game:GetService("HttpService")
local NotificationService = game:GetService("NotificationService")
local GuiService = game:GetService("GuiService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

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
			appState.store:Dispatch({
				type = ActionType.RemovedConversation,
				conversationId = conversationId,
			})
		elseif detailType == "ConversationRemoved" then
			local conversationId = tostring(detail.ConversationId)
			appState.store:Dispatch({
				type = ActionType.RemovedConversation,
				conversationId = conversationId,
			})
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
					appState.store:Dispatch({
						type = ActionType.RenamedGroupConversation,
						conversationId = conversationId,
						userId = userId,
						title = title,
						isDefaultTitle = isDefaultTitle,
						lastUpdated = conversation.lastUpdated,
					})
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
					appState.store:Dispatch({
						type = ActionType.ChangedParticipants,
						conversationId = convoId,
						participants = participants,
						lastUpdated = conversation.lastUpdated,
						title = conversation.title,
					})
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
					appState.store:Dispatch({
						type = ActionType.ChangedParticipants,
						conversationId = convoId,
						participants = participants,
						lastUpdated = conversation.lastUpdated,
						title = conversation.title,
					})
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

				if appState.store:GetState().Conversations[result.id] == nil then
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

				appState.store:Dispatch({
					type = ActionType.SetRoute,
					intent = Intent.Conversation,
					popToIntent = Intent.ConversationHub,
					parameters = {
						conversationId = result.id,
					},
				})
			end)
		elseif detailType == "StartConversationWithId" then
			local convoId = eventData.detail
			if appState.store:GetState().Conversations[convoId] == nil then
				local status = appState.store:Dispatch(
					ConversationActions.GetConversations({convoId})
				)

				if status ~= WebApi.Status.OK then
					warn("WebApi failure in RobloxEventReceiver->StartConversationWithId, Status: "..tostring(status))
					return
				end
			end

			appState.store:Dispatch({
				type = ActionType.SetRoute,
				intent = Intent.Conversation,
				popToIntent = Intent.ConversationHub,
				parameters = {
					conversationId = convoId,
				},
			})
		end
	end

	local function onPrivacyNotifications(eventData)
		if eventData.detailType == "ChatDisabled" then
			appState.store:Dispatch({
				type = ActionType.SetChatEnabled,
				value = false
			})
		elseif eventData.detailType == "ChatEnabled" then
			appState.store:Dispatch({
				type = ActionType.SetChatEnabled,
				value = true
			})
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
			appState.store:Dispatch({
				type = ActionType.SetConnectionState,
				connectionState = connectionState,
			})
			if connectionState == Enum.ConnectionState.Connected then
				if seqNum ~= lastSeqNum then
					appState.store:Dispatch(FetchChatEnabled(function(chatEnabled)
						if chatEnabled then
							appState.store:Dispatch(ConversationActions.RefreshConversations())
							appState.store:Dispatch(ConversationActions.GetAllFriends())
							appState.store:Dispatch(ConversationActions.GetAllUserPresences())
						end
					end))
					lastSeqNum = seqNum
				end
				local conversations = appState.store:GetState().Conversations
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
		if #appState.store:GetState().Location.history > 1 then
			appState.store:Dispatch({
				type = ActionType.PopRoute,
			})
		else
			GuiService:BroadcastNotification("", GuiService:GetNotificationTypeList().BACK_BUTTON_NOT_CONSUMED)
		end
	end

	NotificationService.RobloxEventReceived:connect(onRobloxEventReceived)
	NotificationService.RobloxConnectionChanged:connect(onRobloxConnectionChanged)

	GuiService.ShowLeaveConfirmation:Connect(onBackButtonPressed)
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