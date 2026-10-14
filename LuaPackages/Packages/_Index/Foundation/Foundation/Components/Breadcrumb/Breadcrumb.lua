local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local BuilderIcons = require(Packages.BuilderIcons)
local React = require(Packages.React)

local IconName = BuilderIcons.Icon

local ButtonVariant = require(Foundation.Enums.ButtonVariant)

local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local LinkVariant = require(Foundation.Enums.LinkVariant)

local Icon = require(Foundation.Components.Icon)
local IconButton = require(Foundation.Components.IconButton)
local Link = require(Foundation.Components.Link)
local Menu = require(Foundation.Components.Menu)
local Text = require(Foundation.Components.Text)
local Types = require(Foundation.Components.Types)
local View = require(Foundation.Components.View)
type MenuItem = Menu.MenuItem

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local BreadcrumbAccessory = require(script.Parent.BreadcrumbAccessory)
type BreadcrumbAccessory = BreadcrumbAccessory.BreadcrumbAccessory

local useBreadcrumbVariants = require(script.Parent.useBreadcrumbVariants)
type BreadcrumbVariantProps = useBreadcrumbVariants.BreadcrumbVariantProps
local useTokens = require(Foundation.Providers.Style.useTokens)

local MAX_ITEMS = 4
local SEPARATOR = "/"

export type BreadcrumbItem = {
	text: string,
	onActivated: (() -> ())?,
	leading: (string | BreadcrumbAccessory)?,
	ref: React.Ref<GuiObject>?,
	testId: string?,

	-- DEPRECATED
	trailing: (string | BreadcrumbAccessory)?,
}

export type BreadcrumbProps = {
	items: { BreadcrumbItem },
	size: InputSize?,
	onDropdownActivated: (() -> ())?,

	-- DEPRECATED
	separator: string?,
	maxItems: number?,
	itemsBeforeCollapse: number?,
	itemsAfterCollapse: number?,
} & Types.CommonProps

type Entry = { item: BreadcrumbItem?, index: number?, overflow: boolean? }

local defaultProps = {
	size = InputSize.Medium,
	testId = "--foundation-breadcrumb",
}

type BreadcrumbItemProps = {
	item: BreadcrumbItem,
	isCurrent: boolean,
	hasDropdown: boolean,
	onDropdownActivated: (() -> ())?,
	size: InputSize,
	variantProps: BreadcrumbVariantProps,
	LayoutOrder: number,
	testId: string,
}

local function BreadcrumbItem(props: BreadcrumbItemProps)
	local item = props.item
	local variantProps = props.variantProps
	local testId = props.testId

	local text: React.ReactNode
	if props.isCurrent or item.onActivated == nil then
		text = React.createElement(Text, {
			Text = item.text,
			tag = if props.isCurrent then variantProps.current.tag else variantProps.label.tag,
			LayoutOrder = 1,
			testId = `{testId}--text`,
		})
	else
		text = React.createElement(Link, {
			text = item.text,
			onActivated = item.onActivated,
			variant = LinkVariant.Standard,
			size = props.size,
			hasUnderline = false,
			LayoutOrder = 1,
			testId = `{testId}--link`,
		})
	end

	return React.createElement(View, {
		tag = variantProps.item.tag,
		ref = item.ref,
		onActivated = if props.hasDropdown then props.onDropdownActivated else nil,
		LayoutOrder = props.LayoutOrder,
		testId = testId,
	}, {
		Leading = if item.leading ~= nil
			then React.createElement(BreadcrumbAccessory, {
				config = item.leading,
				variant = variantProps.accessory,
				LayoutOrder = 1,
				testId = `{testId}--leading`,
			})
			else nil,
		ItemText = React.createElement(View, {
			tag = variantProps.itemText.tag,
			LayoutOrder = 2,
		}, {
			Text = text,
			Chevron = if props.hasDropdown
				then React.createElement(Icon, {
					name = IconName.ChevronLargeDown,
					size = variantProps.accessory.iconSize,
					style = variantProps.accessory.style,
					LayoutOrder = 2,
					testId = `{testId}--chevron`,
				})
				else nil,
		}),
	})
