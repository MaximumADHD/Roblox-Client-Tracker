local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local InputSize = require(Foundation.Enums.InputSize)
local React = require(Packages.React)

type InputSize = InputSize.InputSize

return React.createContext({
	onAccordionItemActivated = nil,
	itemSize = InputSize.Medium,
	testId = "",
})
