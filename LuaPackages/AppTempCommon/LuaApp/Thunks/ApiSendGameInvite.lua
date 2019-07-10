local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local ChatSendMessage = require(Requests.ChatSendMessage)
local ChatStartOneToOneConversation = require(Requests.ChatStartOneToOneConversation)

local FFlagLuaInviteGameTextLocalization = settings():GetFFlag("LuaInviteGameTextLocalization")

local INVITE_TEXT_MESSAGE
local RobloxTranslator
if FFlagLuaInviteGameTextLocalization then
	local CoreGui = game:GetService("CoreGui")
	local RobloxGui = CoreGui:WaitForChild("RobloxGui")
	RobloxTranslator = require(RobloxGui.Modules.RobloxTranslator)
else
	INVITE_TEXT_MESSAGE = "Come join me in %s"
end

local ChatSendGameLinkMessage = require(Requests.ChatSendGameLinkMessage)

return function(networkImpl, userId, placeInfo)
	local clientId = Players.LocalPlayer.UserId

	-- Construct the invite messages based on place info
	local inviteTextMessage
	if FFlagLuaInviteGameTextLocalization then
		inviteTextMessage = RobloxTranslator:FormatByKey(
			"Feature.SettingsHub.Message.InviteToGameTitle", { PLACENAME = placeInfo.name }
		)
	else
		inviteTextMessage = string.format(INVITE_TEXT_MESSAGE, placeInfo.name)
	end

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