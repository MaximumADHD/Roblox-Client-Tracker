local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local InputSize = require(Foundation.Enums.InputSize)

local AccordionContext = require(script.Parent.AccordionContext)

type InputSize = InputSize.InputSize
type ItemId = Types.ItemId

export type onAccordionItemActivated = (id: ItemId, isExpanded: boolean?) -> () -> () | nil

export type AccordionConfiguration = {
	onAccordionItemActivated: onAccordionItemActivated,
	itemSize: InputSize,
	testId: string?,
}

local useAccordion = function(): AccordionConfiguration
	return React.useContext(AccordionContext)
end

return useAccordion
