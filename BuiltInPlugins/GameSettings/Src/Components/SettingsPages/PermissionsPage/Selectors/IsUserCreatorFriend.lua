return function(state, userId)
	local ownerType = state.GameOwnerMetadata.creatorType
	local ownerFriends = state.GameOwnerMetadata.creatorFriends

	if ownerType == Enum.CreatorType.User then
		for _,friendId in ipairs(ownerFriends) do
			if friendId == userId then
				return true
			end
		end
	end

	return false
end