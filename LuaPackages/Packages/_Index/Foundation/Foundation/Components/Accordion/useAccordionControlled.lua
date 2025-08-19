local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local InputSize = require(Foundation.Enums.InputSize)

local AccordionControlledContext = require(script.Parent.AccordionControlledContext)

type InputSize = InputSize.InputSize
type ItemId = Types.ItemId

export type onAccordionItemActivated = (id: ItemId, isExpanded: boolean?) -> () -> () | nil

export type AccordionControlled = {
	onAccordionItemActivated: onAccordionItemActivated,
	itemSize: InputSize,
}

local useControlledAccordion = function(): AccordionControlled
	return React.useContext(AccordionControlledContext)
end

return useControlledAccordion
