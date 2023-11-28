--!strict
local RoduxFriends = script.Parent.Parent
local Packages = RoduxFriends.Parent
local Rodux = require(Packages.Rodux) :: any
local roduxFriendsTypes = require(RoduxFriends.roduxFriendsTypes)

return Rodux.makeActionCreator(script.Name, function(userId1: string, userId2: string): roduxFriendsTypes.FriendshipCreated
	return {
		payload = {
			userId1 = userId1,
			userId2 = userId2,
		},
	}
end)
