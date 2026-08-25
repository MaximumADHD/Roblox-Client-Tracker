local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local Flags = require(Foundation.Utility.Flags)
local View = require(Foundation.Components.View)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local useBindable = require(Foundation.Utility.useBindable)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local withDefaults = require(Foundation.Utility.withDefaults)

local ControlState = require(Foundation.Enums.ControlState)
local Radius = require(Foundation.Enums.Radius)
type ControlState = ControlState.ControlState
type Radius = Radius.Radius

local Types = require(Foundation.Components.Types)
type Bindable<T> = Types.Bindable<T>
type ItemId = Types.ItemId
type OnItemActivated = Types.OnItemActivated
local InputSize = require(Foundation.Enums.InputSize)
type InputSize = InputSize.InputSize
local BaseMenuContext = require(script.Parent.BaseMenuContext)
local BaseMenuScrollContainer = require(script.Parent.BaseMenuScrollContainer)
local useSubmenuHover = require(script.Parent.useSubmenuHover)

local DeclarativeBaseMenuContent = require(script.Parent.DeclarativeBaseMenuContent)

export type BaseMenuItem = DeclarativeBaseMenuContent.BaseMenuItem
export type BaseMenuItems<Item = BaseMenuItem> = DeclarativeBaseMenuContent.BaseMenuItems<Item>
export type BaseMenuItemGroup<Item = BaseMenuItem> = DeclarativeBaseMenuContent.BaseMenuItemGroup<Item>

export type BaseMenuProps<Item = BaseMenuItem> = {
	-- List of items to display in the menu
	items: BaseMenuItems<Item>?,
	-- Size of the menu and its items
	size: InputSize?,
	-- Width of the component. If not specified, the menu is sized based on the content.
	width: Bindable<UDim?>,
	onActivated: OnItemActivated?,
	onNestedLeafActivated: (() -> ())?,
	-- Makes menu to use the provided width as a minimum width and use autosize instead to grow until the max width.
	-- If the provided width is bigger than the max width of the menu menu will have the width provided.
	-- If used with relative width, e.g. UDim.new(0.5, 0), the constraints always kick in.
	couldGrow: boolean?,
	children: React.ReactNode,
	-- Maximum height after which the menu starts scrolling
	maxHeight: Bindable<number?>,
	-- Radius of the menu
	radius: Radius?,
	-- Ref to the scrolling frame when the menu is scrollable (`maxHeight` set).
	scrollingFrameRef: React.Ref<ScrollingFrame>?,
} & Types.CommonProps

local defaultProps = {
	size = InputSize.Medium,
}

local radiusToTag: { [Radius]: string } = {
	[Radius.Small] = "radius-small",
	[Radius.Medium] = "radius-medium",
}

local MIN_WIDTH = 260
local MAX_WIDTH = 320

