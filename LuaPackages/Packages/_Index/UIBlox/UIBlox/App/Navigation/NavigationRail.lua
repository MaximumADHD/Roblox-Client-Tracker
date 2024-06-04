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
local NavigationRailAlignment = require(App.Navigation.Enum.NavigationRailAlignment)

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

export type Props = {
	-- Aligns primary and secondary navigation items within the NavigationRail
	alignment: NavigationRailAlignment.NavigationRailAlignmentType,
	-- Determines if each NavigationTab item will show a label
	hasLabels: boolean,
	-- Toggles visibility of secondary navigation items
	hasSecondaryNavigation: boolean,
	-- Array of items to be rendered
	items: any,
	-- Width of the NavigationRail
	width: number,
	-- Size of each item in the NavigationRail
	itemSize: UDim2,
	-- Determines if the NavigationRail has in/out animation when it is toggled
	isVisible: boolean?,
	-- Callback function to render each item
	renderItem: () -> React.ReactElement?,
	-- Overrides the default color and transparency of the navigation rail background
	backgroundColor: StyleTypes.BackgroundStyle?,
	-- Override paddings to adapt a navigation rail instance to Safe Area Insets
	paddings: StyleTypes.PaddingItem?,
	-- Override the size of the NavigationRail
	size: UDim2?,
	-- Override the position of the NavigationRail
	position: UDim2?,
	-- Override the visibility of NavigationRail
	visible: boolean?,
	-- Override ZIndex of the component
	zIndex: number?,
	-- Selection number in the InteractableList
	selection: number?,
}

local function NavigationRail(providedProps: Props)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()

	local widthOffset, animateWidthOffset = ReactOtter.useAnimatedBinding(0)
	React.useEffect(function()
		if props.isVisible then
			animateWidthOffset(ReactOtter.spring(0, props.animationConfig))
		else
			animateWidthOffset(ReactOtter.spring(-props.width, props.animationConfig))
		end
		return nil
	end, { props.width, props.isVisible, props.animationConfig } :: { any })

	local verticalAlignment = if props.alignment == NavigationRailAlignment.Centered
		then Enum.VerticalAlignment.Center
		else Enum.VerticalAlignment.Top

	local renderList = React.useCallback(function(items, renderItem)
		local renderPrimeryItems = Cryo.List.map(items, function(item, key)
			if item.isSecondary then
				return nil
			else
				return renderItem(key)
			end
		end)
		local renderSecondaryItems = if props.hasSecondaryNavigation
			then Cryo.List.map(items, function(item, key)
				if item.isSecondary then
					return renderItem(key)
				else
					return nil
				end
			end)
			else nil
		return React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.new(0, props.width, 1, 0),
			Position = props.position,
			Visible = props.visible,
		}, {
			AnimatedNavigationRail = React.createElement("Frame", {
				Position = widthOffset:map(function(widthOffset)
					return UDim2.new(0, widthOffset, 0, 0)
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
					UIPadding = React.createElement("UIPadding", {
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
					}),
					PrimaryItems = React.createElement("Frame", {
						BackgroundTransparency = 1,
						Size = UDim2.new(1, 0, 0, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
						LayoutOrder = 1,
					}, {
						Cryo.Dictionary.join({
							Layout = React.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Vertical,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
							}),
						}, renderPrimeryItems),
					}),
					CenteredSeondaryItems = if props.hasSecondaryNavigation
							and props.alignment == NavigationRailAlignment.Centered
						then React.createElement("Frame", {
							BackgroundTransparency = 1,
							Size = UDim2.new(1, 0, 0, 0),
							AutomaticSize = Enum.AutomaticSize.Y,
							LayoutOrder = 2,
						}, {
							Cryo.Dictionary.join({
								Layout = React.createElement("UIListLayout", {
									FillDirection = Enum.FillDirection.Vertical,
									HorizontalAlignment = Enum.HorizontalAlignment.Center,
								}),
							}, renderSecondaryItems),
						})
						else nil,
				}),
				BottomAlignedSecondaryItems = if props.hasSecondaryNavigation
						and props.alignment == NavigationRailAlignment.Justified
					then React.createElement("Frame", {
						Position = UDim2.new(0, 0, 0, 0),
						Size = UDim2.new(1, 0, 1, 0),
						BackgroundTransparency = 1,
					}, {
						Cryo.Dictionary.join({
							Layout = React.createElement("UIListLayout", {
								FillDirection = Enum.FillDirection.Vertical,
								VerticalAlignment = Enum.VerticalAlignment.Bottom,
								HorizontalAlignment = Enum.HorizontalAlignment.Center,
							}),
						}, renderSecondaryItems),
					})
					else nil,
			}),
		})
	end, {
		verticalAlignment,
		props.width,
		props.alignment,
		props.hasSecondaryNavigation,
		props.visible,
		props.zIndex,
		props.paddings,
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
		itemSize = props.itemSize,
		renderItem = props.renderItem,
		renderList = renderList,
		onSelectionChanged = onSelectionChanged,
	})
end

return NavigationRail
