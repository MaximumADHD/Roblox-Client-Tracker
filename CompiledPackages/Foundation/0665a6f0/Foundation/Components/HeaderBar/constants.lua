local Foundation = script:FindFirstAncestor("Foundation")
local Constants = require(Foundation.Constants)

return {
	LEADING_ACTIONS_LAYOUT_ORDER = Constants.MIN_LAYOUT_ORDER,
	LEADING_LAYOUT_ORDER = 1,
	CONTENT_LAYOUT_ORDER = 2,
	TRAILING_LAYOUT_ORDER = 3,
	TRAILING_ACTIONS_LAYOUT_ORDER = Constants.MAX_LAYOUT_ORDER - 1,
}
