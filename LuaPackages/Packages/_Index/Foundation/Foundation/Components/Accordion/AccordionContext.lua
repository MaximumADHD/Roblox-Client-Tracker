local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
local React = require(Packages.React)

type InputSize = InputSize.InputSize

return React.createContext({
	onAccordionItemActivated = nil,
	itemSize = InputSize.Medium,
	isContained = false,
	chevronPosition = InputPlacement.End,
	testId = "",
})
