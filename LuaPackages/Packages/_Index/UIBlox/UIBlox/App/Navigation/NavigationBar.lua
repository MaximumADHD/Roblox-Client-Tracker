local Navigation = script.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local StyleTypes = require(App.Style.StyleTypes)
local useStyle = require(UIBlox.Core.Style.useStyle)
local InteractableList = require(UIBlox.Core.Control.InteractableList)

local defaultProps = {
	visible = true,
	zIndex = 1,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.new(1, 0, 1, 0),
	animationConfig = {
		dampingRatio = 1,
		frequency = 3,
	},
}

export type Props = {
	-- Array of items to be rendered
	items: { any },
	-- Determines if the NavigationBar is visible, and animate in/out when this property is toggled
	isVisible: boolean,
	-- Determines if each NavigationTab item will show a label
	hasLabels: boolean,
	-- Height of the NavigationBar
	height: number,
	-- Callback function to render each item
	renderItem: (() -> React.ReactElement?),
	-- Overrides the default color and transparency of the navigation bar background
	backgroundColor: StyleTypes.ThemeItem?,
	-- Override left padding to adapt a navigation bar instance to Safe Area Insets
	paddingLeft: number?,
	-- Override top padding to adapt a navigation bar instance to Safe Area Insets
	paddingTop: number?,
	-- Override right padding to adapt a navigation bar instance to Safe Area Insets
	paddingRight: number?,
	-- Override bottom padding to adapt a navigation bar instance to Safe Area Insets
	paddingBottom: number?,
	-- Override position of the NavigationBar
	position: UDim2?,
	-- Size of the NavigationBar
	size: UDim2?,
	-- Override the visibility of NavigationBar
	visible: boolean?,
	-- Override ZIndex of the component
	zIndex: number?,
	-- Selection number in the InteractableList
	selection: number?,
}

local function NavigationBar(providedProps: Props)
	assert(#providedProps.items > 0, "At least one item should be present!")
	assert(providedProps.height > 0, "NavigationBar's height should be positive.")
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()

	local paddingTop = if props.paddingTop then props.paddingTop else style.Tokens.Global.Space_75
	local paddingBottom = if props.paddingBottom then props.paddingBottom else style.Tokens.Global.Space_75
	local paddingLeft = if props.paddingLeft then props.paddingLeft else style.Tokens.Global.Space_75
	local paddingRight = if props.paddingRight then props.paddingRight else style.Tokens.Global.Space_75

	-- Calculate itemSize width based on the number of items
	local itemSize, setItemSize = React.useState(Vector2.zero)
	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		local itemWidth = (rbx.AbsoluteSize.X - paddingLeft - paddingRight) / #props.items
		local itemHeight = props.height - paddingTop - paddingBottom
		setItemSize(Vector2.new(itemWidth, itemHeight))
	end, {
		style,
		paddingTop,
		paddingBottom,
		paddingLeft,
		paddingRight,
		props.height,
		props.items,
	})

	local heightOffset, animateHeightOffset = ReactOtter.useAnimatedBinding(0)
	React.useEffect(function()
		if props.isVisible then
			animateHeightOffset(ReactOtter.spring(0, props.animationConfig))
		else
			animateHeightOffset(ReactOtter.spring(props.height, props.animationConfig))
		end
		return nil
	end, { props.height, props.isVisible, props.animationConfig } :: { any })

	local renderList = React.useCallback(function(items, renderItem)
		local children = Cryo.List.map(items, function(item, key)
			return renderItem(key)
		end)
		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(1, 0, 0, props.height),
			Position = props.position,
			[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
		}, {
			AnimatedNavigationBar = React.createElement(
				"Frame",
				{
					Position = heightOffset:map(function(heightOffset)
						return UDim2.new(0, 0, 0, heightOffset)
					end),
					BorderSizePixel = 0,
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundColor3 = if props.backgroundColor
						then props.backgroundColor.Color
						else style.Theme.BackgroundUIContrast.Color,
					BackgroundTransparency = if props.backgroundColor
						then props.backgroundColor.Transparency
						else style.Theme.BackgroundUIContrast.Transparency,
					Selectable = false,
					Visible = props.visible,
					ZIndex = props.zIndex,
				},
				Cryo.Dictionary.join({
					UIPadding = React.createElement("UIPadding", {
						PaddingTop = UDim.new(0, paddingTop),
						PaddingBottom = UDim.new(0, paddingBottom),
						PaddingLeft = UDim.new(0, paddingLeft),
						PaddingRight = UDim.new(0, paddingRight),
					}),
					Layout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Horizontal,
						VerticalAlignment = Enum.VerticalAlignment.Center,
					}),
				}, children)
			),
		})
	end, {
		style,
		paddingTop,
		paddingBottom,
		paddingLeft,
		paddingRight,
		props.visible,
		props.zIndex,
		props.height,
	} :: { any })

	local selection = props.selection
	if selection then
		if props.items[selection] == nil then
			selection = nil
		else
			selection = { selection }
		end
	end

	local onSelectionChanged = React.useCallback(function(selection)
		local item = props.items[selection[1]]
		if item ~= nil then
			if item.onActivated ~= nil then
				item.onActivated()
			end
		end
	end, { props.items } :: { any })

	return React.createElement(InteractableList, {
		fillDirection = Enum.FillDirection.Horizontal,
		horizontalAlignment = Enum.HorizontalAlignment.Left,
		sortOrder = Enum.SortOrder.LayoutOrder,
		size = props.size,
		itemList = props.items,
		selection = selection,
		itemSize = UDim2.fromOffset(itemSize.X, itemSize.Y),
		renderItem = props.renderItem,
		renderList = renderList,
		onSelectionChanged = onSelectionChanged,
	})
end

return NavigationBar
