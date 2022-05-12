local FFlagGSPermsRemoveCollaboratorsFixEnabled = game:GetFastFlag("GSPermsRemoveCollaboratorsFixEnabled")

local Page = script.Parent.Parent

return function(state, groupId)
	local metadata = state.Settings.Changed.groupMetadata or state.Settings.Current.groupMetadata
	local groupMetadata = metadata[groupId]
	
	if FFlagGSPermsRemoveCollaboratorsFixEnabled then
		return	if groupMetadata then groupMetadata.Name else nil 
	else
		return groupMetadata.Name
	end
end