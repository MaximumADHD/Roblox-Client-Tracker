local FriendsReducer = script:FindFirstAncestor("rodux-friends")
local Root = FriendsReducer.Parent
local Cryo = require(Root.Cryo)

return function(list, user)
	if not list then
		return { user }
	end

	if not Cryo.List.find(list, user) then
		return Cryo.List.join(list, { user })
	end

	return list
end
