local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BaseMenu = require(Foundation.Components.BaseMenu)
local Popover = require(Foundation.Components.Popover)
local Types = require(Foundation.Components.Types)

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local Flags = require(Foundation.Utility.Flags)

local InputSize = require(Foundation.Enums.InputSize)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Radius = require(Foundation.Enums.Radius)
type InputSize = InputSize.InputSize
type Radius = Radius.Radius

local DropdownControl = require(script.Parent.DropdownControl)
local markSelectedItem = require(script.Parent.markSelectedItem)

type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
type BaseMenuItem = BaseMenu.BaseMenuItem
type BaseMenuItems<Item> = BaseMenu.BaseMenuItems<Item>
type BaseMenuItemGroup<Item> = BaseMenu.BaseMenuItemGroup<Item>
export type DropdownItem = {
	id: ItemId,
	icon: string?,
	isDisabled: boolean?,
	isChecked: boolean?,
	text: string,
}
export type DropdownItemGroup = BaseMenuItemGroup<DropdownItem>
export type DropdownItems = BaseMenuItems<DropdownItem>

export type DropdownProps = {
	-- The value of the currently selected dropdown item.
	-- If `nil`, the dropdown will be considered uncontrolled.
	value: Types.ItemId?,
	placeholder: string?,
	items: DropdownItems,
	onItemChanged: OnItemActivated,
	-- Whether the dropdown is in an error state
	hasError: boolean?,
	-- Whether the dropdown is disabled
	isDisabled: boolean?,
	-- Width of the component
	width: UDim?,
	-- A label for the dropdown. To omit, set it to an empty string.
	label: string,
	hint: string?,
	size: InputSize?,
	-- Maximum height after which the menu starts scrolling
	maxHeight: number?,
	-- Selection behavior
	selection: Types.Selection?,
	selectionGroup: Types.Bindable<boolean>? | Types.SelectionGroup?,
} & Types.CommonProps

local defaultProps = {
	width = UDim.new(0, 400),
	size = InputSize.Medium,
	testId = "--foundation-dropdown",
}

local sideConfig = { position = PopoverSide.Bottom, offset = 5 }

local function Dropdown(dropdownProps: DropdownProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dropdownProps, defaultProps)
	local isMenuOpen, setIsMenuOpen = React.useState(false)
	local inputRef = React.useRef(nil :: GuiObject?)
	-- This may cause blinking for UDim.new(1, 0) size if the menu is open from the start. Shouldn't be the case?
	local absoluteWidth, setAbsoluteWidth = React.useBinding(props.width)

	local items, selectedItem = markSelectedItem(props.items, props.value)

	local toggleIsMenuOpen = React.useCallback(function()
		setIsMenuOpen(function(oldValue)
			return not oldValue
		end)
	end, {})

	local closeMenu = React.useCallback(function()
		setIsMenuOpen(false)
	end, {})

	local onActivated = React.useCallback(function(id: ItemId)
		setIsMenuOpen(false)
		props.onItemChanged(id)
	end, { props.onItemChanged })
	-- We do the copy of props in withDefaults already, no need to make it once more.
	props.onAbsoluteSizeChanged = React.useCallback(function(frame: GuiObject)
		if dropdownProps.onAbsoluteSizeChanged then
			dropdownProps.onAbsoluteSizeChanged(frame)
		end
		setAbsoluteWidth(UDim.new(0, frame.AbsoluteSize.X))
	end, { setAbsoluteWidth, dropdownProps.onAbsoluteSizeChanged } :: { unknown })

	return React.createElement(Popover.Root, {
		isOpen = isMenuOpen,
		ref = ref,
	}, {
		DropdownControl = React.createElement(
			DropdownControl,
			withCommonProps(props, {
				onActivated = toggleIsMenuOpen,
				hasError = props.hasError,
				isDisabled = props.isDisabled,
				item = selectedItem,
				placeholder = props.placeholder,
				isMenuOpen = isMenuOpen,
				width = props.width,
				size = props.size,
				label = props.label,
				hint = props.hint,
				inputRef = inputRef,
			})
		),
		-- Use anchorRef prop instead of children so we get the correct position
		-- when the popover is above the dropdown due to screen size limitations
		Anchor = React.createElement(Popover.Anchor, {
			anchorRef = inputRef,
		}),
		Menu = React.createElement(
			Popover.Content,
			{
				hasArrow = false,
				align = PopoverAlign.End,
				side = sideConfig,
				onPressedOutside = closeMenu,
				radius = if Flags.FoundationBaseMenuBorderFix then Radius.Medium else nil,
				selection = props.selection,
				selectionGroup = props.selectionGroup,
			},
			React.createElement(BaseMenu.Root, {
				size = props.size,
				couldGrow = true,
				width = absoluteWidth,
				items = items,
				maxHeight = props.maxHeight,
				onActivated = onActivated,
				radius = if Flags.FoundationBaseMenuBorderFix then Radius.Medium else nil,
				testId = `{props.testId}--menu`,
			})
		),
	})
end

return React.memo(React.forwardRef(Dropdown))
