--[[
	Constants used for communicating with the permissions endpoints
--]]

--[[
	Keys used by the web permission endpoint. By returning them like this, we can easily
	tell what the meaning of keys are. {userId=_} doesn't communicate where userId is coming
	from, its scope, what files we need to use it in, etc, whereas {[webKeys.UserId] = _} is
	a lot more explicit
--]]
return {
	UserId = "userId",
	UserName = "userName",

	GroupId = "groupId",
	GroupName = "groupName",

	RoleId = "rolesetId",
	RoleName = "rolesetName",
	RoleRank = "rank",

	Action = "action",
	AllowedPermissions = "allowedPermissions",

	PlayAction = "Play",
	EditAction = "Edit",
	AdminAction = "Admin",

	-- Outbound POST/DELETE requests
	SubjectType = "subjectType",
	SubjectId = "subjectId",

	UserSubject = "User",
	GroupSubject = "Group",
	RoleSubject = "Roleset",
}