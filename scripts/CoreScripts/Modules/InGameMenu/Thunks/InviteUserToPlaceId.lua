local Players = game:GetService("Players")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RunService = game:GetService("RunService")

local InGameMenu = script.Parent.Parent

local Network = InGameMenu.Network

local httpRequest = require(Network.httpRequest)
local ChatSendMessage = require(Network.Requests.ChatSendMessage)
local ChatSendGameLinkMessage = require(Network.Requests.ChatSendGameLinkMessage)
local ChatStartOneToOneConversation = require(Network.Requests.ChatStartOneToOneConversation)
local GetPlaceInfos = require(Network.Requests.GetPlaceInfos)

local networkImpl = httpRequest(HttpRbxApiService)

local Constants = require(InGameMenu.Resources.Constants)
local InviteStatus = Constants.InviteStatus

local ReceivedUserInviteStatus = require(InGameMenu.Actions.ReceivedUserInviteStatus)

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

			return ChatStartOneToOneConversation(networkImpl, userId, clientId):andThen(function(conversationResult)
				local conversation = conversationResult.responseBody.conversation
				return ChatSendMessage(networkImpl, conversation.id, inviteTextMessage):andThen(function()
					return ChatSendGameLinkMessage(networkImpl, conversation.id, placeInfo.universeId):andThen(function(inviteResult)
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
		end):andThen(function(inviteSentResults)
			local inviteStatusKey = inviteSentResults.resultType
			local userInviteStatus = InviteStatus[inviteStatusKey] or InviteStatus.Failed

			store:dispatch(ReceivedUserInviteStatus(userId, userInviteStatus))
			return inviteSentResults
		end,
		function()
			store:dispatch(ReceivedUserInviteStatus(userId, InviteStatus.Failed))
		end)

	end
end