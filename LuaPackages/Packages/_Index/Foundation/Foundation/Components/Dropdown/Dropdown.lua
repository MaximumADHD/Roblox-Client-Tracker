local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local Types = require(Foundation.Components.Types)
local Popover = require(Foundation.Components.Popover)
local InternalMenu = require(Foundation.Components.InternalMenu)

local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local Flags = require(Foundation.Utility.Flags)

local PopoverSide = require(Foundation.Enums.PopoverSide)
local PopoverAlign = require(Foundation.Enums.PopoverAlign)
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local DropdownControl = require(script.Parent.DropdownControl)

type MenuItem = InternalMenu.MenuItem
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated

export type DropdownProps = {
	-- The value of the currently selected dropdown item.
	-- If `nil`, the dropdown will be considered uncontrolled.
	value: Types.ItemId?,
	placeholder: string?,
	items: { MenuItem },
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
} & Types.CommonProps

local defaultProps = {
	width = UDim.new(0, 400),
	size = InputSize.Medium,
}

local sideConfig = { position = PopoverSide.Bottom, offset = 5 }

local function Dropdown(dropdownProps: DropdownProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(dropdownProps, defaultProps)
	local isMenuOpen, setIsMenuOpen = React.useState(false)
	local inputRef = React.useRef(nil :: GuiObject?)
	-- This may cause blinking for UDim.new(1, 0) size if the menu is open from the start. Shouldn't be the case?
	local absoluteWidth, setAbsoluteWidth = React.useBinding(props.width)

	local selectedItem = React.useMemo(function()
		return Dash.find(props.items, function(item)
			return item.id == props.value
		end)
	end, { props.value :: any, props.items })

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

	if Flags.FoundationMenuWidthGrowth then
		-- We do the copy of props in withDefaults already, no need to make it once more.
		props.onAbsoluteSizeChanged = React.useCallback(function(frame: GuiObject)
			if dropdownProps.onAbsoluteSizeChanged then
				dropdownProps.onAbsoluteSizeChanged(frame)
			end
			setAbsoluteWidth(UDim.new(0, frame.AbsoluteSize.X))
		end, { setAbsoluteWidth :: unknown, dropdownProps.onAbsoluteSizeChanged })
	end

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
			},
			React.createElement(InternalMenu, {
				size = props.size,
				couldGrow = if Flags.FoundationMenuWidthGrowth then true else nil,
				width = if Flags.FoundationMenuWidthGrowth then absoluteWidth else props.width,
				items = Dash.map(props.items, function(item)
					return {
						id = item.id,
						icon = item.icon,
						text = item.text,
						isDisabled = item.isDisabled,
						isChecked = item.id == props.value,
					}
				end),
				onActivated = onActivated,
			})
		),
	})
end

return React.memo(React.forwardRef(Dropdown))
