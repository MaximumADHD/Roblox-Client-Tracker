local Page = script.Parent.Parent
local PermissionsConstants = require(Page.Util.PermissionsConstants)

return function(state, userId)
	local permissions = state.Settings.Changed.permissions or state.Settings.Current.permissions
	local userPermission = permissions[PermissionsConstants.UserSubjectKey][userId]
	
	return if userPermission then userPermission[PermissionsConstants.ActionKey] else nil 
end