local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local dependencies = require(FriendsLanding.dependencies)
local t = dependencies.t
local llama = dependencies.llama

local Dictionary = llama.Dictionary

local friendsPerLoadGroup = require(script.Parent.friendsPerLoadGroup)

local UpdateFriendsWithWidthProps = t.interface({
	visibleRows = t.number,
	itemSize = t.number,
	filter = t.string,
})

local UpdateFriendsWithWidthState = t.interface({
	filterFriendCounts = t.table,
})

return function(newWidth)
	return function(state, props)
		assert(UpdateFriendsWithWidthProps(props))
		assert(UpdateFriendsWithWidthState(state))

		local newFriendCount = friendsPerLoadGroup({ width = newWidth }, props)

		return {
			width = newWidth,
			filterFriendCounts = Dictionary.join(
				state.filterFriendCounts,
				Dictionary.map(state.filterFriendCounts, function(val)
					return math.max(newFriendCount, val)
				end)
			),
		}
	end
end
