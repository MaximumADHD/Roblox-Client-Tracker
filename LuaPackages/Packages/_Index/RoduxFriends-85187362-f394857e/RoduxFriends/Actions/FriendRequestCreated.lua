--!strict
local RoduxFriends = script.Parent.Parent
local Packages: any = RoduxFriends.Parent
local Rodux: any = require(Packages.Rodux) :: any
local roduxFriendsTypes: any = require(RoduxFriends.roduxFriendsTypes)

type FriendRequest = roduxFriendsTypes.FriendRequestCreated

return Rodux.makeActionCreator(script.Name, function(friendRequest: FriendRequest)
	return friendRequest
end)
