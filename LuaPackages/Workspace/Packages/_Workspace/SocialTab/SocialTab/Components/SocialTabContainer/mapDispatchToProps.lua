local SocialTab = script:FindFirstAncestor("SocialTab")

local Logger = require(SocialTab.Logger)

local dependencies = require(SocialTab.dependencies)
local Promise = dependencies.Promise
local GetUnreadConversationCount = require(SocialTab.Conversations.NetworkRequests.GetUnreadConversationCount)
local GetPresencesFromUserIds = dependencies.NetworkingPresence.GetPresencesFromUserIds
local NetworkingFriends = dependencies.NetworkingFriends
local NetworkingUsers = dependencies.NetworkingUsers
local SocialLibraries = dependencies.SocialLibraries

return function(dispatch)
	return {
		refreshPageData = function()
			local getFriendRequestsCount = NetworkingFriends.GetFriendRequestsCount

			return Promise.all({
				dispatch(GetUnreadConversationCount.API()),
				dispatch(function(store)
					local friendsList = SocialLibraries.Dictionary.getDeepValue(
						store:getState(),
						"SocialTab.Friends.byUserId.localUserId"
					)

					if friendsList then
						return dispatch(GetPresencesFromUserIds.API(friendsList))
					else
						return Promise.resolve()
					end
				end),
				dispatch(getFriendRequestsCount.API()),
				dispatch(function(store)
					return dispatch(NetworkingUsers.GetUserV2FromUserId.API(store:getState().LocalUserId))
				end),
			}):catch(function()
				Logger:info("Failed to refresh SocialTab data")
			end)
		end,
		fetchFriendsRequestsCount = function()
			return dispatch(NetworkingFriends.GetFriendRequestsCount.API())
		end,
	}
end
