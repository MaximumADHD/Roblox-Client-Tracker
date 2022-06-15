--[[
	Constants used for communicating with and interpreting the permissions endpoints.
--]]

--[[
	Keys used by the web permission endpoint. By returning them like this, we can easily
	tell what the meaning of keys are. {userId=_} doesn't communicate where userId is coming
	from, its scope, what files we need to use it in, etc, whereas {[webKeys.UserId] = _} is
	a lot more explicit
--]]
local FFlagToolboxEnableAudioGrantDialog = game:GetFastFlag("ToolboxEnableAudioGrantDialog")
local FFlagLimitGroupRoleSetPermissionsInGui = game:GetFastFlag("LimitGroupRoleSetPermissionsInGui")

local webKeys = {
	All = "All",

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
	RevokedAction = "Revoked",
	UseAction = "Use",
	GrantAssetPermissionsAction = "GrantAssetPermissions",

	-- Outbound POST/DELETE requests
	SubjectType = "subjectType",
	SubjectId = "subjectId",
	PermissionLevel = if FFlagLimitGroupRoleSetPermissionsInGui then "permissionLevel" else nil,
	PermissionSource = if FFlagLimitGroupRoleSetPermissionsInGui then "permissionSource" else nil,

	-- TODO: Move these down into webValues.
	UserSubject = "User",
	GroupSubject = "Group",
	RoleSubject = "Roleset",
	GroupRolesetSubject = "GroupRoleset",
	Requests = "requests",
	Universe = "Universe",

	--Permissions Status
	UnknownError = "UnknownError",
	HasPermission = "HasPermission",
	NoPermission = "NoPermission",
	AssetNotFound = "AssetNotFound",
}

--[[
	Enumerated values used by the web permission endpoint. These symbols decouple
	Lua code interacting with the endpoints from the exact representation of
	the message data. E.g., we can write:

	    {[webKeys.PermissionLevel] = webValues.AccountPermissionLevel}

	without knowing whether the value is an int or a string, or if key or value
	strings get respelled. Respellings only have to touch this code.

	webKeys are distinct from webValues in that webKeys should hold the key
	values in the repsonse json, whereas webValues should hold the values
	assigned to those keys. This is not yet the case; the various values
	marked above need to be moved down.
--]]
local webValues = {
	-- Enumeration of values for PermssionLevel.
	AccountPermissionLevel = "Account",
	UniversePermissionLevel = "Universe",
	AssetPermissionLevel = "Asset",

	-- Enumeration of values for PermissionSource.
	AssetPermissionSource = "AssetPermissions",
	GroupPermissionSource = "GroupRolesetPermissions",
}

return {
	webKeys = webKeys,
	webValues = webValues,
}
