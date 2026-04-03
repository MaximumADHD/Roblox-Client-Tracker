local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)
local iconMigrationUtils = require(Foundation.Utility.iconMigrationUtils)
local isBuilderIconOrMigrated = iconMigrationUtils.isBuilderOrMigratedIcon
local Logger = require(Foundation.Utility.Logger)

local Constants = require(Foundation.Constants)

local Icon = require(Foundation.Components.Icon)
local Image = require(Foundation.Components.Image)
local Popover = require(Foundation.Components.Popover)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

local useTokens = require(Foundation.Providers.Style.useTokens)

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

local BaseMenuContext = require(script.Parent.BaseMenuContext)
local useBaseMenuItemVariants = require(script.Parent.useBaseMenuItemVariants)
local useMenuItemHover = require(script.Parent.useMenuItemHover)

export type BaseMenuItemProps = {
	id: ItemId,
	icon: string?,
	isChecked: boolean?,
	isDisabled: boolean?,
	text: string,
	onActivated: OnItemActivated?,
	size: InputSize?,
	children: React.ReactNode?,
} & Types.CommonProps

local defaultProps = {
	isChecked = false,
}

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

local function BaseMenuItem(menuItemProps: BaseMenuItemProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuItemProps, defaultProps)
	local context = React.useContext(BaseMenuContext)
	local hasLeading = context.hasLeading
	local tokens = useTokens()
	local size: InputSize = props.size or context.size
	local depth = context.depth

	local isSubmenu = Flags.FoundationBaseMenuSubmenuSupport and props.children ~= nil
	local isOpen = isSubmenu and context.hoverOpenPath[depth] == props.id

	local variantProps = useBaseMenuItemVariants(tokens, size, if isSubmenu then false else props.isChecked)

	local itemRef = React.useRef(nil :: GuiObject?)

	local submenuHasLeading, setSubmenuHasLeadingInternal, setSubmenuHasLeading

	if Flags.FoundationBaseMenuSubmenuSupport then
		submenuHasLeading, setSubmenuHasLeadingInternal = React.useState(false)
		setSubmenuHasLeading = React.useCallback(function()
			setSubmenuHasLeadingInternal(true)
		end, {})
	end

	React.useEffect(function()
		if props.icon and context.setHasLeading then
			context.setHasLeading()
		end
	end, { props.icon, context.setHasLeading } :: { unknown })

	if Flags.FoundationBaseMenuSubmenuSupport then
		useMenuItemHover({
			itemRef = itemRef,
			id = props.id,
			depth = depth,
			isSubmenu = isSubmenu,
			isDisabled = props.isDisabled,
			hoverOpenAtDepth = context.hoverOpenAtDepth,
			hoverCloseAtDepth = context.hoverCloseAtDepth,
		})
	end

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
				if Flags.FoundationBaseMenuSubmenuSupport and context.hoverReset then
					context.hoverReset()
				end

				local callback = if props.onActivated then props.onActivated else context.onActivated

				if not callback then
					Logger:warning("Menu should have either onActivated on itself or on all of its children")
				else
					callback(props.id)
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
			context.hoverOpenAtDepth,
			context.hoverReset,
		} :: { unknown }
	)

	local onSubmenuPressedOutside
	if Flags.FoundationBaseMenuSubmenuSupport then
		onSubmenuPressedOutside = React.useCallback(function()
			if context.hoverReset then
				context.hoverReset()
			end
		end, { context.hoverReset })
	end

	local cursor = React.useMemo(function()
		return {
			radius = UDim.new(0, tokens.Radius.Small),
			offset = tokens.Size.Size_200,
			borderWidth = tokens.Stroke.Thicker,
		}
	end, { tokens })

	local migratedIcon = React.useMemo(function()
		return BuilderIcons.Migration["uiblox"][props.icon]
	end, { props.icon })

	local combinedRef = useComposedRef(itemRef :: React.Ref<any>, ref :: React.Ref<any>)

	local itemElement = React.createElement(
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
			ref = if Flags.FoundationBaseMenuSubmenuSupport then combinedRef else ref,
		}),
		{
			Icon = if props.icon or hasLeading
				then if props.icon and isBuilderIconOrMigrated(props.icon)
					then React.createElement(View, {
						LayoutOrder = 1,
						tag = `align-x-center align-y-center {variantProps.icon.tag}`,
					}, {
						Icon = React.createElement(Icon, {
							name = if migratedIcon then migratedIcon.name else props.icon,
							style = variantProps.icon.style,
							size = variantProps.icon.size,
						}),
					})
					else React.createElement(Image, {
						LayoutOrder = 1,
						Image = props.icon :: string,
						tag = variantProps.icon.tag,
					})
				else nil,
			Text = React.createElement(Text, {
				LayoutOrder = 2,
				Text = props.text,
				tag = variantProps.text.tag,
			}),
			Chevron = if isSubmenu
				then React.createElement(Icon, {
					LayoutOrder = 3,
					name = BuilderIcons.Icon.ChevronSmallRight,
					style = variantProps.check.style,
					size = variantProps.chevron.size,
					testId = `{props.testId}--chevron`,
				})
				else nil,
			Check = if not isSubmenu and props.isChecked
				then React.createElement(Icon, {
					LayoutOrder = 3,
					name = BuilderIcons.Icon.Check,
					style = variantProps.check.style,
					size = variantProps.check.size,
					testId = `{props.testId}--checkmark`,
				})
				else nil,
		}
	)

	if not isSubmenu then
		return itemElement
	end

	local strokeThickness = tokens.Stroke.Standard
	local groupPadding = variantProps.groupPadding.size

	return React.createElement(React.Fragment, nil, {
		Item = itemElement,
		Submenu = React.createElement(Popover.Root, {
			isOpen = isOpen,
			testId = `{props.testId}--submenu`,
		}, {
			Anchor = React.createElement(Popover.Anchor, {
				anchorRef = itemRef,
			}),
			Content = React.createElement(
				Popover.Content,
				{
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
					backgroundStyle = tokens.Color.Surface.Surface_100,
					radius = Radius.Medium,
				},
				React.createElement(
					View,
					{
						tag = "col auto-xy stroke-standard stroke-default radius-medium",
						InputSink = InputSinkAll,
					},
					React.createElement(BaseMenuContext.Provider, {
						value = {
							onActivated = context.onActivated,
							size = size,
							hasLeading = submenuHasLeading,
							setHasLeading = setSubmenuHasLeading,
							hoverOpenPath = context.hoverOpenPath,
							hoverOpenAtDepth = context.hoverOpenAtDepth,
							hoverCloseAtDepth = context.hoverCloseAtDepth,
							hoverReset = context.hoverReset,
							depth = depth + 1,
						},
					}, props.children)
				)
			),
		}),
	})
end

return React.memo(React.forwardRef(BaseMenuItem))
