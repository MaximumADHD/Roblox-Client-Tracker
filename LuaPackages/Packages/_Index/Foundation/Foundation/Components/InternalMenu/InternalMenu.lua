local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local Logger = require(Foundation.Utility.Logger)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)

local Types = require(Foundation.Components.Types)
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local MenuItem = require(script.Parent.MenuItem)

export type MenuItem = {
	id: ItemId,
	icon: string?,
	isDisabled: boolean?,
	isChecked: boolean?,
	text: string,
	onActivated: OnItemActivated?,
}

type MenuProps = {
	-- List of items to display in the menu
	items: { MenuItem },
	-- Size of the menu and its items
	size: InputSize?,
	-- Width of the component. If not specified, the menu is sized based on the content.
	width: UDim?,
	onActivated: OnItemActivated?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local MIN_WIDTH = 260
local EMPTY_ICON = ""

local SIZE_TO_PADDING: { [InputSize]: string } = {
	[InputSize.XSmall] = "padding-xsmall",
	[InputSize.Small] = "padding-small",
	[InputSize.Medium] = "padding-small",
	[InputSize.Large] = "padding-small",
}

local function Menu(menuProps: MenuProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuProps, defaultProps)

	local hasIcon = React.useMemo(function()
		for _, value in props.items do
			if value.icon ~= nil then
				return true
			end
		end
		return false
	end, { props.items })

	return React.createElement(
		View,
		withCommonProps(props, {
			Size = if props.width
				then UDim2.new(props.width, UDim.new())
				else UDim2.fromOffset(useScaledValue(MIN_WIDTH), 0),
			tag = {
				[`col gap-xxsmall {SIZE_TO_PADDING[props.size]}`] = true,
				["auto-y"] = props.width ~= nil,
				["auto-xy"] = props.width == nil,
			},
			ref = ref,
		}),
		Dash.map(props.items, function(item, index)
			local onActivated = if item.onActivated then item.onActivated else props.onActivated
			if not onActivated then
				Logger:warning("Menu should have either onActivated on itself or on all of its children")
				onActivated = function(_itemId: ItemId) end
			end
			return React.createElement(MenuItem, {
				LayoutOrder = index,
				key = item.id,
				icon = item.icon or (if hasIcon then EMPTY_ICON else nil),
				isChecked = item.isChecked,
				isDisabled = item.isDisabled,
				text = item.text,
				onActivated = onActivated :: OnItemActivated,
				size = props.size,
				id = item.id,
				testId = "--foundation-menu-item",
			})
		end)
	)
end

return React.memo(React.forwardRef(Menu))
