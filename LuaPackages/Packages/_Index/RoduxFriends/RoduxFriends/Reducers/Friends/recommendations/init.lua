local FriendsReducer: any = script:FindFirstAncestor("RoduxFriends")
local Root: any = FriendsReducer.Parent
local Rodux: any = require(Root.Rodux)
local byUserId: any = require(script.byUserId)

return function(options: any)
	return Rodux.combineReducers({
		byUserId = byUserId(options),
	})
end
