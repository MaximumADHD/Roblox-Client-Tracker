-----------------------------------------------------------------------------
---                                                                       ---
---                   Under Migration to CorePackages                     ---
---                                                                       ---
---      This file is a compatibility bridge between old and new api      ---
-----------------------------------------------------------------------------

local CorePackages = game:GetService("CorePackages")
local tutils = require(CorePackages.tutils)

return {
	CheckListConsistency = tutils.checkListConsistency,
	DeepEqual = tutils.deepEqual,
	EqualKey = tutils.equalKey,
	FieldCount = tutils.fieldCount,
	ListDifference = tutils.listDifferences,
	Print = tutils.print,
	RecursiveToString = tutils.toString,
	ShallowEqual = tutils.shallowEqual,
	TableDifference = tutils.tableDifference,
}