end

local function Breadcrumb(breadcrumbProps: BreadcrumbProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(breadcrumbProps, defaultProps)
	local tokens = useTokens()
	local variantProps = useBreadcrumbVariants(tokens, props.size)

	local count = #props.items
	local isCollapsed = count > MAX_ITEMS
	local overflowRef = React.useRef(nil :: GuiObject?)
	local isMenuOpen, setIsMenuOpen = React.useState(false)

	React.useEffect(function()
		if not isCollapsed then
			setIsMenuOpen(false)
		end
	end, { isCollapsed })

	local toggleMenu = React.useCallback(function()
		setIsMenuOpen(function(isOpen)
			return not isOpen
		end)
	end, {})
	local closeMenu = React.useCallback(function()
		setIsMenuOpen(false)
	end, {})

	local onMenuItemActivated = React.useCallback(function(id: Types.ItemId)
		setIsMenuOpen(false)
		local item = props.items[id :: number]
		if item and item.onActivated then
			item.onActivated()
		end
	end, { props.items })

	local entries = React.useMemo(function(): { Entry }
		if isCollapsed then
			return {
				{ item = props.items[1], index = 1 },
				{ overflow = true },
				{ item = props.items[count], index = count },
			}
		end
		local result: { Entry } = {}
		for index, item in props.items do
			table.insert(result, { item = item, index = index })
		end
		return result
	end, { props.items, count, isCollapsed } :: { unknown })

	local menuItems = React.useMemo(function(): { MenuItem }
		local result: { MenuItem } = {}
		if isCollapsed then
			for index = 2, count - 1 do
				local item = props.items[index]
				table.insert(result, {
					id = index,
					text = item.text,
					isDisabled = item.onActivated == nil,
				})
			end
		end
		return result
	end, { props.items, count, isCollapsed } :: { unknown })

	local children: { [string]: React.ReactNode } = {}
	for i, entry in entries do
		if entry.overflow then
			children.Overflow = React.createElement(IconButton, {
				icon = IconName.ThreeDotsHorizontal,
				onActivated = toggleMenu,
				ref = overflowRef,
				size = variantProps.overflow.size,
				variant = ButtonVariant.Standard,
				LayoutOrder = 2 * i - 1,
				testId = `{props.testId}--overflow`,
			})
		else
			local item = entry.item :: BreadcrumbItem
			local index = entry.index :: number
			local isCurrent = index == count
			children[`Item{index}`] = React.createElement(BreadcrumbItem, {
				item = item,
				isCurrent = isCurrent,
				hasDropdown = isCurrent and props.onDropdownActivated ~= nil,
				onDropdownActivated = if isCurrent then props.onDropdownActivated else nil,
				size = props.size,
				variantProps = variantProps,
				LayoutOrder = 2 * i - 1,
				testId = item.testId or `{props.testId}--item-{index}`,
			})
		end

		if i ~= #entries then
			local sepKey = if entry.overflow then "overflow" else entry.index
			children[`Separator{sepKey}`] = React.createElement(View, {
				tag = variantProps.separator.tag,
				LayoutOrder = 2 * i,
				testId = `{props.testId}--separator-{sepKey}`,
			}, {
				Slash = React.createElement(Text, {
					Text = SEPARATOR,
					tag = variantProps.separator.textTag,
					LayoutOrder = 1,
					testId = `{props.testId}--separator-{sepKey}--text`,
				}),
			})
		end
	end

	if isCollapsed then
		children.OverflowMenu = React.createElement(Menu, {
			isOpen = isMenuOpen,
			items = menuItems,
			size = props.size,
			anchorRef = overflowRef,
			onActivated = onMenuItemActivated,
			onPressedOutside = closeMenu,
			LayoutOrder = 2 * #entries,
			testId = `{props.testId}--overflow-menu`,
		})
	end

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = variantProps.container.tag,
			ref = ref,
		}),
		children
	)
end

return React.memo(React.forwardRef(Breadcrumb))
