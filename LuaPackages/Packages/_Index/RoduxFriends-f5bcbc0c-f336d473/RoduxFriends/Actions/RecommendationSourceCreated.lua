--!strict
local RoduxFriends = script.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

return Rodux.makeActionCreator(
	script.Name,
	function(payload: { source: string, recommendationIds: {[number]: string} }): roduxFriendsTypes.RecommendationSourceCreated
		return {
			payload = payload,
		}
	end
)
