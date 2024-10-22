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
local ControlStateEnum = require(UIBlox.Core.Control.Enum.ControlState)
local NavigationBarAlignment = require(App.Navigation.Enum.NavigationBarAlignment)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local defaultProps = {
	visible = true,
	zIndex = 1,
	position = UDim2.new(0, 0, 0, 0),
	size = UDim2.new(1, 0, 1, 0),
	maxWidth = 600,
	animationConfig = {
		dampingRatio = 1,
		frequency = 3,
	},
	showAnimation = false,
}

type ControlState = ControlStateEnum.ControlState

export type NavigationBarItem = {
	onActivated: (() -> ())?,
	[any]: any,
}
export type Props = {
	-- NavigationBar alignment type
	alignment: NavigationBarAlignment.NavigationBarAlignmentType,
	-- Array of items to be rendered
	items: { NavigationBarItem },
	-- Determines if the NavigationBar is visible, and animate in/out when this property is toggled
	isVisible: boolean,
	-- Size of the NavigationBar
	-- Height is size.Y.Offset
	size: UDim2,
	-- Callback function to render each item
	renderItem: (NavigationBarItem, ControlState, boolean, number) -> (React.ReactElement?, { [any]: any }?),
	-- Overrides the default color and transparency of the navigation bar background
	backgroundColor: StyleTypes.BackgroundStyle?,
	-- Overrides the default color and transparency of the root background
	rootBackgroundColor: StyleTypes.BackgroundStyle?,
	-- Override paddings to adapt a navigation bar instance to Safe Area Insets
	paddings: StyleTypes.PaddingItem?,
	-- Override position of the NavigationBar
	position: UDim2?,
	-- Override the visibility of NavigationBar
	visible: boolean?,
	-- Override ZIndex of the component
	zIndex: number?,
	-- Selection number in the InteractableList
	selection: number?,
	-- Spacing between items
	spacing: UDim?,
	-- show NavigationBar Y Offset Animation
	showAnimation: boolean?,
	-- Max width of the NavigationBar
	maxWidth: number?,
	-- ClipsDescendants
	clipsDescendants: boolean?,
}

