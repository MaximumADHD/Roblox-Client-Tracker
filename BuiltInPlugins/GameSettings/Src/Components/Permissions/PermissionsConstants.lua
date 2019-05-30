--[[
	Constants shared by Game Settings components/network requests to handle permissions
--]]

local Plugin = script.Parent.Parent.Parent.Parent
local Cryo = require(Plugin.Cryo)

--[[
	Keys used in internal data structures. The tables don't contain any data, and are just
	unique identifiers used in lieu of Lua's lack of enums. By using these, we can easily
	tell what the meaning of keys are. {subjectId=_} doesn't communicate where it's coming
	from, its scope, what files we need to use it in, etc, whereas {[SubjectIdKey] = _} is
	less arbitrary
--]]
local uniqueIdentifiers = {
	-- Used in internal data structure for permissions
	NoAccessKey = {},
	PlayKey = {},
	EditKey = {},
	AdminKey = {},
	
	UserSubjectKey = {},
	GroupSubjectKey = {},
	RoleSubjectKey = {},
	
	ActionKey = {},
	SubjectIdKey = {},
	SubjectNameKey = {},
	SubjectTypeKey = {},
	SubjectRankKey = {},
	GroupIdKey = {},
	GroupNameKey = {}
}

return Cryo.Dictionary.join(
	uniqueIdentifiers
)