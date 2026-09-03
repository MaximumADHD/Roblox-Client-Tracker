local TextService = game:GetService("TextService")

local UIBlox = script.Parent.Parent.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)
local Foundation = require(Packages.Foundation)

local UIBloxConfig = require(UIBlox.UIBloxConfig)

local StateLayer = require(UIBlox.Core.Control.StateLayer)
local useStyle = require(UIBlox.Core.Style.useStyle)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local NavigationTabLayout = require(UIBlox.App.Navigation.Enum.NavigationTabLayout)
local ImagesTypes = require(UIBlox.App.ImageSet.ImagesTypes)
local StyleTypes = require(UIBlox.App.Style.StyleTypes)

local isBuilderIcon = Foundation.Utility.isBuilderIcon
local InputSize = Foundation.Enums.InputSize
local Icon = Foundation.Icon
local StatusIndicator = Foundation.StatusIndicator
local View = Foundation.View

local migrateBadgeVariant = require(UIBlox.Utility.migrateBadgeVariant)

local HUGE_VECTOR = Vector2.new(math.huge, math.huge)
local LABEL_PADDING = 2

type Icon = {
	name: string,
	variant: Foundation.IconVariant?,
}

export type NavigationTabLayoutType = NavigationTabLayout.Type
export type ImageSetImage = ImagesTypes.ImageSetImage
export type TypographyItem = StyleTypes.TypographyItem
export type ControlStateChangedCallback = StateLayer.ControlStateChangedCallback
export type Props = {
	-- Image of the icon in default state
	iconImage: (string | ImageSetImage | Icon)?,
	-- Image of the icon in checked state
	iconCheckedImage: (string | ImageSetImage | Icon)?,
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
	-- Badge variant for different color options
	badgeVariant: any?,
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
	local contentsSize, setContentsSize = React.useBinding(UDim2.new())
	local onAbsSizeChanged = React.useCallback(function(rbx)
		setContentsSize(UDim2.fromOffset(rbx.AbsoluteSize.X, rbx.AbsoluteSize.Y))
	end, {})
	-- calculate labelSize
	local labelSize
	local fontSize
	if props.labelTypography then
		fontSize = props.labelTypography.FontSize
		if fontSize ~= nil and typeof(fontSize) ~= "number" then
			-- fontSize can be a binding
			fontSize = fontSize:getValue()
		end
	end
	labelSize = React.useMemo(function(): UDim2?
		if props.hasLabel and props.labelText and props.labelTypography then
			local textSize = TextService:GetTextSize(props.labelText, fontSize, props.labelTypography.Font, HUGE_VECTOR)
			return UDim2.new(0, textSize.X + LABEL_PADDING, 0, textSize.Y + LABEL_PADDING)
		end
		return nil
	end, { props.hasLabel, props.labelText, props.labelTypography, fontSize })

	-- iconComponent
	local iconComponent
	local iconSize = UDim2.fromOffset(
		if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse then tokens.Size.Size_700 else tokens.Global.Size_350,
		if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse then tokens.Size.Size_700 else tokens.Global.Size_350
	)
	if props.renderIcon then
		iconComponent = props.renderIcon(props.isChecked)
	else
		local iconImage = if props.isChecked and props.iconCheckedImage then props.iconCheckedImage else props.iconImage
		local iconColor = if props.isChecked
			then (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Color.Content.Emphasis
				else tokens.Semantic.Color.Icon.Emphasis)
			else (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Color.Content.Default
				else tokens.Semantic.Color.Icon.Default)
		local iconName
		local iconVariant
		if UIBloxConfig.addFoundationNavigationTabIcon then
			if typeof(iconImage) == "string" then
				if isBuilderIcon(iconImage) then
					iconName = iconImage
				end
			elseif typeof(iconImage) == "table" then
				if iconImage.name ~= nil and isBuilderIcon(iconImage.name) then
					iconName = iconImage.name
					iconVariant = iconImage.variant
				end
			end
		end

		if UIBloxConfig.addFoundationNavigationTabIcon and iconName ~= nil then
			iconComponent = React.createElement(View, {
				tag = "size-0-0 auto-xy padding-xxsmall",
			}, {
				Icon = React.createElement(Icon, {
					name = iconName,
					size = InputSize.Large,
					variant = iconVariant,
					style = iconColor,
				}),
			})
		else
			iconComponent = React.createElement(ImageSetLabel, {
				BackgroundTransparency = 1,
				Size = iconSize,
				Image = iconImage,
				ScaleType = Enum.ScaleType.Fit,
				ImageColor3 = iconColor.Color3,
				ImageTransparency = iconColor.Transparency,
			})
		end
	end
	if props.layout == NavigationTabLayout.Stacked and props.badgeValue ~= nil then
		iconComponent = React.createElement("Frame", {
			BackgroundTransparency = 1,
			Size = iconSize,
			LayoutOrder = 1,
		}, {
			Icon = iconComponent,
			Badge = React.createElement(StatusIndicator, {
				Position = UDim2.fromScale(1, 0),
				AnchorPoint = Vector2.new(0.6, 0.35),
				value = tonumber(props.badgeValue),
				variant = migrateBadgeVariant(props.badgeVariant),
				max = if tonumber(props.badgeValue) then 99 else nil,
			}),
		})
	end

	-- labelComponent
	local labelComponent
	if props.hasLabel and props.labelText then
		local textColor = if props.isChecked
			then (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Color.Content.Emphasis
				else tokens.Semantic.Color.Text.Emphasis)
			else (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Color.Content.Default
				else tokens.Semantic.Color.Text.Default)
		labelComponent = React.createElement("TextLabel", {
			AutomaticSize = if labelSize then nil else Enum.AutomaticSize.XY,
			Size = labelSize,
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
	local contents: React.ReactElement?
	local cornerRadius
	if props.layout == NavigationTabLayout.Stacked then
		cornerRadius = UDim.new(
			0,
			if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Radius.Medium
				else tokens.Semantic.Radius.Medium
		)
		contents = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Size = UDim2.fromOffset(
				if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then tokens.Size.Size_1200
					else tokens.Global.Space_600,
				if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then tokens.Size.Size_1200
					else tokens.Global.Space_600
			),
			[React.Change.AbsoluteSize] = onAbsSizeChanged,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_200
						else tokens.Global.Space_100
				),
				PaddingBottom = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_200
						else tokens.Global.Space_100
				),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Vertical,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = if UIBloxConfig.removeStackedNavigationTabIconLabelSpacing
					then nil
					else UDim.new(
						0,
						if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
							then tokens.Size.Size_100
							else tokens.Global.Space_50
					),
			}),
			Icon = iconComponent,
			Label = labelComponent,
		})
	elseif props.layout == NavigationTabLayout.Inline then
		cornerRadius = UDim.new(
			0,
			if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Size.Size_300
				else tokens.Semantic.Radius.Large
		)
		local bgColor = if props.isChecked
			then (if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
				then tokens.Color.State.Press
				else tokens.Semantic.Color.State.Standard.Pressed)
			else {
				Transparency = 1,
				Color3 = nil,
			}
		contents = React.createElement("Frame", {
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = bgColor.Transparency,
			BackgroundColor3 = bgColor.Color3,
			Size = UDim2.fromOffset(
				if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then tokens.Size.Size_1200
					else tokens.Global.Space_600,
				if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
					then tokens.Size.Size_1000
					else tokens.Global.Space_500
			),
			[React.Change.AbsoluteSize] = onAbsSizeChanged,
		}, {
			UIPadding = React.createElement("UIPadding", {
				PaddingTop = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_100
						else tokens.Global.Space_50
				),
				PaddingBottom = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_100
						else tokens.Global.Space_50
				),
				PaddingLeft = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_300
						else tokens.Global.Space_150
				),
				PaddingRight = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_300
						else tokens.Global.Space_150
				),
			}),
			UIListLayout = React.createElement("UIListLayout", {
				HorizontalAlignment = Enum.HorizontalAlignment.Center,
				VerticalAlignment = Enum.VerticalAlignment.Center,
				FillDirection = Enum.FillDirection.Horizontal,
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = UDim.new(
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_300
						else tokens.Global.Space_150
				),
			}),
			UICorner = React.createElement("UICorner", {
				CornerRadius = cornerRadius,
			}),
			Icon = iconComponent,
			Label = labelComponent,
			Badge = if props.badgeValue ~= nil
				then React.createElement(StatusIndicator, {
					LayoutOrder = 3,
					value = tonumber(props.badgeValue),
					variant = migrateBadgeVariant(props.badgeVariant),
					max = if tonumber(props.badgeValue) then 99 else nil,
				})
				else nil,
		})
	end

	-- return
	return React.createElement("Frame", {
		ref = ref,
		Size = contentsSize,
		BackgroundTransparency = 1,
		AnchorPoint = props.anchorPoint,
		Position = props.position,
		LayoutOrder = props.layoutOrder,
	}, {
		Contents = contents,
		StateLayer = React.createElement(StateLayer, {
			affordance = "Background" :: StateLayer.Affordance,
			cornerRadius = cornerRadius,
			zIndex = 10,
			onActivated = props.onActivated,
			onStateChanged = props.onStateChanged,
		}),
	})
end)

return NavigationTab
