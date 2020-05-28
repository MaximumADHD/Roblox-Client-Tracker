return function(state, userId)
	local ownerId = state.GameOwnerMetadata.creatorId
	local ownerType = state.GameOwnerMetadata.creatorType

	return ownerType == Enum.CreatorType.User and ownerId == userId
end