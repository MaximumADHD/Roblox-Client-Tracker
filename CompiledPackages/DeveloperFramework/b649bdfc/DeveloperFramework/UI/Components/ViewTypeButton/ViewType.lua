local Framework = script:FindFirstAncestor("UI").Parent
local enumerate = require(Framework.Util.enumerate)

export type ViewType = number
return enumerate("ViewType", {
	List = 1,
	Grid = 2,
	Unsupported = 3,
})
