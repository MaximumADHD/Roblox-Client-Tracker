local Plugin = script.Parent.Parent.Parent

local GetUserCollaborators = require(Plugin.Src.Selectors.GetUserCollaborators)
local GetGroupCollaborators = require(Plugin.Src.Selectors.GetGroupCollaborators)

return function(state)
	local newUserCollaborators, currentUserCollaborators = GetUserCollaborators(state)
	local newGroupCollaborators, currentGroupCollaborators = GetGroupCollaborators(state)

	local hasNewCollaborators = #newUserCollaborators > 0 or #currentUserCollaborators > 0 or #newGroupCollaborators > 0 or #currentGroupCollaborators > 0	
	return hasNewCollaborators
end