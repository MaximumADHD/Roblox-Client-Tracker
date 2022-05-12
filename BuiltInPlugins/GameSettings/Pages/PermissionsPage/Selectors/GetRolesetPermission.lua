local FFlagGSPermsRemoveCollaboratorsFixEnabled = game:GetFastFlag("GSPermsRemoveCollaboratorsFixEnabled")

local Page = script.Parent.Parent
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function (state, rolesetId)
	local permissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
	local rolesetPermission = permissions[PermissionsConstants.RoleSubjectKey][rolesetId]
	
	if FFlagGSPermsRemoveCollaboratorsFixEnabled then
		return if rolesetPermission then rolesetPermission[PermissionsConstants.ActionKey] else nil
	else
		return rolesetPermission[PermissionsConstants.ActionKey]
	end
end