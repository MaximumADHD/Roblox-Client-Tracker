local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Otter = require(Packages.Otter)
local React = require(Packages.React)

local ReactOtter = require(Packages.ReactOtter)

local IconName = BuilderIcons.Icon

local Divider = require(Foundation.Components.Divider)
local Icon = require(Foundation.Components.Icon)
local Text = require(Foundation.Components.Text)

local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
local usePreferences = require(Foundation.Providers.Preferences.usePreferences)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local useAccordion = require(script.Parent.Parent.useAccordion)
local useTokens = require(Foundation.Providers.Style.useTokens)

local InputPlacement = require(Foundation.Enums.InputPlacement)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
type IconVariant = BuilderIcons.IconVariant
type ItemId = Types.ItemId

local Tokens = require(Foundation.Providers.Style.Tokens)
type Tokens = Tokens.Tokens

local Flags = require(Foundation.Utility.Flags)

local useAccordionItemVariants = require(script.Parent.Parent.useAccordionItemVariants)

export type AccordionItemProps = {
	-- **DEPRECATED** BuilderIcon displayed opposite the collapse chevron
	leadingIcon: string? | {
		name: string,
		variant: IconVariant,
	}?,
	-- BuilderIcon displayed opposite the collapse chevron
	icon: string? | { name: string, variant: IconVariant }?,
	-- Text to display in the AccordionItem header
	text: string,
	-- Optional supplementary text displayed below the title
	description: string?,
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
	hasDivider = true,
	isExpanded = false,
}

local function getCommonEaseConfig(tokens: Tokens): Otter.EaseOptions
	return {
		easingStyle = tokens.Ease.StandardOut,
		duration = tokens.Time.Time_300,
	}
end

local function AccordionItem(accordionItemProps: AccordionItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(accordionItemProps, defaultProps)
	local tokens = useTokens()
	local preferences = usePreferences()
	local reducedMotionEnabled = preferences.reducedMotion
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
		if reducedMotionEnabled then
			setCurrentHeight(ReactOtter.instant(0) :: any)
			setChevronRotation(ReactOtter.instant(0) :: any)
			setIsExpanded(false)
			isClosing.current = false
			return
		end

		isClosing.current = true
		setCurrentHeight(ReactOtter.ease(0, commonEaseConfig))
		setChevronRotation(ReactOtter.ease(0, commonEaseConfig))
	end, { reducedMotionEnabled, commonEaseConfig } :: { unknown })

	local onContentSizeChange = React.useCallback(function()
		if contentRef and contentRef.current and isExpanded then
			if reducedMotionEnabled then
				setCurrentHeight(ReactOtter.instant(contentRef.current.AbsoluteSize.Y) :: any)
			else
				setCurrentHeight(ReactOtter.ease(contentRef.current.AbsoluteSize.Y, commonEaseConfig))
			end
		end
	end, { contentRef, isExpanded, reducedMotionEnabled, commonEaseConfig } :: { unknown })

	React.useEffect(function()
		if isExpanded and not props.isExpanded then
			onClose()
		else
			setIsExpanded(props.isExpanded)
		end
	end, { props.isExpanded })

	React.useEffect(function()
		if isExpanded then
			if reducedMotionEnabled then
				setChevronRotation(ReactOtter.instant(-180) :: any)
			else
				setChevronRotation(ReactOtter.ease(-180, commonEaseConfig))
			end
		end
	end, { isExpanded, reducedMotionEnabled, commonEaseConfig } :: { unknown })

	local accordionContext = useAccordion()
	local onAccordionItemActivated, itemSize = accordionContext.onAccordionItemActivated, accordionContext.itemSize
	local isContained = accordionContext.isContained
	local chevronPosition = accordionContext.chevronPosition

	local variantProps = useAccordionItemVariants(tokens, itemSize :: InputSize, isContained)
	local isChevronLeading = chevronPosition == InputPlacement.Start
	local iconLayoutOrder = if isChevronLeading then 3 else 1
	local collapseIconLayoutOrder = if isChevronLeading then 1 else 3

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

	local hasDescription = props.description ~= nil
	local title = React.createElement(Text, {
		LayoutOrder = 2,
		Text = props.text,
		tag = {
			[variantProps.text.tag] = true,
			["grow"] = not hasDescription,
			["size-full-0"] = hasDescription,
		},
		testId = `{props.testId}--title`,
	})

	local icon = if props.icon then props.icon else props.leadingIcon

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
				AutomaticSize = if hasDescription then Enum.AutomaticSize.Y else nil,
				onActivated = onActivated,
				testId = `{props.testId}--header`,
			}, {
				Icon = if Flags.FoundationAccordionBeta
					then if icon
						then React.createElement(Icon, {
							LayoutOrder = iconLayoutOrder,
							name = if type(icon) == "table" then icon.name else icon,
							variant = if type(icon) == "table" then icon.variant else nil,
							style = variantProps.icon.style,
							size = variantProps.icon.size,
							testId = `{props.testId}--leading-icon`,
						})
						else nil
					else nil,
				LeadingIcon = if Flags.FoundationAccordionBeta
					then nil
					else if icon
						then React.createElement(Icon, {
							LayoutOrder = iconLayoutOrder,
							name = if type(icon) == "table" then icon.name else icon,
							variant = if type(icon) == "table" then icon.variant else nil,
							style = variantProps.icon.style,
							size = variantProps.icon.size,
							testId = `{props.testId}--leading-icon`,
						})
						else nil,
				Title = if not hasDescription then title else nil,
				TextContainer = if hasDescription
					then React.createElement(View, {
						LayoutOrder = 2,
						tag = variantProps.textContainer.tag,
						testId = `{props.testId}--text-container`,
					}, {
						Title = title,
						Description = React.createElement(Text, {
							LayoutOrder = 3,
							Text = props.description,
							TextWrapped = false,
							TextTruncate = Enum.TextTruncate.AtEnd,
							tag = variantProps.description.tag,
							testId = `{props.testId}--description`,
						}),
					})
					else nil,
				CollapseIcon = React.createElement(View, {
					tag = "auto-xy",
					LayoutOrder = collapseIconLayoutOrder,
					testId = `{props.testId}--collapse-icon-container`,
				}, {
					Icon = React.createElement(Icon, {
						name = IconName.ChevronLargeDown,
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
