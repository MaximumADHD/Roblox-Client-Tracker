--!nonstrict
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local RunService = game:GetService("RunService")
local CorePackages = game:GetService("CorePackages")

local InGameMenu = script.Parent.Parent

local Network = InGameMenu.Network

local AppChatNetworking = require(CorePackages.Workspace.Packages.AppChatNetworking)
local httpRequest = require(Network.httpRequest)
local GetPlaceInfos = require(Network.Requests.GetPlaceInfos)
local constructGameLinkUrl = require(InGameMenu.Utility.constructGameLinkUrl)

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
			local inviteTextMessage = string.format(INVITE_TEXT_MESSAGE, placeInfo.name)
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
		end):andThen(function(inviteSentResults)
				-- Technical debt: IGM does not use the Promise library from CorePackages which means
				-- it does not handle chained promises automatically...
				local success, promiseResult = inviteSentResults:await()
				assert(success, "Failed to unroll promise after friend invitation: " .. tostring(promiseResult))
				inviteSentResults = promiseResult

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
