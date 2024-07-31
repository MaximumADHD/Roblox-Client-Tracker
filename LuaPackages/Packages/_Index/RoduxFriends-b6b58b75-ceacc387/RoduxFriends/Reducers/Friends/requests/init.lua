local FriendsReducer: any = script:FindFirstAncestor("RoduxFriends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)
local receivedCount: any = require(script.receivedCount)
local byUserId: any = require(script.byUserId)
local mutualFriends: any = require(script.mutualFriends)
local sourceUniverseIds: any = require(script.sourceUniverseIds)
local nextPageCursor: any = require(script.nextPageCursor)
local sentAt: any = require(script.sentAt)
local originSourceType: any = require(script.originSourceType)
local order: any = require(script.order)
local senderNickname: any = require(script.senderNickname)

return function(options: any)
	return Rodux.combineReducers({
		receivedCount = receivedCount(options),
		byUserId = byUserId(options),
		mutualFriends = mutualFriends(options),
		sourceUniverseIds = sourceUniverseIds(options),
		nextPageCursor = nextPageCursor(options),
		sentAt = sentAt(options),
		originSourceType = originSourceType(options),
		order = order(options),
		senderNickname = senderNickname(options),
	})
end
