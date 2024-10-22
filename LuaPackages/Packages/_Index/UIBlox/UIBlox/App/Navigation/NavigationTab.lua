local UIBlox = script.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local StateLayer = require(UIBlox.Core.Control.StateLayer)
local useStyle = require(UIBlox.Core.Style.useStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local Badge = require(UIBlox.App.Indicator.Badge)
local BadgeVariant = require(UIBlox.App.Indicator.Enum.BadgeVariant)
local NavigationTabLayout = require(UIBlox.App.Navigation.Enum.NavigationTabLayout)
local ImagesTypes = require(UIBlox.App.ImageSet.ImagesTypes)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)
local UIBloxConfig = require(UIBlox.UIBloxConfig)

export type NavigationTabLayoutType = NavigationTabLayout.Type
export type ImageSetImage = ImagesTypes.ImageSetImage
export type TypographyItem = StyleTypes.TypographyItem
export type ControlStateChangedCallback = StateLayer.ControlStateChangedCallback
export type Props = {
	-- Image of the icon in default state
	iconImage: (string | ImageSetImage)?,
	-- Image of the icon in checked state
	iconCheckedImage: (string | ImageSetImage)?,
	-- The icon element to be rendered manually, this will override iconImage and iconCheckedImage
	renderIcon: ((isChecked: boolean) -> React.ElementType)?,
	-- Whether to render the text label
	hasLabel: boolean?,
	-- Text of the label
	labelText: string?,
	-- Typography of the label
	labelTypography: TypographyItem?,
	-- Whether the component is in checked state
	isChecked: boolean?,
	-- Value for the badge, can be string, integer oe BadgeStates.isEnumValue
	badgeValue: any?,
	-- Layout style of the component
	layout: NavigationTabLayoutType?,
	-- Anchor point
	anchorPoint: Vector2?,
	-- Position
	position: UDim2?,
	-- Layout order
	layoutOrder: number?,
	-- Callback for activated event
	onActivated: (() -> ())?,
	-- Callback for state event
	onStateChanged: ControlStateChangedCallback?,
}

local defaultProps = {
	hasLabel = false,
	isChecked = false,
	badgeValue = nil,
	layout = NavigationTabLayout.Stacked,
}

