local Root: any = script:FindFirstAncestor("rodux-friends")
local Packages: any = Root.Parent
local Rodux: any = require(Packages.Rodux)
local FriendRequestsTypes: any = require(script.Parent.Parent.Reducers.Friends.requests.FriendsRequestsTypes)

type FriendRequest = FriendRequestsTypes.FriendRequest

return Rodux.makeActionCreator(script.Name, function(friendRequest: FriendRequest)
	return friendRequest
end)
