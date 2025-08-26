local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local BuilderIcons = require(Packages.BuilderIcons)

local Divider = require(Foundation.Components.Divider)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local useTokens = require(Foundation.Providers.Style.useTokens)
local useAccordionControlled = require(script.Parent.Parent.useAccordionControlled)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
type IconVariant = BuilderIcons.IconVariant
type ItemId = Types.ItemId

local useAccordionItemVariants = require(script.Parent.Parent.useAccordionItemVariants)

export type AccordionItemProps = {
	-- leading BuilderIcon and it's variant
	leadingIcon: string? | {
		name: string,
		variant: IconVariant,
	}?,
	-- Text to display in the AccordionItem header
	text: string,
	-- isContained: boolean?,
	-- Determine if the AccordionItem has a divider at its bottom
	hasDivider: boolean?,
	-- onActivated function that takes precedence over the default and onAccordionItemActivated passed by parent Accordion
	onActivated: (() -> nil)?,
	-- id to distinguish the AccordionItem instance
	id: ItemId,
	-- isExpanded to control expansion
	isExpanded: boolean?,
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps = {
	-- isContained = false,
	hasDivider = true,
	isExpanded = false,
}

local function AccordionItem(accordionItemProps: AccordionItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(accordionItemProps, defaultProps)
	local tokens = useTokens()

	local isExpanded, setIsExpanded = React.useState(props.isExpanded)

	React.useEffect(function()
		setIsExpanded(props.isExpanded)
	end, { props.isExpanded })

	local controlledAccordionContext = useAccordionControlled()
	local onAccordionItemActivated, itemSize =
		controlledAccordionContext.onAccordionItemActivated, controlledAccordionContext.itemSize

	local variantProps = useAccordionItemVariants(tokens, itemSize :: InputSize, false)

	local defaultOnActivated = React.useCallback(function()
		setIsExpanded(not isExpanded)
	end, { isExpanded })

	local onActivated = if props.onActivated
		then props.onActivated
		else if onAccordionItemActivated
			then onAccordionItemActivated(props.id, isExpanded)
			else defaultOnActivated

	props.testId = `--foundation-accordion-item-{props.id}`

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			AutomaticSize = Enum.AutomaticSize.Y,
			stateLayer = variantProps.container.stateLayer,
			ref = ref,
		}),
		{
			Header = React.createElement(View, {
				LayoutOrder = 1,
				tag = variantProps.header.tag,
				onActivated = onActivated,
			}, {
				LeadingIcon = if props.leadingIcon
					then React.createElement(Icon, {
						LayoutOrder = 1,
						name = if type(props.leadingIcon) == "table" then props.leadingIcon.name else props.leadingIcon,
						variant = if type(props.leadingIcon) == "table" then props.leadingIcon.variant else nil,
						style = variantProps.icon.style,
						size = variantProps.icon.size,
					})
					else nil,
				Title = React.createElement(Text, {
					LayoutOrder = 2,
					Text = props.text,
					tag = variantProps.text.tag,
				}),
				CollapseIcon = React.createElement(Icon, {
					LayoutOrder = 3,
					name = if isExpanded then "chevron-large-up" else "chevron-large-down",
					style = variantProps.icon.style,
					size = variantProps.icon.size,
				}),
			}),
			Content = if isExpanded
				then React.createElement(View, {
					tag = variantProps.content.tag,
					LayoutOrder = 2,
				}, {
					props.children,
				})
				else nil,
			Divider = if props.hasDivider
				then React.createElement(Divider, {
					LayoutOrder = 3,
					testId = "--foundation-accordion-item-divider",
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(AccordionItem))
