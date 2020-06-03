local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local ChatSendMessage = require(Requests.ChatSendMessage)
local ChatStartOneToOneConversation = require(Requests.ChatStartOneToOneConversation)

local CoreGui = game:GetService("CoreGui")
local RobloxGui = CoreGui:WaitForChild("RobloxGui")
local RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)


local ChatSendGameLinkMessage = require(Requests.ChatSendGameLinkMessage)

return function(networkImpl, userId, placeInfo)
	local clientId = Players.LocalPlayer.UserId

	-- Construct the invite messages based on place info
	local inviteTextMessage
	inviteTextMessage = RobloxTranslator:FormatByKey(
		"Feature.SettingsHub.Message.InviteToGameTitle", { PLACENAME = placeInfo.name }
	)

	return function(store)
		return ChatStartOneToOneConversation(networkImpl, userId, clientId):andThen(function(conversationResult)
			local conversation = conversationResult.responseBody.conversation

			return ChatSendMessage(networkImpl, conversation.id, inviteTextMessage):andThen(function()
				local function handleResult(inviteResult)
					local data = inviteResult.responseBody

					return {
						resultType = data.resultType,
						conversationId = conversation.id,
						placeId = placeInfo.universeRootPlaceId,
					}
				end

				return ChatSendGameLinkMessage(networkImpl, conversation.id, placeInfo.universeId):andThen(handleResult)
			end)
		end)
	end
end