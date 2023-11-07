local FriendsReducer: any = script:FindFirstAncestor("RoduxFriends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)
local byUserId: any = require(script.byUserId)
local bySource: any = require(script.bySource)
local hasIncomingFriendRequest: any = require(script.hasIncomingFriendRequest)

return function(options: any)
	return Rodux.combineReducers({
		byUserId = byUserId(options),
		bySource = bySource(options),
		hasIncomingFriendRequest = hasIncomingFriendRequest(options),
	})
end
