local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local t = dependencies.t

local DEFAULT_MINIMUM_ITEMS_PER_ROW = 2

local FriendsPerRowPropsInterface = t.interface({
	width = t.number,
	itemSize = t.number,
	minimumItemsPerRow = t.optional(t.number),
})

return function(props)
	assert(FriendsPerRowPropsInterface(props))

	return math.max(math.floor(props.width / props.itemSize), props.minimumItemsPerRow or DEFAULT_MINIMUM_ITEMS_PER_ROW)
end
