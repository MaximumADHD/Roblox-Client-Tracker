local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local InputSize = require(Foundation.Enums.InputSize)

type InputSize = InputSize.InputSize

return React.createContext({
	onAccordionItemActivated = nil,
	itemSize = InputSize.Medium,
	testId = "",
})
