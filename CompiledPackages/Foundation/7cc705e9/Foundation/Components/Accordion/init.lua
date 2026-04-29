local AccordionItem = require(script.Item)
local AccordionRoot = require(script.Accordion)

local Accordion = {
	Root = AccordionRoot,
	Item = AccordionItem,
}

export type AccordionProps = AccordionRoot.AccordionProps
export type AccordionItemProps = AccordionItem.AccordionItemProps

return Accordion
