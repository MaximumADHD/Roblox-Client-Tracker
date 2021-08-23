export type ActionId = string
local ActionIds : {[string]: ActionId} = {
	CopySelected = "CopySelected",
	DeleteSelected = "DeleteSelected",
	SelectAll = "SelectAll",
}

local HEADER_HEIGHT = 40


return {
	ActionIds = ActionIds,
	HEADER_HEIGHT = HEADER_HEIGHT,
}