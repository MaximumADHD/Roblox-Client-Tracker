local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local AddFriends = FriendsLanding.AddFriends
local dependencies = require(AddFriends.dependencies)
local llama = dependencies.llama

return function(results)
	local mutualFriends = {}
	local universeIds = {}
	local userIds = {}
	local absPosition = {}
	for pos, request in pairs(results.responseBody.data) do
		table.insert(
			mutualFriends,
			table.concat(
				llama.List.map(request.mutualFriendsList, function(id)
					return id
				end),
				","
			)
		)
		table.insert(
			universeIds,
			if request.friendRequest.sourceUniverseId then request.friendRequest.sourceUniverseId else 0
		)
		table.insert(userIds, request.friendRequest.senderId)
		table.insert(absPosition, pos)
	end

	return {
		page = "friendRequests",
		requestingUserId = table.concat(userIds, ","),
		gamesContext = table.concat(universeIds, ","),
		absPosition = table.concat(absPosition, ","),
		mutualFriendsContext = table.concat(mutualFriends, ";"),
	}
end