local NavigationTab = React.forwardRef(function(providedProps: Props, ref: React.Ref<Frame>)
	local props = Cryo.Dictionary.join(defaultProps, providedProps)
	local tokens = useStyle().Tokens
	local absSize, setAbsSize
	local contentsSize, setContentsSize
	if UIBloxConfig.enableAppNavUpdate then
		contentsSize, setContentsSize = React.useBinding(UDim2.new())
	else
		absSize, setAbsSize = React.useState(UDim2.new())
	end
	local onAbsSizeChanged = React.useCallback(function(rbx)
		if UIBloxConfig.enableAppNavUpdate then
			setContentsSize(UDim2.fromOffset(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y))
		else
			setAbsSize(UDim2.fromOffset(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y))
		end
	end, { setAbsSize, setContentsSize } :: { any })

	-- iconComponent
	local iconComponent
	local iconSize = UDim2.fromOffset(tokens.Global.Size_350, tokens.Global.Size_350)
	if props.renderIcon then
		iconComponent = props.renderIcon(props.isChecked)
	else
		local iconImage = if props.isChecked and props.iconCheckedImage then props.iconCheckedImage else props.iconImage
		local iconColor = if props.isChecked
			then tokens.Semantic.Color.Icon.Emphasis
			else tokens.Semantic.Color.Icon.Default
		iconComponent = React.createElement(ImageSetLabel, {
			BackgroundTransparency = 1,
			Size = if UIBloxConfig.enableAppNavUpdate then iconSize else UDim2.fromScale(1, 1),
			Image = iconImage,
			ScaleType = Enum.ScaleType.Fit,
			ImageColor3 = iconColor.Color3,
			ImageTransparency = iconColor.Transparency,
		})
	end
	local iconFrame
	if UIBloxConfig.enableAppNavUpdate then
		if props.layout == NavigationTabLayout.Stacked and props.badgeValue ~= nil then
			iconComponent = React.createElement("Frame", {
				BackgroundTransparency = 1,
				Size = iconSize,
				LayoutOrder = 1,
			}, {
				Icon = iconComponent,
				Badge = React.createElement(Badge, {
					position = UDim2.fromScale(1, 0),
					anchorPoint = Vector2.new(0.6, 0.35),
					value = props.badgeValue,
					badgeVariant = BadgeVariant.Alert,
				}),
			})
		end
	else
		iconFrame = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(tokens.Global.Size_350, tokens.Global.Size_350),
			LayoutOrder = 1,
		}, {
			Icon = iconComponent,
			Badge = if (props.layout == NavigationTabLayout.Stacked and props.badgeValue ~= nil)
				then React.createElement(Badge, {
					position = UDim2.fromScale(1, 0),
					anchorPoint = Vector2.new(0.6, 0.35),
					value = props.badgeValue,
					badgeVariant = BadgeVariant.Alert,
				})
				else nil,
		})
	end

	-- labelComponent
	local labelComponent
	if props.hasLabel and props.labelText then
		local textColor = if props.isChecked
			then tokens.Semantic.Color.Text.Emphasis
			else tokens.Semantic.Color.Text.Default
		labelComponent = React.createElement("TextLabel", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			LayoutOrder = 2,
			TextXAlignment = Enum.TextXAlignment.Center,
			TextWrapped = false,
			Text = props.labelText,
			Font = if props.labelTypography then props.labelTypography.Font else nil,
			TextSize = if props.labelTypography then props.labelTypography.FontSize else nil,
			LineHeight = if props.labelTypography then props.labelTypography.LineHeight else nil,
			TextColor3 = textColor.Color3,
			TextTransparency = textColor.Transparency,
		})
	end

	-- contents
	local contents
	local cornerRadius
	if props.layout == NavigationTabLayout.Stacked then
		cornerRadius = UDim.new(0, tokens.Semantic.Radius.Medium)
		contents = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(tokens.Global.Space_600, tokens.Global.Space_600),
			[React.Change.AbsoluteSize] = onAbsSizeChanged,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, tokens.Global.Space_100),
				PaddingBottom = UDim.new(0, tokens.Global.Space_100),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, tokens.Global.Space_50),
			}),
			Icon = if UIBloxConfig.enableAppNavUpdate then iconComponent else iconFrame,
			Label = labelComponent,
		})
	elseif props.layout == NavigationTabLayout.Inline then
		cornerRadius = UDim.new(0, tokens.Semantic.Radius.Large)
		local bgColor = if props.isChecked
			then tokens.Semantic.Color.State.Standard.Pressed
			else {
				Transparency = 1,
				Color3 = nil,
			}
		contents = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = bgColor.Transparency,
			BackgroundColor3 = bgColor.Color3,
			Size = UDim2.fromOffset(tokens.Global.Space_600, tokens.Global.Space_500),
			[React.Change.AbsoluteSize] = onAbsSizeChanged,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(0, tokens.Global.Space_50),
				PaddingBottom = UDim.new(0, tokens.Global.Space_50),
				PaddingLeft = UDim.new(0, tokens.Global.Space_150),
				PaddingRight = UDim.new(0, tokens.Global.Space_150),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(0, tokens.Global.Space_150),
			}),
			UICorner = React.createElement("UICorner", {
				CornerRadius = cornerRadius,
			}),
			Icon = if UIBloxConfig.enableAppNavUpdate then iconComponent else iconFrame,
			Label = labelComponent,
			Badge = if props.badgeValue ~= nil
				then React.createElement(Badge, {
					layoutOrder = 3,
					value = props.badgeValue,
					badgeVariant = BadgeVariant.Alert,
				})
				else nil,
		})
	end

	-- return
	return React.createElement("Frame", {
		ref = ref,
		Size = if UIBloxConfig.enableAppNavUpdate then contentsSize else absSize,
		BackgroundTransparency = 1,
		AnchorPoint = props.anchorPoint,
		Position = props.position,
		LayoutOrder = props.layoutOrder,
	}, {
		Contents = contents,
		StateLayer = React.createElement(StateLayer, {
			affordance = "Background" :: StateLayer.Affordance,
			cornerRadius = cornerRadius,
			size = if UIBloxConfig.enableAppNavUpdate then nil else absSize,
			zIndex = 10,
			onActivated = props.onActivated,
			onStateChanged = props.onStateChanged,
		}),
	})
end)

return NavigationTab
