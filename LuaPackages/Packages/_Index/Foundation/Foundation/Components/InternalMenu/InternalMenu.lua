local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)
local Dash = require(Packages.Dash)

local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local Flags = require(Foundation.Utility.Flags)
local Logger = require(Foundation.Utility.Logger)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useBindable = require(Foundation.Utility.useBindable)

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local MenuItem = require(script.Parent.MenuItem)
local MenuTitleItem = require(script.Parent.MenuTitleItem)
local MenuDividerItem = require(script.Parent.MenuDividerItem)

export type MenuItem = {
	id: ItemId,
	icon: string?,
	isDisabled: boolean?,
	isChecked: boolean?,
	text: string,
	onActivated: OnItemActivated?,
}

export type MenuItemGroup = {
	title: string?,
	items: { MenuItem },
}

export type MenuItems = { MenuItem } | { MenuItemGroup }

type MenuProps = {
	-- List of items to display in the menu
	items: MenuItems,
	-- Size of the menu and its items
	size: InputSize?,
	-- Width of the component. If not specified, the menu is sized based on the content.
	width: Bindable<UDim?>,
	onActivated: OnItemActivated?,
	-- Makes menu to use the provided width as a minimum width and use autosize instead to grow until the max width.
	-- If the provided width is bigger than the max width of the menu menu will have the width provided.
	-- If used with relative width, e.g. UDim.new(0.5, 0), the constraints always kick in.
	couldGrow: boolean?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local MIN_WIDTH = 260
local MAX_WIDTH = 320
local EMPTY_ICON = ""

local SIZE_TO_PADDING: { [InputSize]: string } = {
	[InputSize.XSmall] = "padding-xsmall",
	[InputSize.Small] = "padding-small",
	[InputSize.Medium] = "padding-small",
	[InputSize.Large] = "padding-small",
}

local function Menu(menuProps: MenuProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(menuProps, defaultProps)
	local width = useBindable(props.width) :: React.Binding<UDim?>
	local scaledMinWidth = useScaledValue(MIN_WIDTH)
	local scaledMaxWidth = useScaledValue(MAX_WIDTH)
	local items: { MenuItemGroup } = React.useMemo(function()
		if Dash.get(props.items :: { MenuItemGroup }, { 1, "items" }) then
			return props.items :: { MenuItemGroup }
		else
			return { { items = props.items :: { MenuItem } } }
		end
	end, { props.items })

	local hasIcon = React.useMemo(function()
		for _, group in items do
			for _, value in group.items do
				if value.icon ~= nil then
					return true
				end
			end
		end
		return false
	end, { items })

	-- If the width is provided use it as the minimal width, the user knows better.
	local minWidth = React.useMemo(function()
		return width:map(function(widthValue: UDim?)
			-- When the width provided is UDim.new(1, 0) we have no min width, which is fine.
			return if widthValue then widthValue.Offset else scaledMinWidth
		end)
	end, { width :: unknown, scaledMinWidth })

	local autoSize = React.useMemo(function()
		return width:map(function(widthValue: UDim?)
			return not widthValue or (props.couldGrow and widthValue.Offset < scaledMaxWidth)
		end)
	end, { width :: unknown, scaledMaxWidth, props.couldGrow })

	local sizeConstraint = React.useMemo(function()
		return {
			MinSize = React.joinBindings({ autoSize, minWidth }):map(function(values)
				local autoSizeValue = values[1]
				local minWidthValue = values[2]
				return if autoSizeValue then Vector2.new(minWidthValue, 0) else nil
			end),
			MaxSize = autoSize:map(function(autoSizeValue)
				return if autoSizeValue then Vector2.new(scaledMaxWidth, math.huge) else nil
			end),
		}
	end, { autoSize :: unknown, minWidth, scaledMaxWidth })

	return React.createElement(
		View,
		withCommonProps(props, {
			tag = `col`,
			AutomaticSize = if Flags.FoundationMenuWidthGrowth
				then autoSize:map(function(autoSizeValue): Enum.AutomaticSize
					return if autoSizeValue then Enum.AutomaticSize.XY else Enum.AutomaticSize.Y
				end)
				else width:map(function(widthValue): Enum.AutomaticSize
					return if widthValue then Enum.AutomaticSize.Y else Enum.AutomaticSize.XY
				end),
			Size = if Flags.FoundationMenuWidthGrowth
				then React.joinBindings({ autoSize, width }):map(function(values): UDim2?
					local autoSizeValue = values[1]
					local widthValue = values[2]
					return if autoSizeValue then nil else UDim2.new(widthValue, UDim.new())
				end)
				else width:map(function(widthValue: UDim?): UDim2?
					return if widthValue then UDim2.new(widthValue, UDim.new()) else UDim2.fromOffset(scaledMinWidth, 0)
				end),
			ref = ref,
			sizeConstraint = if Flags.FoundationMenuWidthGrowth then sizeConstraint else nil,
		}),
		Dash.map(items, function(group, groupIndex)
			return React.createElement(React.Fragment, { key = groupIndex }, {
				Divider = if groupIndex ~= 1
					then React.createElement(MenuDividerItem, { LayoutOrder = groupIndex * 2 - 1 })
					else nil,
				Group = React.createElement(View, {
					LayoutOrder = groupIndex * 2,
					tag = `auto-y size-full-0 col gap-xxsmall {SIZE_TO_PADDING[props.size]}`,
				}, {
					Title = if group.title
						then React.createElement(MenuTitleItem, { text = group.title, size = props.size })
						else nil,
					Items = React.createElement(
						React.Fragment,
						nil,
						Dash.map(group.items, function(item, index)
							local onActivated = if item.onActivated then item.onActivated else props.onActivated
							if not onActivated then
								Logger:warning(
									"Menu should have either onActivated on itself or on all of its children"
								)
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
					),
				}),
			})
		end)
	)
end

return React.memo(React.forwardRef(Menu))
