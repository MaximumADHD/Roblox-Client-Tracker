local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local BaseMenu = require(Foundation.Components.BaseMenu)
local Popover = require(Foundation.Components.Popover)
local Types = require(Foundation.Components.Types)

local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local InputSize = require(Foundation.Enums.InputSize)
local InputVariant = require(Foundation.Enums.InputVariant)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local PopoverSide = require(Foundation.Enums.PopoverSide)
local Radius = require(Foundation.Enums.Radius)
type InputVariant = InputVariant.InputVariant
type InputSize = InputSize.InputSize
type Radius = Radius.Radius

local DropdownControl = require(script.Parent.DropdownControl)
local markSelectedItem = require(script.Parent.markSelectedItem)

type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
type BaseMenuItem = BaseMenu.BaseMenuItem
type BaseMenuItems<Item> = BaseMenu.BaseMenuItems<Item>
type BaseMenuItemGroup<Item> = BaseMenu.BaseMenuItemGroup<Item>
export type LeadingAccessory = BaseMenu.LeadingAccessory
export type TrailingAccessory = BaseMenu.TrailingAccessory
export type DropdownItem = {
	-- Stable identifier for this item.
	id: ItemId,
	-- Leading icon asset or BuilderIcons name.
	icon: string?,
	-- Accessory rendered before the item text.
	leading: (string | LeadingAccessory)?,
	-- Accessory rendered after the item text.
	trailing: TrailingAccessory?,
	-- When true, the item cannot be selected.
	isDisabled: boolean?,
	-- When true, the item renders as selected.
	isChecked: boolean?,
	-- Label shown for the item.
	text: string,
}
export type DropdownItemGroup = BaseMenuItemGroup<DropdownItem>
export type DropdownItems = BaseMenuItems<DropdownItem>

export type DropdownProps = {
	-- The value of the currently selected dropdown item.
	-- If `nil`, the dropdown will be considered uncontrolled.
	value: Types.ItemId?,
	-- Text shown in the control when no value is selected.
	placeholder: string?,
	-- Menu items offered by the dropdown.
	items: DropdownItems,
	-- Called when the selected item changes.
	onItemChanged: OnItemActivated,
	-- Whether the dropdown is in an error state
	hasError: boolean?,
	-- Style variant of the dropdown
	variant: InputVariant?,
	-- Whether the dropdown is disabled
	isDisabled: boolean?,
	-- Width of the component
	width: UDim?,
	-- A label for the dropdown. To omit, set it to an empty string.
	label: string,
	-- Hint text below the control.
	hint: string?,
	-- Size of the dropdown control. Defaults to `InputSize.Medium`.
	size: InputSize?,
	-- Maximum height after which the menu starts scrolling
	maxHeight: number?,
	-- Ref to the open menu's scrolling frame. Only resolves while the menu is open and
	-- scrollable; lets callers scroll it, e.g. to the selection.
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
	-- Selection behavior applied to the open menu's popover surface (focus trap configuration).
	selection: Types.Selection?,
	-- Gamepad selection group configuration for the open menu.
	selectionGroup: Types.Bindable<boolean>? | Types.SelectionGroup?,
} & Types.SelectionProps & Types.CommonProps

local defaultProps = {
	variant = InputVariant.Standard,
	width = UDim.new(0, 400),
	size = InputSize.Medium,
	testId = "--foundation-dropdown",
}

local sideConfig = { position = PopoverSide.Bottom, offset = 5 }

local function Dropdown(dropdownProps: DropdownProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dropdownProps, defaultProps)
	local isMenuOpen, setIsMenuOpen = React.useState(false)
	local inputRef = React.useRef(nil :: GuiObject?)
	local inputInstance, setInputInstance = React.useState(nil :: GuiObject?)
	local inputRefCallback = React.useCallback(function(instance: GuiObject?)
		inputRef.current = instance
		setInputInstance(instance)
	end, {})
	React.useImperativeHandle(ref, function()
		return inputInstance
	end, { inputInstance })

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
	}, {
		DropdownControl = React.createElement(
			DropdownControl,
			withCommonProps(props, {
				variant = props.variant,
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
				inputRef = inputRefCallback,
				Selectable = props.Selectable,
				NextSelectionUp = props.NextSelectionUp,
				NextSelectionDown = props.NextSelectionDown,
				NextSelectionLeft = props.NextSelectionLeft,
				NextSelectionRight = props.NextSelectionRight,
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
				radius = Radius.Medium,
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
				radius = Radius.Medium,
				scrollingFrameRef = props.scrollingFrameRef,
				testId = `{props.testId}--menu`,
			})
		),
	})
end

return React.memo(React.forwardRef(Dropdown))