local function NavigationBar(providedProps: Props)
	assert(#providedProps.items > 0, "At least one item should be present!")
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()
	local itemBindingSize, setItemBindingSize
	local itemSize, setItemSize
	if UIBloxConfig.enableAppNavUpdate then
		itemBindingSize, setItemBindingSize = React.useBinding(UDim2.new())
	else
		itemSize, setItemSize = React.useState(UDim2.new(0, 0, 0, 0))
	end
	local height = props.size.Y.Offset :: number
	local paddingTop = if props.paddings and props.paddings.Top
		then props.paddings.Top
		else style.Tokens.Global.Space_75
	local paddingBottom = if props.paddings and props.paddings.Bottom
		then props.paddings.Bottom
		else style.Tokens.Global.Space_75
	local paddingLeft = if props.paddings and props.paddings.Left
		then props.paddings.Left
		else style.Tokens.Global.Space_75
	local paddingRight = if props.paddings and props.paddings.Right
		then props.paddings.Right
		else style.Tokens.Global.Space_75

	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		if props.alignment == NavigationBarAlignment.EvenlyDistributed then
			-- Calculate itemSize width based on the number of items
			local totalWidth = if rbx.AbsoluteSize.X > props.maxWidth then props.maxWidth else rbx.AbsoluteSize.X
			local itemWidth = (totalWidth - paddingLeft - paddingRight) / #props.items
			local itemHeight = height - paddingTop - paddingBottom
			if UIBloxConfig.enableAppNavUpdate then
				setItemBindingSize(UDim2.new(0, itemWidth, 0, itemHeight))
			else
				setItemSize(UDim2.new(0, itemWidth, 0, itemHeight))
			end
		end
	end, {
		height,
		paddingTop,
		paddingBottom,
		paddingLeft,
		paddingRight,
		props.maxWidth,
		props.alignment,
		props.items,
	})

	local heightOffset, animateHeightOffset = ReactOtter.useAnimatedBinding(0)
	React.useEffect(function()
		if props.isVisible then
			animateHeightOffset(ReactOtter.spring(0, props.animationConfig))
		else
			animateHeightOffset(ReactOtter.spring(height, props.animationConfig))
		end
		return nil
	end, { height, props.isVisible, props.animationConfig } :: { any })

	local renderAnimatedList = React.useCallback(function(items, renderItem)
		local children = Cryo.List.map(items, function(item, key)
			return renderItem(key)
		end)
		return React.createElement("Frame", {
			BackgroundColor3 = if props.rootBackgroundColor
				then props.rootBackgroundColor.Color
				else style.Theme.BackgroundDefault.Color,
			BackgroundTransparency = if props.rootBackgroundColor
				then props.rootBackgroundColor.Transparency
				else style.Theme.BackgroundDefault.Transparency,
			BorderSizePixel = 0,
			ClipsDescendants = props.clipsDescendants,
			Size = props.size,
			Position = props.position,
			Visible = props.visible,
			[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
		}, {
			AnimatedNavigationBar = React.createElement("Frame", {
				Position = heightOffset:map(function(heightOffset)
					return UDim2.new(0, 0, 0, heightOffset)
				end),
				BorderSizePixel = 0,
				Size = UDim2.new(1, 0, 1, 0),
				BackgroundColor3 = if props.backgroundColor
					then props.backgroundColor.Color
					else style.Theme.NavigationBar.Color,
				BackgroundTransparency = if props.backgroundColor
					then props.backgroundColor.Transparency
					else style.Theme.NavigationBar.Transparency,
				Selectable = false,
				Visible = props.visible,
				ZIndex = props.zIndex,
			}, {
				Layout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Horizontal,
					VerticalAlignment = Enum.VerticalAlignment.Top,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
				}),
				InnerFrame = React.createElement(
					"Frame",
					{
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 1, 0),
					},
					Cryo.Dictionary.join({
						Constraint = React.createElement("UISizeConstraint", {
							MaxSize = Vector2.new(props.maxWidth, height),
						}),
						UIPadding = React.createElement("UIPadding", {
							PaddingTop = UDim.new(0, paddingTop),
							PaddingBottom = UDim.new(0, paddingBottom),
							PaddingLeft = UDim.new(0, paddingLeft),
							PaddingRight = UDim.new(0, paddingRight),
						}),
						Layout = React.createElement("UIListLayout", {
							FillDirection = Enum.FillDirection.Horizontal,
							VerticalAlignment = Enum.VerticalAlignment.Center,
							HorizontalAlignment = Enum.HorizontalAlignment.Center,
						}),
					}, children)
				),
			}),
		})
	end, {
		style,
		height,
		paddingTop,
		paddingBottom,
		paddingLeft,
		paddingRight,
		props.maxWidth,
		props.visible,
		props.zIndex,
		props.size,
		props.clipsDescendants,
		props.rootBackgroundColor,
		props.backgroundColor,
	} :: { any })

	local alignmentTypesProps = {}
	if props.alignment == NavigationBarAlignment.Left then
		alignmentTypesProps = {
			itemSize = UDim2.fromScale(0, 0),
			automaticSize = Enum.AutomaticSize.X,
			padding = props.spacing,
		} :: { any }
	elseif props.alignment == NavigationBarAlignment.EvenlyDistributed then
		alignmentTypesProps = {
			itemSize = if UIBloxConfig.enableAppNavUpdate then itemBindingSize else itemSize,
		} :: { any }
	else
		error("NavigationBar Alignment type is incorrect!")
	end

	local selection = props.selection
	if selection then
		if props.items[selection] == nil then
			if UIBloxConfig.enableNavigationBarSelectionChangeFix then
				selection = { nil }
			else
				selection = nil
			end
		else
			selection = { selection }
		end
	else
		if UIBloxConfig.enableNavigationBarSelectionChangeFix then
			selection = { nil }
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

	return React.createElement(
		InteractableList,
		Cryo.Dictionary.join({
			fillDirection = Enum.FillDirection.Horizontal,
			horizontalAlignment = Enum.HorizontalAlignment.Left,
			verticalAlignment = Enum.VerticalAlignment.Center,
			sortOrder = Enum.SortOrder.LayoutOrder,
			size = props.size,
			position = props.position,
			itemList = props.items,
			selection = selection,
			renderItem = props.renderItem,
			onSelectionChanged = onSelectionChanged,
			renderList = if props.showAnimation then renderAnimatedList else nil,
		}, alignmentTypesProps)
	)
end

return NavigationBar
