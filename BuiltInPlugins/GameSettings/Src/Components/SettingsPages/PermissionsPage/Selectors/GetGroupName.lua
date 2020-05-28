return function(state, groupId)
	local metadata = state.Settings.Current.groupMetadata
	local groupMetadata = metadata[groupId]

	return groupMetadata.Name
end