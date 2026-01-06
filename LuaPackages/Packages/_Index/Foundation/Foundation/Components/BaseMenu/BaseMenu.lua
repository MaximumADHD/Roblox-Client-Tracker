local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local React = require(Packages.React)

local View = require(Foundation.Components.View)
local ScrollView = require(Foundation.Components.ScrollView)
local useScaledValue = require(Foundation.Utility.useScaledValue)

local Flags = require(Foundation.Utility.Flags)
local withDefaults = require(Foundation.Utility.withDefaults)
local withCommonProps = require(Foundation.Utility.withCommonProps)
local useBindable = require(Foundation.Utility.useBindable)

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
	-- Makes menu to use the provided width as a minimum width and use autosize instead to grow until the max width.
	-- If the provided width is bigger than the max width of the menu menu will have the width provided.
	-- If used with relative width, e.g. UDim.new(0.5, 0), the constraints always kick in.
	couldGrow: boolean?,
	children: React.ReactNode,
	-- Maximum height after which the menu starts scrolling
	maxHeight: Bindable<number?>,
	-- Radius of the menu
	radius: Radius?,
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

local function computeAutomaticSize(values: { autoSize: boolean, isOverMaxHeight: boolean }): Enum.AutomaticSize
	return if values.autoSize
		then if values.isOverMaxHeight then Enum.AutomaticSize.X else Enum.AutomaticSize.XY
		else if values.isOverMaxHeight then Enum.AutomaticSize.None else Enum.AutomaticSize.Y
end

local function computeSize(values: {
	autoSize: boolean,
	isOverMaxHeight: boolean,
	maxHeight: number?,
	width: UDim?,
}): UDim2?
	local y = if values.isOverMaxHeight and values.maxHeight then UDim.new(0, values.maxHeight) else UDim.new()
	return if values.autoSize then UDim2.new(UDim.new(), y) else UDim2.new(values.width or UDim.new(), y)
end

local function BaseMenu(baseMenuProps: BaseMenuProps, ref: React.Ref<GuiObject>?): React.ReactNode
	local props = withDefaults(baseMenuProps, defaultProps)
	local width = useBindable(props.width) :: React.Binding<UDim?>
	local maxHeight = useBindable(props.maxHeight) :: React.Binding<number?>
	local scaledMinWidth = useScaledValue(MIN_WIDTH)
	local scaledMaxWidth = useScaledValue(MAX_WIDTH)
	local hasLeading, internalSetHasLeading = React.useState(false)
	local canvasSize, setCanvasSize = React.useBinding(UDim2.fromScale(0, 1))

	local setHasLeading = React.useCallback(function()
		internalSetHasLeading(true)
	end, {})

	-- If the width is provided use it as the minimal width, the user knows better.
	local minWidth = React.useMemo(function()
		return width:map(function(widthValue: UDim?)
			-- When the width provided is UDim.new(1, 0) we have no min width, which is fine.
			return if widthValue then widthValue.Offset else scaledMinWidth
		end)
	end, { width, scaledMinWidth } :: { unknown })

	local autoSize = React.useMemo(function()
		return width:map(function(widthValue: UDim?)
			return not widthValue or (props.couldGrow and widthValue.Offset < scaledMaxWidth)
		end)
	end, { width, scaledMaxWidth, props.couldGrow } :: { unknown })

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
	end, { autoSize, minWidth, scaledMaxWidth } :: { unknown })

	local isOverMaxHeight = React.useMemo(function()
		return React.joinBindings({ canvasSize = canvasSize, maxHeight = maxHeight })
			:map(function(values: { canvasSize: UDim2, maxHeight: number? })
				return values.maxHeight ~= nil and values.canvasSize.Y.Offset > values.maxHeight
			end)
	end, { maxHeight })

	local onContentAbsoluteSizeChanged = React.useCallback(function(frame: GuiObject)
		return setCanvasSize(UDim2.fromOffset(frame.AbsoluteSize.X, frame.AbsoluteSize.Y))
	end, { setCanvasSize })

	local children = props.children
	if not children and props.items then
		children = React.createElement(DeclarativeBaseMenuContent, {
			items = props.items,
			size = props.size,
		})
	end

	local radiusTag = if Flags.FoundationBaseMenuBorderFix and props.radius ~= nil
		then radiusToTag[props.radius]
		else ""

	if Flags.FoundationBaseMenuScroll and props.maxHeight then
		local automaticSize = React.joinBindings({ autoSize = autoSize, isOverMaxHeight = isOverMaxHeight })
			:map(computeAutomaticSize)

		return React.createElement(
			ScrollView,
			withCommonProps(props, {
				ref = ref,
				scroll = {
					-- Setting XY works almost everywhere except the scroll itself, making the scroll container to be full content height.
					AutomaticSize = automaticSize,
					ScrollingDirection = Enum.ScrollingDirection.Y,
					CanvasSize = canvasSize,
				},
				AutomaticSize = automaticSize,
				Size = React.joinBindings({
					autoSize = autoSize,
					width = width,
					isOverMaxHeight = isOverMaxHeight,
					maxHeight = maxHeight,
				}):map(computeSize),
				sizeConstraint = sizeConstraint,
				tag = {
					[`stroke-standard stroke-default {radiusTag}`] = Flags.FoundationBaseMenuBorderFix,
				},
			}),
			React.createElement(
				View,
				{
					tag = `col size-full`,
					onAbsoluteSizeChanged = onContentAbsoluteSizeChanged,
				},
				React.createElement(BaseMenuContext.Provider, {
					value = {
						onActivated = props.onActivated,
						size = props.size,
						hasLeading = hasLeading,
						setHasLeading = setHasLeading,
					},
				}, children)
			)
		)
	else
		return React.createElement(
			View,
			withCommonProps(props, {
				tag = {
					[`col`] = true,
					[`stroke-standard stroke-default {radiusTag}`] = Flags.FoundationBaseMenuBorderFix,
				},
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
						return if widthValue
							then UDim2.new(widthValue, UDim.new())
							else UDim2.fromOffset(scaledMinWidth, 0)
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
end

return React.memo(React.forwardRef(BaseMenu))
