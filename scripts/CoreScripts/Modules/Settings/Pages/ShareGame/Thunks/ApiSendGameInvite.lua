local Players = game:GetService("Players")
local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame

local Requests = ShareGame.Http.Requests
local Url = require(ShareGame.Http.Url)
local ChatSendMessage = require(Requests.ChatSendMessage)
local ChatStartOneToOneConversation = require(Requests.ChatStartOneToOneConversation)

local INVITE_MESSAGE = "Come join me in %s %s/games/%s/share"

return function(networkImpl, userId, placeInfo)
	local clientId = Players.LocalPlayer.UserId

	-- Construct the invite message based on place info
	local messageText = string.format(INVITE_MESSAGE,
		placeInfo.name, Url.BASE_URL, placeInfo.universeRootPlaceId
	)

	return function(store)
		return ChatStartOneToOneConversation(networkImpl, userId, clientId):andThen(function(result)
			local conversation = result.responseBody.conversation

			ChatSendMessage(networkImpl, conversation.id, messageText):andThen(function(result)
				local data = result.responseBody

				if data.resultType ~= "Success" then
					warn("Game invite was moderated")
				end
			end)
		end)
	end
end