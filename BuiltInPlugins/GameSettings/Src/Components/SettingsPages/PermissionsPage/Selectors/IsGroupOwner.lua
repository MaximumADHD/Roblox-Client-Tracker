return function(state, groupId)
	local ownerId = state.GameOwnerMetadata.creatorId
	local ownerType = state.GameOwnerMetadata.creatorType

	return ownerType == Enum.CreatorType.Group and ownerId == groupId
end