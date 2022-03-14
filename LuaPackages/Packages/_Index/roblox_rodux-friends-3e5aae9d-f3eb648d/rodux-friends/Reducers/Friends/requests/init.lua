local FriendsReducer = script:FindFirstAncestor("rodux-friends")
local Root = FriendsReducer.Parent
local Rodux = require(Root.Rodux)
local receivedCount = require(script.receivedCount)

return function(options)
	return Rodux.combineReducers({
		receivedCount = receivedCount(options),
	})
end
