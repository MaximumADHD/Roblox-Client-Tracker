return function(state, groupId)
	local metadata = state.GroupMetadata.NewGroupMetadata or state.GroupMetadata.CurrentGroupMetadata
	local groupMetadata = metadata[groupId]

	return groupMetadata.Name
end
