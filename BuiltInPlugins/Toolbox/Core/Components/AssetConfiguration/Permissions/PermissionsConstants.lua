--[[
	Constants shared by Package Permissions in Asset Config components/network requests to handle permissions
--]]

local Plugin = script.Parent.Parent.Parent.Parent.Parent

local Packages = Plugin.Packages
local FFlagToolboxDeduplicatePackages = game:GetFastFlag("ToolboxDeduplicatePackages")
local Cryo
if FFlagToolboxDeduplicatePackages then
	Cryo = require(Packages.Cryo)
else
	Cryo = require(Plugin.Libs.Cryo)
end

local function createKey(keyName)
	local key = newproxy(true)

	getmetatable(key).__tostring = function()
		return "Symbol("..keyName..")"
	end

	return key
end

--[[
	Keys used in internal data structures. The tables don't contain any data, and are just
	unique identifiers used in lieu of Lua's lack of enums. By using these, we can easily
	tell what the meaning of keys are. {subjectId=_} doesn't communicate where it's coming
	from, its scope, what files we need to use it in, etc, whereas {[SubjectIdKey] = _} is
	less arbitrary
--]]
local uniqueIdentifiers = {
	-- Used in internal data structure for permissions
	NoneKey = createKey("NonePermission"), --This is used for default, e.g. in case web request fails.
	NoAccessKey = createKey("NoAccessPermission"),
	UseViewKey = createKey("UseViewPermission"),
	EditKey = createKey("EditPermission"),
	RevokedKey = createKey("RevokedPermission"),
	OwnKey = createKey("OwnPermisison"),
	
	UserSubjectKey = createKey("UserSubjectType"),
	GroupSubjectKey = createKey("GroupSubjectType"),
	RoleSubjectKey = createKey("RoleSubjectType"),
	
	ActionKey = createKey("Action"),
	SubjectIdKey = createKey("SubjectId"),
	SubjectNameKey = createKey("SubjectName"),
	SubjectTypeKey = createKey("SubjectType"),
	SubjectRankKey = createKey("SubjectRank"),
	GroupIdKey = createKey("GroupId"),
	GroupNameKey = createKey("GroupName"),
}

local miscConstants = {
	MaxSearchResultsPerSubjectType = 3,
	MaxPackageAssetIdsForHighestPermissionsRequest = 100,
}

return Cryo.Dictionary.join(
	uniqueIdentifiers,
	miscConstants
)