local FriendsReducer: any = script:FindFirstAncestor("RoduxFriends")
local Root: any = FriendsReducer.Parent
local llama: any = require(Root.llama)

return function(state: any, ids: {string})
	local idsToDelete: table = {}
	for _, id: string in pairs(ids) do
		idsToDelete[id] = llama.None
	end

	return llama.Dictionary.join(state, idsToDelete)
end
