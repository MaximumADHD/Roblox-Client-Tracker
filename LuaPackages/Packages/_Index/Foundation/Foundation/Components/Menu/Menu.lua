local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Types = require(Foundation.Components.Types)
local Popover = require(Foundation.Components.Popover)
local BaseMenu = require(Foundation.Components.BaseMenu)
local useTokens = require(Foundation.Providers.Style.useTokens)
local Flags = require(Foundation.Utility.Flags)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local InputSize = require(Foundation.Enums.InputSize)
local Radius = require(Foundation.Enums.Radius)

type InputSize = InputSize.InputSize
type PopoverSide = PopoverSide.PopoverSide
type PopoverAlign = PopoverAlign.PopoverAlign
type OnItemActivated = Types.OnItemActivated
type PopoverAnchor = Types.PopoverAnchor

-- Such a complex export is due to our export types checker imperfections
type BaseMenuItem = BaseMenu.BaseMenuItem
type BaseMenuItems = BaseMenu.BaseMenuItems
export type MenuItem = BaseMenuItem
export type MenuItems = BaseMenuItems

export type MenuProps = {
	-- Whether the menu is open
	isOpen: boolean,
	-- List of items to display in the menu
	items: MenuItems,
	-- Size of the menu and its items
	size: InputSize?,
	-- Width of the component. If not specified, the menu is sized based on the content.
	width: UDim?,
	-- The side the popover should be anchored to
	side: PopoverSide?,
	-- The alignment of the popover relative to the anchor
	align: PopoverAlign?,
	-- Callback for when the backdrop is pressed
	onPressedOutside: (() -> ())?,
	-- Callback for when a menu item is activated.
	-- Should be defined either for the whole Menu, or separately for all the MenuItems
	onActivated: OnItemActivated?,
	-- Reference to the element that will serve as an anchor
	anchorRef: React.Ref<PopoverAnchor>?,
	-- Children to render as the anchor
	children: React.ReactNode?,
	-- Selection behavior
	selection: Types.Selection?,
	selectionGroup: Types.Bindable<boolean>? | Types.SelectionGroup?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
	side = PopoverSide.Bottom,
	align = PopoverAlign.Start,
	testId = "--foundation-menu",
}

local function Menu(menuProps: MenuProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuProps, defaultProps)
	local tokens = useTokens()
	local strokeThickness = tokens.Stroke.Standard

	return React.createElement(Popover.Root, {
		isOpen = props.isOpen,
		testId = props.testId,
	}, {
		Anchor = React.createElement(
			Popover.Anchor,
			withCommonProps(props, { anchorRef = props.anchorRef }),
			if props.anchorRef then nil else props.children
		),
		Content = React.createElement(
			Popover.Content,
			{
				side = {
					position = props.side,
					offset = strokeThickness + tokens.Padding.Small,
				},
				align = props.align,
				hasArrow = false,
				onPressedOutside = props.onPressedOutside,
				backgroundStyle = tokens.Color.Surface.Surface_100,
				radius = if Flags.FoundationBaseMenuBorderFix then Radius.Medium else nil,
				ref = ref,
				selection = props.selection,
				selectionGroup = props.selectionGroup,
			},
			React.createElement(React.Fragment, nil, {
				Menu = React.createElement(BaseMenu.Root, {
					items = props.items,
					size = props.size,
					width = props.width,
					onActivated = props.onActivated,
					radius = if Flags.FoundationBaseMenuBorderFix then Radius.Medium else nil,
				}),
				Border = if Flags.FoundationBaseMenuBorderFix
					then nil
					else React.createElement("UIStroke", {
						Color = tokens.Color.Stroke.Default.Color3,
						Transparency = tokens.Color.Stroke.Default.Transparency,
						Thickness = strokeThickness,
					}),
			})
		),
	})
end

return React.memo(React.forwardRef(Menu))