local function BaseMenu(baseMenuProps: BaseMenuProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local isVisible, setIsVisible = React.useBinding(false)
	local defaultWithVisible = table.clone(defaultProps)
	defaultWithVisible.Visible = isVisible

	local props = withDefaults(baseMenuProps, defaultWithVisible)
	local width = useBindable(props.width) :: React.Binding<UDim?>
	local maxHeight = useBindable(props.maxHeight) :: React.Binding<number?>
	local scaledMinWidth = useScaledValue(MIN_WIDTH)
	local scaledMaxWidth = useScaledValue(MAX_WIDTH)
	local hasLeading, internalSetHasLeading = React.useState(false)
	local submenuHover = useSubmenuHover()
	React.useEffect(function()
		task.delay(0, function()
			setIsVisible(true)
		end)
	end, {})

	local setHasLeading = React.useCallback(function()
		internalSetHasLeading(true)
	end, {})

	-- If the width is provided use it as the minimal width, the user knows better.
	local minWidth = React.useMemo(function()
		return width:map(function(widthValue: UDim?)
			return if widthValue
				then widthValue.Offset
				elseif Flags.FoundationBaseMenuContentSizing then 0
				else scaledMinWidth
		end)
	end, { width, scaledMinWidth } :: { unknown })

	local autoSize = React.useMemo(function()
		return width:map(function(widthValue: UDim?): boolean
			if Flags.FoundationBaseMenuContentSizing then
				return not widthValue or props.couldGrow == true
			end
			return not widthValue or (props.couldGrow == true and widthValue.Offset < scaledMaxWidth)
		end)
	end, { width, scaledMaxWidth, props.couldGrow } :: { unknown })

	local sizeConstraint = React.useMemo(function()
		return {
			MinSize = React.joinBindings({ autoSize, minWidth }):map(function(values): Vector2?
				local autoSizeValue = values[1]
				local minWidthValue = values[2]
				if not autoSizeValue then
					return nil
				end
				return if Flags.FoundationBaseMenuContentSizing and minWidthValue == 0
					then nil
					else Vector2.new(minWidthValue, 0)
			end),
			MaxSize = if Flags.FoundationBaseMenuContentSizing
				then nil
				else autoSize:map(function(autoSizeValue): Vector2?
					return if autoSizeValue then Vector2.new(scaledMaxWidth, math.huge) else nil
				end),
		}
	end, { autoSize, minWidth, scaledMaxWidth } :: { unknown })

	local children = props.children
	if not children and props.items then
		children = React.createElement(DeclarativeBaseMenuContent, {
			items = props.items,
			size = props.size,
		})
	end

	local radiusTag = if props.radius ~= nil then radiusToTag[props.radius] else ""

	local contextValue = if Flags.FoundationStableContextValues
		then React.useMemo(
			function()
				return {
					onActivated = props.onActivated,
					onNestedLeafActivated = props.onNestedLeafActivated,
					size = props.size,
					hasLeading = hasLeading,
					setHasLeading = setHasLeading,
					hoverOpenPath = submenuHover.openPath,
					hoverOpenAtDepth = submenuHover.openAtDepth,
					hoverCloseAtDepth = submenuHover.closeAtDepth,
					hoverReset = submenuHover.reset,
					depth = 1,
					maxHeight = props.maxHeight,
				}
			end,
			{
				props.onActivated,
				props.onNestedLeafActivated,
				props.size,
				hasLeading,
				submenuHover.openPath,
				submenuHover.openAtDepth,
				submenuHover.closeAtDepth,
				submenuHover.reset,
				props.maxHeight,
			} :: { unknown }
		)
		else nil

	local menuContent = React.createElement(BaseMenuContext.Provider, {
		value = if Flags.FoundationStableContextValues
			then contextValue
			else {
				onActivated = props.onActivated,
				onNestedLeafActivated = props.onNestedLeafActivated,
				size = props.size,
				hasLeading = hasLeading,
				setHasLeading = setHasLeading,
				hoverOpenPath = submenuHover.openPath,
				hoverOpenAtDepth = submenuHover.openAtDepth,
				hoverCloseAtDepth = submenuHover.closeAtDepth,
				hoverReset = submenuHover.reset,
				depth = 1,
				maxHeight = props.maxHeight,
			},
	}, children)

	if props.maxHeight then
		return React.createElement(BaseMenuScrollContainer, {
			maxHeight = maxHeight,
			autoSize = autoSize,
			width = width,
			scrollViewProps = withCommonProps(props, {
				ref = ref,
				sizeConstraint = sizeConstraint,
				scrollingFrameRef = props.scrollingFrameRef,
				tag = `stroke-standard stroke-default {radiusTag}`,
			}),
		}, menuContent)
	else
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = `col stroke-standard stroke-default {radiusTag}`,
				AutomaticSize = autoSize:map(function(autoSizeValue): Enum.AutomaticSize
					return if autoSizeValue then Enum.AutomaticSize.XY else Enum.AutomaticSize.Y
				end),
				Size = React.joinBindings({ autoSize, width }):map(function(values): UDim2?
					local autoSizeValue = values[1]
					local widthValue = values[2]
					return if autoSizeValue then nil else UDim2.new(widthValue, UDim.new())
				end),
				ref = ref,
				sizeConstraint = sizeConstraint,
			}),
			menuContent
		)
	end
end

return React.memo(React.forwardRef(BaseMenu))
