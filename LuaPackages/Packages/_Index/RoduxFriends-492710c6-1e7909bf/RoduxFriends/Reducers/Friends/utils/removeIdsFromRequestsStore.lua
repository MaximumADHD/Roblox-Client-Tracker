local FriendsReducer: any = script:FindFirstAncestor("RoduxFriends")
local Root: any = FriendsReducer.Parent
local llama: any = require(Root.llama)

return function(state: any, ids: {string})
	local idsToDelete: table = {}
	table.foreach(ids, function(_, id: string)
		idsToDelete[id] = llama.None
	end)

	return llama.Dictionary.join(state, idsToDelete)
end
