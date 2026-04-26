local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local ReactOtter = require(Packages.ReactOtter)

local Divider = require(Foundation.Components.Divider)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useAccordion = require(script.Parent.Parent.useAccordion)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
type IconVariant = BuilderIcons.IconVariant
type ItemId = Types.ItemId

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

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

local function getCommonEaseConfig(tokens: Tokens)
	return {
		easingStyle = tokens.Ease.StandardOut,
		duration = tokens.Time.Time_300,
		startingValue = nil, -- avoid type err
	}
end

local function AccordionItem(accordionItemProps: AccordionItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(accordionItemProps, defaultProps)
	local tokens = useTokens()
	local commonEaseConfig = React.useMemo(function()
		return getCommonEaseConfig(tokens)
	end, { tokens })

	local isExpanded, setIsExpanded = React.useState(props.isExpanded)

	local isClosing = React.useRef(false)
	local chevronRotation, setChevronRotation = ReactOtter.useAnimatedBinding(0)
	local currentHeight, setCurrentHeight = ReactOtter.useAnimatedBinding(0, function()
		if isClosing.current then
			setIsExpanded(false)
			isClosing.current = false
		end
	end)
	local contentRef = React.useRef(nil)
	local onClose = React.useCallback(function()
		isClosing.current = true
		setCurrentHeight(ReactOtter.ease(0, commonEaseConfig))
		setChevronRotation(ReactOtter.ease(0, commonEaseConfig))
	end, {})

	local onContentSizeChange = React.useCallback(function()
		if contentRef and contentRef.current and isExpanded then
			setCurrentHeight(ReactOtter.ease(contentRef.current.AbsoluteSize.Y, commonEaseConfig))
		end
	end, { contentRef, isExpanded } :: { unknown })

	React.useEffect(function()
		if isExpanded and not props.isExpanded then
			onClose()
		else
			setIsExpanded(props.isExpanded)
		end
	end, { props.isExpanded })

	React.useEffect(function()
		if isExpanded then
			setChevronRotation(ReactOtter.ease(-180, commonEaseConfig))
		end
	end, { isExpanded })

	local accordionContext = useAccordion()
	local onAccordionItemActivated, itemSize = accordionContext.onAccordionItemActivated, accordionContext.itemSize

	local variantProps = useAccordionItemVariants(tokens, itemSize :: InputSize, false)

	local defaultOnActivated = React.useCallback(function()
		if isExpanded then
			onClose()
		else
			setIsExpanded(true)
		end
	end, { isExpanded })

	local onActivated = if props.onActivated
		then props.onActivated
		else if onAccordionItemActivated
			then onAccordionItemActivated(props.id, isExpanded)
			else defaultOnActivated

	props.testId = `{accordionContext.testId}--item-{props.id}`

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
				testId = `{props.testId}--header`,
			}, {
				LeadingIcon = if props.leadingIcon
					then React.createElement(Icon, {
						LayoutOrder = 1,
						name = if type(props.leadingIcon) == "table" then props.leadingIcon.name else props.leadingIcon,
						variant = if type(props.leadingIcon) == "table" then props.leadingIcon.variant else nil,
						style = variantProps.icon.style,
						size = variantProps.icon.size,
						testId = `{props.testId}--leading-icon`,
					})
					else nil,
				Title = React.createElement(Text, {
					LayoutOrder = 2,
					Text = props.text,
					tag = variantProps.text.tag,
					testId = `{props.testId}--title`,
				}),
				CollapseIcon = React.createElement(View, {
					tag = "auto-xy",
					LayoutOrder = 3,
				}, {
					Icon = React.createElement(Icon, {
						name = "chevron-large-down",
						Rotation = chevronRotation,
						style = variantProps.icon.style,
						size = variantProps.icon.size,
						testId = `{props.testId}--collapse-icon`,
					}),
				}),
			}),
			Content = if isExpanded
				then React.createElement(View, {
					tag = "col",
					LayoutOrder = 2,
					testId = `{props.testId}--content`,
					Size = if currentHeight
						then currentHeight:map(function(height)
							return UDim2.new(1, 0, 0, height)
						end)
						else nil,
					ClipsDescendants = true,
				}, {
					AnimatedContainer = React.createElement(View, {
						tag = variantProps.content.tag,
						ref = contentRef,
						onAbsoluteSizeChanged = onContentSizeChange,
						flexItem = {
							FlexMode = Enum.UIFlexMode.None,
						},
						testId = `{props.testId}--animated-content`,
					}, {
						props.children,
					}),
				})
				else nil,
			Divider = if props.hasDivider
				then React.createElement(Divider, {
					LayoutOrder = 3,
					testId = `{props.testId}--divider`,
				})
				else nil,
		}
	)
end

return React.memo(React.forwardRef(AccordionItem))
