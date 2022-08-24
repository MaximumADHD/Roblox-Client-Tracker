local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local llama = require(Root.llama)

return function(list, user)
	return llama.List.removeValue(list or {}, user)
end
