--!nonstrict
local Players = game:GetService("Players")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local Network = InGameMenu.Network

local AppChatNetworking = require(CorePackages.Workspace.Packages.AppChatNetworking)
local httpRequest = require(Network.httpRequest)
local DEPRECATED_ChatSendMessage = require(Network.Requests.DEPRECATED_ChatSendMessage)
local DEPRECATED_ChatSendGameLinkMessage = require(Network.Requests.DEPRECATED_ChatSendGameLinkMessage)
local DEPRECATED_ChatStartOneToOneConversation = require(Network.Requests.DEPRECATED_ChatStartOneToOneConversation)
local GetPlaceInfos = require(Network.Requests.GetPlaceInfos)
local constructGameLinkUrl = require(InGameMenu.Utility.constructGameLinkUrl)

local networkImpl = httpRequest(HttpRbxApiService)

local Constants = require(InGameMenu.Resources.Constants)
local InviteStatus = Constants.InviteStatus

local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)

local FFlagAppChatMigrateIGMInvite = game:DefineFastFlag("AppChatMigrateIGMInvite", false)

-- we're not getting these w/ translations or anything
local INVITE_TEXT_MESSAGE = "Come join me in %s"

return function(userId, placeId)
	return function(store)
		local state = store:getState()

		if state.invites[tostring(userId)] == InviteStatus.Pending then
			return
		end

		store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Pending))

		if RunService:IsStudio() then
			spawn(function()
				store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Failed))
			end)
			return
		end

		return GetPlaceInfos(networkImpl, {placeId}):andThen(function(result)
			local placeInfos = result.responseBody

			local placeInfo = placeInfos[1]
			assert(placeInfo, "Error fetching placeInfos")

			placeInfo.placeId = tostring(placeInfo.placeId)
			placeInfo.universeId = tostring(placeInfo.universeId)

			return placeInfo
		end):andThen(function(placeInfo)
			local clientId = Players.LocalPlayer.UserId
			local inviteTextMessage = string.format(INVITE_TEXT_MESSAGE, placeInfo.name)

			if FFlagAppChatMigrateIGMInvite then
				assert(placeInfo.universeRootPlaceId, "Failed to get universe root place id")
				inviteTextMessage ..= "\n" .. constructGameLinkUrl(placeInfo.universeRootPlaceId)
				return AppChatNetworking.http.CreateConversation(nil, "one_to_one", { userId }):andThen(function(createdConversationResult: AppChatNetworking.Response<AppChatNetworking.CreateConversationsResponse>)
					local conversation = createdConversationResult.responseBody.conversations[1]
					assert(conversation, "Failed to create conversation")
					return AppChatNetworking.http.SendChatTextMessage(nil, conversation.id, inviteTextMessage):andThen(function(sendMessageResult)
						local message = sendMessageResult.responseBody.messages[1]
						assert(message, "Failed to send message")
						local status = message.status

						local inviteSentResults = {
							resultType = if status == "success" then "Success" else "Failed",
							conversationId = conversation.id,
							placeId = placeInfo.universeRootPlaceId,
						}

						return inviteSentResults
					end)
				end):catch(function(err)
					warn("Failed to send invite: " .. tostring(err))
				end)
			else
				return DEPRECATED_ChatStartOneToOneConversation(networkImpl, userId, clientId):andThen(function(conversationResult)
					local conversation = conversationResult.responseBody.conversation
					return DEPRECATED_ChatSendMessage(networkImpl, conversation.id, inviteTextMessage):andThen(function()
						return DEPRECATED_ChatSendGameLinkMessage(networkImpl, conversation.id, placeInfo.universeId):andThen(function(inviteResult)
							local data = inviteResult.responseBody

							local inviteSentResults = {
								resultType = data.resultType,
								conversationId = conversation.id,
								placeId = placeInfo.universeRootPlaceId,
							}

							return inviteSentResults
						end)
					end)
				end)
			end
		end):andThen(function(inviteSentResults)
			if FFlagAppChatMigrateIGMInvite then
				-- Technical debt: IGM does not use the Promise library from CorePackages which means
				-- it does not handle chained promises automatically...
				local success, promiseResult = inviteSentResults:await()
				assert(success, "Failed to unroll promise after friend invitation: " .. tostring(promiseResult))
				inviteSentResults = promiseResult
			end

			local inviteStatusKey = inviteSentResults.resultType
			local userInviteStatus = InviteStatus[inviteStatusKey] or InviteStatus.Failed

			store:dispatch(ReceivedUserInviteStatus(userId, userInviteStatus))
			return inviteSentResults
		end,
		function(err)
			store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Failed))
		end)

	end
end
