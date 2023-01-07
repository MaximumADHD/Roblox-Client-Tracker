local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local llama = dependencies.llama
local t = dependencies.t
local friendsPerRow = require(script.Parent.friendsPerRow)

local NewFriendsToAddStateInterface = t.interface({
	width = t.number,
})

local NewFriendsToAddPropsInterface = t.interface({
	visibleRows = t.number,
	itemSize = t.number,
	minimumItemsPerRow = t.optional(t.number),
})

return function(state, props)
	assert(NewFriendsToAddStateInterface(state))
	assert(NewFriendsToAddPropsInterface(props))
	return props.visibleRows * friendsPerRow(llama.Dictionary.join({
		width = state.width,
	}, props))
end
