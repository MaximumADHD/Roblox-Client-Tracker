local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local Flags = require(Foundation.Utility.Flags)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useBindable = require(Foundation.Utility.useBindable)

local ControlState = require(Foundation.Enums.ControlState)
type ControlState = ControlState.ControlState

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize

local BaseMenuContext = require(script.Parent.BaseMenuContext)

local DeclarativeBaseMenuContent = require(script.Parent.DeclarativeBaseMenuContent)

export type BaseMenuItem = DeclarativeBaseMenuContent.BaseMenuItem
export type BaseMenuItems = DeclarativeBaseMenuContent.BaseMenuItems
export type BaseMenuItemGroup = DeclarativeBaseMenuContent.BaseMenuItemGroup

export type BaseMenuProps = {
	-- List of items to display in the menu
	items: BaseMenuItems?,
	-- Size of the menu and its items
	size: InputSize?,
	-- Width of the component. If not specified, the menu is sized based on the content.
	width: Bindable<UDim?>,
	onActivated: OnItemActivated?,
	-- Makes menu to use the provided width as a minimum width and use autosize instead to grow until the max width.
	-- If the provided width is bigger than the max width of the menu menu will have the width provided.
	-- If used with relative width, e.g. UDim.new(0.5, 0), the constraints always kick in.
	couldGrow: boolean?,
	children: React.ReactNode,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local MIN_WIDTH = 260
local MAX_WIDTH = 320

local function BaseMenu(baseMenuProps: BaseMenuProps, ref: React.Ref<GuiObject>?)
	local props = withDefaults(baseMenuProps, defaultProps)
	local width = useBindable(props.width) :: React.Binding<UDim?>
	local scaledMinWidth = useScaledValue(MIN_WIDTH)
	local scaledMaxWidth = useScaledValue(MAX_WIDTH)
	local hasLeading, internalSetHasLeading = React.useState(false)

	local setHasLeading = React.useCallback(function()
		internalSetHasLeading(true)
	end, {})

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

	local children = props.children
	if not children and props.items then
		children = React.createElement(DeclarativeBaseMenuContent, {
			items = props.items,
			size = props.size,
		})
	end

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
		React.createElement(BaseMenuContext.Provider, {
			value = {
				onActivated = props.onActivated,
				size = props.size,
				hasLeading = hasLeading,
				setHasLeading = setHasLeading,
			},
		}, children)
	)
end

return React.memo(React.forwardRef(BaseMenu))
