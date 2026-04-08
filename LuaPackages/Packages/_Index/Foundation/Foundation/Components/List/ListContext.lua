local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local InputSize = require(Foundation.Enums.InputSize)

type InputSize = InputSize.InputSize

return React.createContext({
	hasDivider = false,
	isContained = false,
	isInset = false,
	hasMargin = false,
	lastLayoutOrder = 0,
	size = InputSize.Medium :: InputSize,
	testId = "",
})
