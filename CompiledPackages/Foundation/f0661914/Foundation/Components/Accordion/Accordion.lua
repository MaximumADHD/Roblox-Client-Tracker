local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local AccordionContext = require(script.Parent.AccordionContext)
local useAccordion = require(script.Parent.useAccordion)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
type ItemId = Types.ItemId
type onAccordionItemActivated = useAccordion.onAccordionItemActivated

export type AccordionProps = {
	-- width of the Accordion and it's items
	width: UDim?,
	-- activation function for children AccordionItems based on their id
	onActivated: onAccordionItemActivated?,
	-- size to pass to children
	size: InputSize?,
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	width = UDim.new(1, 0),
	testId = "--foundation-accordion",
}

local function Accordion(accordionProps: AccordionProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(accordionProps, defaultProps)

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = "col flex-y-evenly auto-y",
			Size = UDim2.new(props.width, UDim.new(0, 0)),
			ref = ref,
		}),
		{
			AccordionContext = React.createElement(AccordionContext.Provider, {
				value = {
					onAccordionItemActivated = props.onActivated,
					itemSize = props.size,
					testId = props.testId,
				},
			}, props.children),
		}
	)
end

return React.memo(React.forwardRef(Accordion))
