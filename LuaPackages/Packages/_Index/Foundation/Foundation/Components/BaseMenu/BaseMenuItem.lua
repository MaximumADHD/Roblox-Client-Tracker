local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local Logger = require(Foundation.Utility.Logger)
local React = require(Packages.React)

local Constants = require(Foundation.Constants)

local Icon = require(Foundation.Components.Icon)
local Popover = require(Foundation.Components.Popover)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local useTokens = require(Foundation.Providers.Style.useTokens)

local useBindable = require(Foundation.Utility.useBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ReactUtils = require(Packages.ReactUtils)
local useComposedRef = ReactUtils.useComposedRef

local InputSize = require(Foundation.Enums.InputSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Radius = require(Foundation.Enums.Radius)

type InputSize = InputSize.InputSize

local Flags = require(Foundation.Utility.Flags)

local Accessory = require(script.Parent.BaseMenuItemAccessory)
local BaseMenuContext = require(script.Parent.BaseMenuContext)
local BaseMenuScrollContainer = require(script.Parent.BaseMenuScrollContainer)
type ScrollContainerProps = BaseMenuScrollContainer.ScrollContainerProps
local useBaseMenuItemVariants = require(script.Parent.useBaseMenuItemVariants)
local useMenuItemHover = require(script.Parent.useMenuItemHover)

export type LeadingAccessory = Accessory.LeadingAccessory
export type TrailingAccessory = Accessory.TrailingAccessory

type LeadingAccessoryProp = string | LeadingAccessory
type TrailingAccessoryProp = TrailingAccessory

export type BaseMenuItemProps = {
	id: ItemId,
	icon: string?,
	leading: LeadingAccessoryProp?,
	trailing: TrailingAccessoryProp?,
	isChecked: boolean?,
	isDisabled: boolean?,
	text: string,
	onActivated: OnItemActivated?,
	size: InputSize?,
	children: React.ReactNode?,
	menuHasLeading: boolean?,
	menuHasCheck: boolean?,
} & Types.CommonProps

local defaultProps = {
	isChecked = false,
}

local function resolveAccessory(
	prop: (string | LeadingAccessory | TrailingAccessory)?
): LeadingAccessory | TrailingAccessory | nil
	if prop == nil then
		return nil
	end
	if type(prop) == "string" then
		return { iconName = prop }
	end
	return prop
end

-- remove when FoundationGuiObjectInputSinkProperty is cleaned up
local function getInputSinkAll()
	if not Flags.FoundationGuiObjectInputSinkProperty then
		return nil
	end

	local hasFeature, enabled = pcall(game.GetEngineFeature, game, "GuiObjectInputSink")
	if not hasFeature or not enabled then
		return nil
	end

	local ok, value = pcall(function()
		return (Enum :: any).InputSink.All
	end)

	return if ok then value else nil
end

local InputSinkAll = getInputSinkAll()

local function getContainerPadding(container: any, menuHasCheck: boolean): Types.PaddingTable
	local left = if menuHasCheck then container.paddingLeftWithCheck else container.paddingLeftWithoutCheck
	return {
		left = UDim.new(0, left or 0),
		right = UDim.new(0, container.paddingRight or 0),
	}
end

-- selene: allow(high_cyclomatic_complexity)
local function BaseMenuItem(menuItemProps: BaseMenuItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuItemProps, defaultProps)
	local context = React.useContext(BaseMenuContext)

	local alignmentHasLeading = if props.menuHasLeading ~= nil then props.menuHasLeading else context.hasLeading == true
	local menuHasCheck = if props.menuHasCheck ~= nil then props.menuHasCheck else props.isChecked == true

	local tokens = useTokens()
	local size: InputSize = props.size or context.size
	local depth = context.depth

	local isSubmenu = props.children ~= nil
	local isOpen = isSubmenu and context.hoverOpenPath[depth] == props.id

	local resolvedLeading = resolveAccessory(props.leading or props.icon)
	local resolvedTrailing = resolveAccessory(props.trailing)
	local isSubmenuScrollable = Flags.FoundationBaseMenuSubmenuMaxHeight and context.maxHeight ~= nil
	local variantProps = useBaseMenuItemVariants(tokens, size, isSubmenuScrollable)

	local itemRef = React.useRef(nil :: GuiObject?)
	local hasCheckedForContext = props.isChecked == true and not isSubmenu
	local submenuHasLeading, setSubmenuHasLeadingInternal = React.useState(false)
	local setSubmenuHasLeading = React.useCallback(function()
		setSubmenuHasLeadingInternal(true)
	end, {})

	local hasLeadingForContext = resolvedLeading ~= nil
	React.useEffect(function()
		if hasLeadingForContext and context.setHasLeading then
			context.setHasLeading()
		end
	end, { hasLeadingForContext, context.setHasLeading } :: { unknown })

	useMenuItemHover({
		itemRef = itemRef,
		id = props.id,
		depth = depth,
		isSubmenu = isSubmenu,
		isDisabled = props.isDisabled,
		hoverOpenAtDepth = context.hoverOpenAtDepth,
		hoverCloseAtDepth = context.hoverCloseAtDepth,
	})

	local onActivated = React.useCallback(
		function()
			if isSubmenu then
				if props.isDisabled then
					return
				end

				if context.hoverOpenAtDepth and not isOpen then
					context.hoverOpenAtDepth(depth, props.id, true)
				end
			else
				if context.hoverReset then
					context.hoverReset()
				end

				local callback = if props.onActivated then props.onActivated else context.onActivated

				if not callback then
					Logger:warning("Menu should have either onActivated on itself or on all of its children")
				else
					callback(props.id)
				end

				if depth > 1 and context.onNestedLeafActivated then
					context.onNestedLeafActivated()
				end
			end
		end,
		{
			isSubmenu,
			props.isDisabled,
			isOpen,
			depth,
			props.id,
			props.onActivated,
			context.onActivated,
			context.onNestedLeafActivated,
			context.hoverOpenAtDepth,
			context.hoverReset,
		} :: { unknown }
	)

	local onSubmenuPressedOutside = React.useCallback(function()
		if context.hoverReset then
			context.hoverReset()
		end
	end, { context.hoverReset })

	local submenuMaxHeight = useBindable(context.maxHeight) :: React.Binding<number?>

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Small),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local combinedRef = useComposedRef(itemRef :: React.Ref<any>, ref :: React.Ref<any>)

	local itemElement: React.ReactNode
	local containerPadding = getContainerPadding(variantProps.container, menuHasCheck)
	local containerLayout = {
		FillDirection = Enum.FillDirection.Horizontal,
		VerticalAlignment = Enum.VerticalAlignment.Center,
		Padding = UDim.new(0, 0),
		SortOrder = Enum.SortOrder.LayoutOrder,
	}
	local wrapperGap: number = (variantProps.wrapper and variantProps.wrapper.gap) or 0

	local checkNode: React.ReactNode = nil
	if menuHasCheck then
		checkNode = React.createElement(View, {
			LayoutOrder = 1,
			tag = `{variantProps.slotAlign.tag} {variantProps.check.tag}`,
			testId = `{props.testId}--check-column`,
		}, {
			Check = if hasCheckedForContext
				then React.createElement(Icon, {
					name = BuilderIcons.Icon.Check,
					style = variantProps.check.style,
					size = variantProps.check.size,
					testId = `{props.testId}--checkmark`,
				})
				else nil,
		})
	end

	local leadingNode: React.ReactNode = nil
	if resolvedLeading ~= nil then
		leadingNode = React.createElement(Accessory, {
			LayoutOrder = 1,
			accessory = resolvedLeading :: LeadingAccessory,
			iconVariant = variantProps.icon,
			size = size,
			tokens = tokens,
			testId = `{props.testId}--leading`,
		})
	elseif alignmentHasLeading then
		leadingNode = React.createElement(View, {
			LayoutOrder = 1,
			tag = `{variantProps.slotAlign.tag} {variantProps.icon.tag}`,
		})
	end

	local titleNode = React.createElement(Text, {
		LayoutOrder = 2,
		Text = props.text,
		tag = variantProps.text.tag,
	})

	local trailingNode: React.ReactNode = nil
	if isSubmenu then
		trailingNode = React.createElement(Icon, {
			LayoutOrder = 3,
			name = BuilderIcons.Icon.ChevronSmallRight,
			style = variantProps.check.style,
			size = variantProps.chevron.size,
			testId = `{props.testId}--chevron`,
		})
	elseif resolvedTrailing ~= nil then
		trailingNode = React.createElement(Accessory, {
			LayoutOrder = 3,
			accessory = resolvedTrailing :: TrailingAccessory,
			iconVariant = variantProps.icon,
			size = size,
			tokens = tokens,
			testId = `{props.testId}--trailing`,
		})
	end

	itemElement = React.createElement(
		View,
		withCommonProps(props, {
			GroupTransparency = if props.isDisabled then Constants.DISABLED_TRANSPARENCY else nil,
			isDisabled = props.isDisabled,
			onActivated = onActivated,
			selection = {
				Selectable = not props.isDisabled,
			},
			cursor = cursor,
			tag = variantProps.container.tag,
			padding = containerPadding,
			layout = containerLayout,
			ref = combinedRef,
		}),
		{
			Check = checkNode,
			Wrapper = React.createElement(View, {
				LayoutOrder = 2,
				tag = "auto-xy",
				flexItem = { FlexMode = Enum.UIFlexMode.Fill },
				layout = {
					FillDirection = Enum.FillDirection.Horizontal,
					HorizontalFlex = Enum.UIFlexAlignment.SpaceBetween,
					VerticalAlignment = Enum.VerticalAlignment.Center,
					Padding = UDim.new(0, wrapperGap),
					SortOrder = Enum.SortOrder.LayoutOrder,
				},
			}, {
				Leading = leadingNode,
				Title = titleNode,
				Trailing = trailingNode,
			}),
		}
	)

	local submenuContextValue = if Flags.FoundationStableContextValues
		then React.useMemo(
			function()
				return {
					onActivated = context.onActivated,
					onNestedLeafActivated = context.onNestedLeafActivated,
					size = size,
					hasLeading = submenuHasLeading,
					setHasLeading = setSubmenuHasLeading,
					hoverOpenPath = context.hoverOpenPath,
					hoverOpenAtDepth = context.hoverOpenAtDepth,
					hoverCloseAtDepth = context.hoverCloseAtDepth,
					hoverReset = context.hoverReset,
					depth = depth + 1,
					maxHeight = context.maxHeight,
				}
			end,
			{
				context.onActivated,
				context.onNestedLeafActivated,
				size,
				submenuHasLeading,
				context.hoverOpenPath,
				context.hoverOpenAtDepth,
				context.hoverCloseAtDepth,
				context.hoverReset,
				depth,
				context.maxHeight,
			} :: { unknown }
		)
		else nil

	if not isSubmenu then
		return itemElement
	end

	local strokeThickness = tokens.Stroke.Standard
	local groupPadding = variantProps.groupPadding.size

	local submenuInner = React.createElement(BaseMenuContext.Provider, {
		value = if Flags.FoundationStableContextValues
			then submenuContextValue
			else {
				onActivated = context.onActivated,
				onNestedLeafActivated = context.onNestedLeafActivated,
				size = size,
				hasLeading = submenuHasLeading,
				setHasLeading = setSubmenuHasLeading,
				hoverOpenPath = context.hoverOpenPath,
				hoverOpenAtDepth = context.hoverOpenAtDepth,
				hoverCloseAtDepth = context.hoverCloseAtDepth,
				hoverReset = context.hoverReset,
				depth = depth + 1,
				maxHeight = context.maxHeight,
			},
	}, props.children)

	local submenuContent = if isSubmenuScrollable
		then React.createElement(BaseMenuScrollContainer, {
			maxHeight = submenuMaxHeight,
			scrollViewProps = {
				tag = variantProps.submenuContent.tag,
				InputSink = InputSinkAll,
			} :: ScrollContainerProps,
		}, submenuInner)
		else React.createElement(View, {
			tag = variantProps.submenuContent.tag,
			InputSink = InputSinkAll,
		}, submenuInner)

	return React.createElement(React.Fragment, nil, {
		Item = itemElement,
		Submenu = React.createElement(Popover.Root, {
			isOpen = isOpen,
			testId = `{props.testId}--submenu`,
		}, {
			Anchor = React.createElement(Popover.Anchor, {
				anchorRef = itemRef,
			}),
			Content = React.createElement(Popover.Content, {
				side = {
					position = PopoverSide.Right,
					offset = groupPadding / 2 + strokeThickness,
				},
				align = {
					position = PopoverAlign.Start,
					offset = -groupPadding,
				},
				hasArrow = false,
				onPressedOutside = onSubmenuPressedOutside,
				backgroundStyle = tokens.Color.Surface.Surface_200,
				radius = Radius.Medium,
			}, submenuContent),
		}),
	})
end

return React.memo(React.forwardRef(BaseMenuItem))
