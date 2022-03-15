local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local Cryo = require(Root.Cryo)

return function(list, user)
	return Cryo.List.removeValue(list or {}, user)
end
