local FriendsReducer = script:FindFirstAncestor("RoduxFriends")
local Root = FriendsReducer.Parent
local llama = require(Root.llama)

return function(list, user)
	if not list then
		return { user }
	end

	if not llama.List.find(list, user) then
		return llama.List.join(list, { user })
	end

	return list
end
