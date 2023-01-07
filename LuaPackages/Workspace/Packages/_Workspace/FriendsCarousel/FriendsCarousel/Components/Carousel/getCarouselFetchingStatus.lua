local FriendsCarousel = script.Parent.Parent.Parent
local dependencies = require(FriendsCarousel.dependencies)

local NetworkingFriends = dependencies.NetworkingFriends
local NetworkStatus = dependencies.RoduxNetworking.Enum.NetworkStatus

local getCarouselFetchingStatus = function(state, localUserId, shouldShowRecommendations)
	local fetchingStatus = NetworkingFriends.GetFriendsFromUserId.getStatus(state, localUserId)

	if shouldShowRecommendations then
		local recommendationsFetchingStatus =
			NetworkingFriends.GetFriendRecommendationsFromUserId.getStatus(state, localUserId)
		if fetchingStatus == NetworkStatus.Done then
			if recommendationsFetchingStatus == NetworkStatus.Failed then
				fetchingStatus = NetworkStatus.Failed
			elseif recommendationsFetchingStatus == NetworkStatus.Done then
				fetchingStatus = NetworkStatus.Done
			else
				fetchingStatus = NetworkStatus.Fetching
			end
		end
	end

	--* we don't want to serve Failed status and implement onRetry in CarouselWidget/LoadingContainer
	--* since HomePage pull down to refresh will handle it instead
	--* TODO: SOCCONN-1718 handle failed carousel state as a follow up
	if fetchingStatus == NetworkStatus.Failed then
		fetchingStatus = NetworkStatus.Done
	end

	return fetchingStatus
end

return getCarouselFetchingStatus
