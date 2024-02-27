-----------------------------------------------------------------------------
---                                                                       ---
---                   Under Migration to CorePackages                     ---
---                                                                       ---
---      This file is a compatibility bridge between old and new api      ---
-----------------------------------------------------------------------------

-- APPFDN-1897 LuaAppReplaceTableUtilities TODO: Clean up this file

local CorePackages = game:GetService("CorePackages")
local tutils = require(CorePackages.tutils)

game:DefineFastFlag("LuaAppReplaceTableUtilities", false)

-- FFlag getter defined here so it can be accessed anywhere where this package can be accessed
local function GetFFlagLuaAppReplaceTableUtilities()
	return game:GetFastFlag("LuaAppReplaceTableUtilities")
end

local TableUtilities = {
	CheckListConsistency = tutils.checkListConsistency,
	DeepEqual = tutils.deepEqual,
	EqualKey = tutils.equalKey,
	FieldCount = tutils.fieldCount,
	ListDifference = tutils.listDifferences,
	Print = tutils.print,
	RecursiveToString = tutils.toString,
	ShallowEqual = tutils.shallowEqual,
	TableDifference = tutils.tableDifference,
	GetFFlagLuaAppReplaceTableUtilities = GetFFlagLuaAppReplaceTableUtilities
}

-- metatable to throw error if TableUtilities accessed when FFlagLuaAppReplaceTableUtilities is enabled
local lockMt = {}
function lockMt.__index(tbl, key)
	if not GetFFlagLuaAppReplaceTableUtilities() or key == "GetFFlagLuaAppReplaceTableUtilities" then
		return TableUtilities[key]
	else
		error("Attempt to use deprecated package TableUtilities, pending removal. Use tutils")
	end
end

return setmetatable({}, lockMt)
