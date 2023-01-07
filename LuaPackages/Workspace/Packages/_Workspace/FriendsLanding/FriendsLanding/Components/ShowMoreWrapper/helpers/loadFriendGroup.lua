local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local t = dependencies.t
local llama = dependencies.llama

local friendsPerLoadGroup = require(script.Parent.friendsPerLoadGroup)

local LoadFriendGroupProps = t.interface({
	visibleRows = t.number,
	itemSize = t.number,
	filter = t.string,
})

local LoadFriendGroupState = t.interface({
	width = t.number,
	filterFriendCounts = t.table,
})

return function(state, props)
	assert(LoadFriendGroupState(state))
	assert(LoadFriendGroupProps(props))

	local newFriendsInRow = friendsPerLoadGroup(state, props)
	local filterVisibleFriendCount = state.filterFriendCounts[props.filter] + newFriendsInRow
	return {
		filterFriendCounts = llama.Dictionary.join(
			state.filterFriendCounts,
			{ [props.filter] = filterVisibleFriendCount }
		),
	}
end
