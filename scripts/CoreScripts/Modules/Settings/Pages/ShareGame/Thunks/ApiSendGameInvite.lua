--!nonstrict
local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Requests = require(CorePackages.Workspace.Packages.Http).Requests

local DEPRECATED_ChatSendMessage
	= Requests.DEPRECATED_ChatSendMessage

local DEPRECATED_ChatStartOneToOneConversation = Requests.DEPRECATED_ChatStartOneToOneConversation

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui.RobloxGui
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)


local DEPRECATED_ChatSendGameLinkMessage = Requests.DEPRECATED_ChatSendGameLinkMessage

return function(networkImpl, userId, placeInfo)
	local clientId = Players.LocalPlayer.UserId

	-- Construct the invite messages based on place info
	local inviteTextMessage
	inviteTextMessage = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Message.InviteToGameTitle", { PLACENAME = placeInfo.name }
	)

	return function(store)
		return DEPRECATED_ChatStartOneToOneConversation(networkImpl, userId, clientId):andThen(function(conversationResult)
			local conversation = conversationResult.responseBody.conversation

			return DEPRECATED_ChatSendMessage(networkImpl, conversation.id, inviteTextMessage, nil, true, userId):andThen(function()
				local function handleResult(inviteResult)
					local data = inviteResult.responseBody

					return {
						resultType = data.resultType,
						conversationId = conversation.id,
						placeId = placeInfo.universeRootPlaceId,
					}
				end

				return DEPRECATED_ChatSendGameLinkMessage(networkImpl, conversation.id, placeInfo.universeId, nil, true, userId, placeInfo.universeRootPlaceId):andThen(handleResult)
			end)
		end)
	end
end
