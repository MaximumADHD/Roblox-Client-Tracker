local FriendsReducer: any = script:FindFirstAncestor("rodux-friends")
local Root: any = FriendsReducer.Parent
local Cryo: any = require(Root.Cryo)

return function(state: any, ids: {string})
	local idsToDelete: table = {}
	table.foreach(ids, function(_, id: string)
		idsToDelete[id] = Cryo.None
	end)

	return Cryo.Dictionary.join(state, idsToDelete)
end
