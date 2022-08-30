local FriendsReducer: any = script:FindFirstAncestor("rodux-friends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)
local receivedCount: any = require(script.receivedCount)
local byUserId: any = require(script.byUserId)
local mutualFriends: any = require(script.mutualFriends)
local sourceUniverseIds: any = require(script.sourceUniverseIds)
local nextPageCursor: any = require(script.nextPageCursor)

return function(options: any)
	return Rodux.combineReducers({
		receivedCount = receivedCount(options),
		byUserId = byUserId(options),
		mutualFriends = mutualFriends(options),
		sourceUniverseIds = sourceUniverseIds(options),
		nextPageCursor = nextPageCursor(options)
	})
end
