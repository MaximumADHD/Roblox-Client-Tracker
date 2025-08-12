local Navigation = script.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local StyleTypes = require(App.Style.StyleTypes)
local useStyle = require(UIBlox.Core.Style.useStyle)
local NavigationRailAlignment = require(App.Navigation.Enum.NavigationRailAlignment)

export type NavigationRailItem = {
	isSecondary: boolean?,
	[any]: any,
}
export type Props = {
	-- Aligns primary and secondary navigation items within the component
	alignment: NavigationRailAlignment.NavigationRailAlignmentType,
	-- Array of items to be rendered
	items: { NavigationRailItem },
	-- Callback function to render each item (item: NavigationRailItem, selected: boolean)
	renderItem: (NavigationRailItem, boolean) -> React.ReactElement,
	-- Size of the component
	size: UDim2,
	-- Enable in & out animation
	animated: boolean?,
	-- If animated is true, this will animate in/out the component
	isVisible: boolean?,
	-- Overrides the default color and transparency of the component's background
	backgroundColor: StyleTypes.BackgroundStyle?,
	-- Override paddings to adapt the component to Safe Area Insets
	paddings: StyleTypes.PaddingItem?,
	-- Override the position of the component
	position: UDim2?,
	-- Override the visibility of the component
	visible: boolean?,
	-- Override ZIndex of the component
	zIndex: number?,
	-- Selection index of the items
	selection: number?,
	-- Spacing between items
	spacing: UDim?,
	-- Override ClipsDescendants of the component
	clipsDescendants: boolean?,
	-- ReactOtter animation spring settings
	animationConfig: ReactOtter.SpringOptions?,
}

local defaultProps = {
	visible = true,
	isVisible = true,
	zIndex = 1,
	animated = false,
	animationConfig = {
		dampingRatio = 1,
		frequency = 3,
	},
}

local function NavigationRail(providedProps: Props)
	assert(#providedProps.items > 0, "At least one item should be present!")
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()
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
	local vAlignment
	if props.alignment == NavigationRailAlignment.Justified then
		vAlignment = Enum.VerticalAlignment.Top
	elseif props.alignment == NavigationRailAlignment.Centered then
		vAlignment = Enum.VerticalAlignment.Center
	else
		error("NavigationRail alignment type is incorrect!")
	end
	-- animation
	local animationX, setAnimationX = React.useState(if props.size then props.size.X.Offset else 0)
	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		if props.animated then
			setAnimationX(rbx.AbsoluteSize.X)
		end
	end, { props.animated })
	local xOffset, animateXOffset =
		ReactOtter.useAnimatedBinding(if props.animated and not props.isVisible then -animationX else 0)
	React.useEffect(function()
		if props.animated then
			if props.isVisible then
				animateXOffset(ReactOtter.spring(0, props.animationConfig))
			else
				animateXOffset(ReactOtter.spring(-animationX, props.animationConfig))
			end
		end
		return nil
	end, { props.animated, props.isVisible, animationX, props.animationConfig })
	-- render items
	local primaryChildren = {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			Padding = props.spacing,
			SortOrder = Enum.SortOrder.Name,
		}),
	}
	local secondaryChildren = {
		UIListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			HorizontalAlignment = Enum.HorizontalAlignment.Center,
			VerticalAlignment = Enum.VerticalAlignment.Bottom,
			Padding = props.spacing,
			SortOrder = Enum.SortOrder.Name,
		}),
	}
	local hasSecondaryNavigation = false
	for idx, item in ipairs(props.items) do
		local selected = (idx == props.selection)
		if item.isSecondary then
			hasSecondaryNavigation = true
			secondaryChildren[tostring(idx)] = props.renderItem(item, selected)
		else
			primaryChildren[tostring(idx)] = props.renderItem(item, selected)
		end
	end
	-- inner frame position
	local visibilityPos = xOffset:map(function(xOffset: number)
		return UDim2.new(0, math.floor(xOffset + 0.5), 0, 0)
	end)

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		ClipsDescendants = props.clipsDescendants,
		Size = props.size,
		Position = props.position,
		Visible = props.visible,
		ZIndex = props.zIndex,
		[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
	}, {
		AnimatedFrame = React.createElement("Frame", {
			Position = visibilityPos,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			BackgroundColor3 = if props.backgroundColor
				then props.backgroundColor.Color
				else style.Theme.NavigationBar.Color,
			BackgroundTransparency = if props.backgroundColor
				then props.backgroundColor.Transparency
				else style.Theme.NavigationBar.Transparency,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, paddingTop),
				PaddingBottom = UDim.new(0, paddingBottom),
				PaddingLeft = UDim.new(0, paddingLeft),
				PaddingRight = UDim.new(0, paddingRight),
			}),
			MainFrame = React.createElement("Frame", {
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 1,
			}, {
				UIListLayout = React.createElement("UIListLayout", {
					FillDirection = Enum.FillDirection.Vertical,
					SortOrder = Enum.SortOrder.LayoutOrder,
					HorizontalAlignment = Enum.HorizontalAlignment.Center,
					VerticalAlignment = vAlignment,
					Padding = UDim.new(0, style.Tokens.Global.Space_200),
				}),
				PrimaryItems = React.createElement("Frame", {
					BackgroundTransparency = 1,
					LayoutOrder = 1,
					Size = UDim2.fromScale(1, 0),
					AutomaticSize = Enum.AutomaticSize.Y,
				}, primaryChildren),
				CenteredSecondaryItems = if hasSecondaryNavigation
						and props.alignment == NavigationRailAlignment.Centered
					then React.createElement("Frame", {
						BackgroundTransparency = 1,
						LayoutOrder = 2,
						Size = UDim2.fromScale(1, 0),
						AutomaticSize = Enum.AutomaticSize.Y,
					}, secondaryChildren)
					else nil,
			}),
			JustifiedSecondaryItems = if hasSecondaryNavigation
					and props.alignment == NavigationRailAlignment.Justified
				then React.createElement("Frame", {
					BackgroundTransparency = 1,
					Size = UDim2.fromScale(1, 1),
				}, secondaryChildren)
				else nil,
		}),
	})
end

return NavigationRail
