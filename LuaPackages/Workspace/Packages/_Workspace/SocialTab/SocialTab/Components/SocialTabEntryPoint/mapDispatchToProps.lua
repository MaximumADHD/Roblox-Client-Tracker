--!nonstrict
local SocialTab = script:FindFirstAncestor("SocialTab")
local Requests = require(SocialTab.Requests)
local Analytics = require(SocialTab.Analytics)
local dependencies = require(SocialTab.dependencies)
local AnalyticsService = dependencies.AnalyticsService
local Players = dependencies.Players

return function(dispatch)
	return {
		fetchChatSettings = function(setAppLoaded)
			dispatch(function(store)
				return dispatch(Requests.GetUserV2FromUserId.API(store:getState().LocalUserId))
			end)

			return dispatch(Requests.FetchChatSettings.API())
				:andThen(function(response)
					local player = Players.LocalPlayer
					local userId = tostring(player.UserId)
					local analytics = Analytics.Class.new(AnalyticsService, userId)

					analytics:userLoadedSocialTab()
				end)
				:andThen(function()
					dispatch(setAppLoaded(true))
				end)
				:catch(function(error)
					warn("SocialTab.Requests.FetchChatSettings with error: ", tostring(error))
				end)
		end,
	}
end
