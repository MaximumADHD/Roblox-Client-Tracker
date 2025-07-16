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
local NavigationRailAlignment = require(App.Navigation.Enum.NavigationRailAlignment)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local defaultProps = {
	visible = true,
	isVisible = true,
	zIndex = 1,
	position = UDim2.new(0, 0, 0, 0),
	animationConfig = {
		dampingRatio = 1,
		frequency = 3,
	},
}

type ControlState = ControlStateEnum.ControlState

export type NavigationRailItem = {
	isSecondary: boolean?,
	onActivated: (() -> ())?,
	[any]: any,
}
export type Props = {
	-- Aligns primary and secondary navigation items within the NavigationRail
	alignment: NavigationRailAlignment.NavigationRailAlignmentType,
	-- Array of items to be rendered
	items: { NavigationRailItem },
	-- Size of the NavigationRail
	-- Width is size.X.Offset
	size: UDim2,
	-- Size of each item in the NavigationRail
	itemSize: UDim2,
	-- Determines if the NavigationRail has in/out animation when it is toggled
	isVisible: boolean?,
	-- Callback function to render each item
	renderItem: (NavigationRailItem, ControlState, boolean, number) -> (React.ReactElement?, { [any]: any }?),
	-- Overrides the default color and transparency of the navigation rail background
	backgroundColor: StyleTypes.BackgroundStyle?,
	-- Overrides the default color and transparency of the root background
	rootBackgroundColor: StyleTypes.BackgroundStyle?,
	-- Override paddings to adapt a navigation rail instance to Safe Area Insets
	paddings: StyleTypes.PaddingItem?,
	-- Override the position of the NavigationRail
	position: UDim2?,
	-- Override the visibility of NavigationRail
	visible: boolean?,
	-- Override ZIndex of the component
	zIndex: number?,
	-- Selection number in the InteractableList
	selection: number?,
	-- ClipsDescendants
	clipsDescendants: boolean?,
}

