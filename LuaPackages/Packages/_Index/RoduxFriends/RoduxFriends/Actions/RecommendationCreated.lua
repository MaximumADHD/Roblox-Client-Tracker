--!strict
local RoduxFriends = script.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

return Rodux.makeActionCreator(
	script.Name,
	function(payload: { baseUserId: string, recommendedUser: roduxFriendsTypes.RecommendationResponse }): roduxFriendsTypes.RecommendationCreated
		return {
			payload = payload,
		}
	end
)
