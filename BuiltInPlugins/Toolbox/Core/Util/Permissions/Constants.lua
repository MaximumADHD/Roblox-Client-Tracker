--[[
	Constants used for communicating with the permissions endpoints
--]]

--[[
	Keys used by the web permission endpoint. By returning them like this, we can easily
	tell what the meaning of keys are. {userId=_} doesn't communicate where userId is coming
	from, its scope, what files we need to use it in, etc, whereas {[webKeys.UserId] = _} is
	a lot more explicit
--]]
local FFlagUseNewAssetPermissionEndpoint3 = game:GetFastFlag("UseNewAssetPermissionEndpoint3")

local webKeys = {
	UserId = "userId",
	UserName = "userName",

	GroupId = "groupId",
	GroupName = "groupName",

	RoleId = "rolesetId",
	RoleName = "rolesetName",
	RoleRank = "rank",

	UpToVersion = "upToVersion",

	Action = "action",

	UseViewAction = "UseView",
	EditAction = "Edit",
	OwnAction = (not FFlagUseNewAssetPermissionEndpoint3) and "Own" or nil,
	RevokedAction = "Revoked",
	UseAction = "Use",
	GrantAssetPermissionsAction = FFlagUseNewAssetPermissionEndpoint3 and "GrantAssetPermissions" or nil,

	-- Outbound POST/DELETE requests
	SubjectType = "subjectType",
	SubjectId = "subjectId",

	UserSubject = "User",
	GroupSubject = "Group",
	RoleSubject = "Roleset",
	GroupRolesetSubject = "GroupRoleset",
	Requests = "requests",

	--Permissions Status
	UnknownError = FFlagUseNewAssetPermissionEndpoint3 and "UnknownError" or nil,
	HasPermission = FFlagUseNewAssetPermissionEndpoint3 and "HasPermission" or nil,
	NoPermission = FFlagUseNewAssetPermissionEndpoint3 and "NoPermission" or nil,
	AssetNotFound = FFlagUseNewAssetPermissionEndpoint3 and "AssetNotFound" or nil,
}

return {
	webKeys = webKeys,
}