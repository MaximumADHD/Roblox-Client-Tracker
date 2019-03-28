local CorePackages = game:GetService("CorePackages")
local Players = game:GetService("Players")

local AppTempCommon = CorePackages.AppTempCommon
local Requests = CorePackages.AppTempCommon.LuaApp.Http.Requests

local ChatSendMessage = require(Requests.ChatSendMessage)
local ChatStartOneToOneConversation = require(Requests.ChatStartOneToOneConversation)
local Url = require(CorePackages.AppTempCommon.LuaApp.Http.Url)

local trimCharacterFromEndString = require(AppTempCommon.Temp.trimCharacterFromEndString)

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
local INVITE_LINK_MESSAGE = "%s/games/%s"


local FFlagLuaInviteSendsGameLinks = settings():GetFFlag("LuaInviteSendsGameLinks")

local ChatSendGameLinkMessage
if FFlagLuaInviteSendsGameLinks then
	ChatSendGameLinkMessage = require(Requests.ChatSendGameLinkMessage)
end

return function(networkImpl, userId, placeInfo)
	local clientId = Players.LocalPlayer.UserId

	-- Construct the invite messages based on place info
	local inviteTextMessage
	if FFlagLuaInviteGameTextLocalization then
		inviteTextMessage = RobloxTranslator:FormatByKey("Feature.SettingsHub.Message.InviteToGameTitle", { PLACENAME = placeInfo.name })
	else
		inviteTextMessage = string.format(INVITE_TEXT_MESSAGE, placeInfo.name)
	end

	local trimmedUrl = trimCharacterFromEndString(Url.WWW_URL, "/")
	local inviteLinkMessage = string.format(INVITE_LINK_MESSAGE, trimmedUrl, placeInfo.universeRootPlaceId)

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
				if FFlagLuaInviteSendsGameLinks then
					return ChatSendGameLinkMessage(networkImpl, conversation.id, placeInfo.universeId):andThen(handleResult)
				else
					return ChatSendMessage(networkImpl, conversation.id, inviteLinkMessage):andThen(handleResult)
				end
			end)
		end)
	end
end