local function NavigationRail(providedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()

	local width = props.size.X.Offset
	local widthOffset, animateWidthOffset = ReactOtter.useAnimatedBinding(0)
	React.useEffect(function()
		if props.isVisible then
			animateWidthOffset(ReactOtter.spring(0, props.animationConfig))
		else
			animateWidthOffset(ReactOtter.spring(-width, props.animationConfig))
		end
		return nil
	end, { width, props.isVisible, props.animationConfig } :: { any })

	local verticalAlignment = if props.alignment == NavigationRailAlignment.Centered
		then Enum.VerticalAlignment.Center
		else Enum.VerticalAlignment.Top

	local renderList = React.useCallback(function(items, renderItem)
		local renderPrimeryItems = {} :: any
		local renderSecondaryItems = {} :: any
		local hasSecondaryNavigation = false
		if UIBloxConfig.fixAppNavTestIssues then
			for i, item in ipairs(items) do
				local listItem = renderItem(i)
				-- workaround: remove the key property set by InteractableList's renderItem function to avoid conflict
				listItem["key"] = nil
				if item.isSecondary then
					renderSecondaryItems[tostring(i)] = listItem
					hasSecondaryNavigation = true
				else
					renderPrimeryItems[tostring(i)] = listItem
				end
			end
		else
			for i, item in ipairs(items) do
				if item.isSecondary then
					table.insert(renderSecondaryItems, renderItem(i))
				else
					table.insert(renderPrimeryItems, renderItem(i))
				end
			end
			hasSecondaryNavigation = (#renderSecondaryItems > 0)
		end
		local uiPadding = React.createElement("UIPadding", {
			PaddingTop = if props.paddings and props.paddings.Top
				then UDim.new(0, props.paddings.Top)
				else UDim.new(0, style.Tokens.Global.Space_75),
			PaddingBottom = if props.paddings and props.paddings.Bottom
				then UDim.new(0, props.paddings.Bottom)
				else UDim.new(0, style.Tokens.Global.Space_75),
			PaddingLeft = if props.paddings and props.paddings.Left
				then UDim.new(0, props.paddings.Left)
				else UDim.new(0, style.Tokens.Global.Space_75),
			PaddingRight = if props.paddings and props.paddings.Right
				then UDim.new(0, props.paddings.Right)
				else UDim.new(0, style.Tokens.Global.Space_75),
		})

		return React.createElement("Frame", {
			BackgroundColor3 = if UIBloxConfig.enableAppNavTransparentBackground
				then nil
				else (if props.rootBackgroundColor
					then props.rootBackgroundColor.Color
					else style.Theme.BackgroundDefault.Color),
			BackgroundTransparency = if UIBloxConfig.enableAppNavTransparentBackground
				then 1
				else (if props.rootBackgroundColor
					then props.rootBackgroundColor.Transparency
					else style.Theme.BackgroundDefault.Transparency),
			BorderSizePixel = if UIBloxConfig.enableAppNavTransparentBackground then nil else 0,
			ClipsDescendants = props.clipsDescendants,
			Size = props.size,
			Position = props.position,
			Visible = props.visible,
		}, {
			AnimatedNavigationRail = React.createElement("Frame", {
				Position = widthOffset:map(function(widthOffset)
					return UDim2.new(0, math.floor((widthOffset :: number) + 0.5), 0, 0)
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
				MainFrame = React.createElement("Frame", {
					Position = UDim2.new(0, 0, 0, 0),
					Size = UDim2.new(1, 0, 1, 0),
					BackgroundTransparency = 1,
				}, {
					UIListLayout = React.createElement("UIListLayout", {
						FillDirection = Enum.FillDirection.Vertical,
						SortOrder = Enum.SortOrder.LayoutOrder,
						HorizontalAlignment = Enum.HorizontalAlignment.Center,
						VerticalAlignment = verticalAlignment,
						Padding = UDim.new(0, style.Tokens.Global.Space_200),
					}),
					UIPadding = uiPadding,
					PrimaryItems = React.createElement(
						"Frame",
						{
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, 0),
							AutomaticSize = Enum.AutomaticSize.Y,
							LayoutOrder = 1,
						},
						if UIBloxConfig.fixAppNavTestIssues
							then Cryo.Dictionary.join({
								Layout = React.createElement("UIListLayout", {
									FillDirection = Enum.FillDirection.Vertical,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
								}),
							}, renderPrimeryItems)
							else {
								Cryo.Dictionary.join({
									Layout = React.createElement("UIListLayout", {
										FillDirection = Enum.FillDirection.Vertical,
										HorizontalAlignment = Enum.HorizontalAlignment.Center,
									}),
								}, renderPrimeryItems),
							}
					),
					CenteredSeondaryItems = if hasSecondaryNavigation
							and props.alignment == NavigationRailAlignment.Centered
						then React.createElement(
							"Frame",
							{
								BackgroundTransparency = 1,
								Size = UDim2.new(1, 0, 0, 0),
								AutomaticSize = Enum.AutomaticSize.Y,
								LayoutOrder = 2,
							},
							if UIBloxConfig.fixAppNavTestIssues
								then Cryo.Dictionary.join({
									Layout = React.createElement("UIListLayout", {
										FillDirection = Enum.FillDirection.Vertical,
										HorizontalAlignment = Enum.HorizontalAlignment.Center,
									}),
								}, renderSecondaryItems)
								else {
									Cryo.Dictionary.join({
										Layout = React.createElement("UIListLayout", {
											FillDirection = Enum.FillDirection.Vertical,
											HorizontalAlignment = Enum.HorizontalAlignment.Center,
										}),
									}, renderSecondaryItems),
								}
						)
						else nil,
				}),
				BottomAlignedSecondaryItems = if hasSecondaryNavigation
						and props.alignment == NavigationRailAlignment.Justified
					then React.createElement(
						"Frame",
						{
							Position = UDim2.new(0, 0, 0, 0),
							Size = UDim2.new(1, 0, 1, 0),
							BackgroundTransparency = 1,
						},
						if UIBloxConfig.fixAppNavTestIssues
							then Cryo.Dictionary.join({
								Layout = React.createElement("UIListLayout", {
									FillDirection = Enum.FillDirection.Vertical,
									VerticalAlignment = Enum.VerticalAlignment.Bottom,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
								}),
								UIPadding = uiPadding,
							}, renderSecondaryItems)
							else {
								Cryo.Dictionary.join({
									Layout = React.createElement("UIListLayout", {
										FillDirection = Enum.FillDirection.Vertical,
										VerticalAlignment = Enum.VerticalAlignment.Bottom,
										HorizontalAlignment = Enum.HorizontalAlignment.Center,
									}),
									UIPadding = uiPadding,
								}, renderSecondaryItems),
							}
					)
					else nil,
			}),
		})
	end, {
		style,
		verticalAlignment,
		props.size,
		props.clipsDescendants,
		props.alignment,
		props.visible,
		props.zIndex,
		props.paddings,
		if UIBloxConfig.enableAppNavTransparentBackground then nil else props.rootBackgroundColor,
		props.backgroundColor,
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
		position = props.position,
		itemList = props.items,
		selection = selection,
		itemSize = props.itemSize,
		renderItem = props.renderItem,
		renderList = renderList,
		onSelectionChanged = onSelectionChanged,
	})
end

return NavigationRail
