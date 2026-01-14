local Navigation = script.Parent
local App = Navigation.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local Cryo = require(Packages.Cryo)
local React = require(Packages.React)
local ReactOtter = require(Packages.ReactOtter)
local StyleTypes = require(App.Style.StyleTypes)
local useStyle = require(UIBlox.Core.Style.useStyle)
local NavigationBarAlignment = require(App.Navigation.Enum.NavigationBarAlignment)

export type NavigationBarItem = {
	[any]: any,
}

export type Props = {
	-- NavigationBar alignment type
	alignment: NavigationBarAlignment.NavigationBarAlignmentType,
	-- Array of items to be rendered
	items: { NavigationBarItem },
	-- Callback function to render each item (item: NavigationBarItem, selected: boolean)
	renderItem: (NavigationBarItem, boolean) -> React.ReactElement,
	-- Size of the NavigationBar
	size: UDim2?,
	-- Enable in & out animation
	animated: boolean?,
	-- If animated is true, this will animate in/out the component
	isVisible: boolean?,
	-- If provided, this will override animated and isVisible props. It should range from 0 to 1
	visibility: React.Binding<number>?,
	-- Overrides the default color and transparency of the navigation bar background
	backgroundColor: StyleTypes.BackgroundStyle?,
	-- Override paddings to adapt a navigation bar instance to Safe Area Insets
	paddings: StyleTypes.PaddingItem?,
	-- Override position of the NavigationBar
	position: UDim2?,
	-- Override the visibility of NavigationBar
	visible: boolean?,
	-- Override ZIndex of the component
	zIndex: number?,
	-- Selection index of the items
	selection: number?,
	-- Spacing between items
	spacing: UDim?,
	-- Max width of the InnerFrame group of items
	maxWidth: number?,
	-- ClipsDescendants
	clipsDescendants: boolean?,
	-- Automatically size component based on the size of its descendants
	automaticSize: Enum.AutomaticSize?,
	-- ReactOtter animation spring settings
	animationConfig: ReactOtter.SpringOptions?,
	-- Determines whether sinks input when content is visible
	active: boolean?,
}

local defaultProps = {
	visible = true,
	zIndex = 1,
	animated = false,
	maxWidth = 600,
	animationConfig = {
		dampingRatio = 1,
		frequency = 3,
	},
}

local function NavigationBar(providedProps: Props)
	assert(#providedProps.items > 0, "At least one item should be present!")
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local style = useStyle()
	local animationY, setAnimationY = React.useState(if props.size then props.size.Y.Offset else 0)
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
	local hAlignment = nil
	local hFlex = nil
	if props.alignment == NavigationBarAlignment.Left then
		hAlignment = Enum.HorizontalAlignment.Left
	elseif props.alignment == NavigationBarAlignment.EvenlyDistributed then
		hFlex = Enum.UIFlexAlignment.SpaceAround
		hAlignment = Enum.HorizontalAlignment.Center
	else
		error("NavigationBar Alignment type is incorrect!")
	end
	-- animation
	local onAbsoluteSizeChanged = React.useCallback(function(rbx: GuiObject)
		if props.visibility or props.animated then
			setAnimationY(rbx.AbsoluteSize.Y)
		end
	end, { props.visibility, props.animated })
	local yOffset, animateYOffset = ReactOtter.useAnimatedBinding(0)
	React.useEffect(function()
		if not props.visibility and props.animated then
			if props.isVisible then
				animateYOffset(ReactOtter.spring(0, props.animationConfig))
			else
				animateYOffset(ReactOtter.spring(animationY, props.animationConfig))
			end
		end
		return nil
	end, { props.visibility, props.animated, props.isVisible, animationY, props.animationConfig })
	-- render items
	local children = {
		Constraint = if props.maxWidth ~= nil
			then React.createElement("UISizeConstraint", {
				MaxSize = Vector2.new(props.maxWidth, math.huge),
			})
			else nil,
		UIPadding = React.createElement("UIPadding", {
			PaddingTop = UDim.new(0, paddingTop),
			PaddingBottom = UDim.new(0, paddingBottom),
			PaddingLeft = UDim.new(0, paddingLeft),
			PaddingRight = UDim.new(0, paddingRight),
		}),
		Layout = React.createElement("UIListLayout", {
			Padding = props.spacing,
			SortOrder = Enum.SortOrder.Name,
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalFlex = hFlex,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
		}),
	}
	for idx, item in ipairs(props.items) do
		local selected = (idx == props.selection)
		children[tostring(idx)] = props.renderItem(item, selected)
	end
	-- inner frame position
	local visibilityPos = if props.visibility
		then props.visibility:map(function(ratio: number)
			local y = (1 - ratio) * animationY
			return UDim2.new(0, 0, 0, math.floor(y + 0.5))
		end)
		else yOffset:map(function(yOffset: number)
			return UDim2.new(0, 0, 0, math.floor(yOffset + 0.5))
		end)

	return React.createElement("Frame", {
		BackgroundTransparency = 1,
		ClipsDescendants = props.clipsDescendants,
		Size = props.size,
		AutomaticSize = props.automaticSize,
		Position = props.position,
		Visible = props.visible,
		[React.Change.AbsoluteSize] = onAbsoluteSizeChanged,
	}, {
		AnimatedFrame = React.createElement("Frame", {
			Active = props.active,
			Position = visibilityPos,
			BorderSizePixel = 0,
			Size = UDim2.fromScale(1, 1),
			AutomaticSize = props.automaticSize,
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
				HorizontalAlignment = hAlignment,
			}),
			InnerFrame = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = UDim2.fromScale(1, 1),
				AutomaticSize = props.automaticSize,
			}, children),
		}),
	})
end

return NavigationBar
