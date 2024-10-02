local Indicator = script.Parent
local App = Indicator.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local ImagesTypes = require(App.ImageSet.ImagesTypes)
local StyleTypes = require(App.Style.StyleTypes)

local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local ShimmerPanel = require(App.Loading.ShimmerPanel)

local useStyle = require(UIBlox.Core.Style.useStyle)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local OpenTypeSupport = require(UIBlox.Utility.OpenTypeSupport)

export type ItemStyleProps = {
	-- Spacing between icon and label
	iconLabelSpacing: number?,
	-- Size of icon
	iconSize: number?,
	-- Color style of icon
	iconColorStyle: StyleTypes.ColorItem?,
	-- Typography of label
	labelTypography: StyleTypes.TypographyItem?,
	-- Color style of label
	labelColorStyle: StyleTypes.ColorItem?,
}

export type ItemProps = {
	-- Leading or trailing icon in name item
	icon: (string | ImagesTypes.ImageSetImage)?,
	-- Text content in name item
	labelText: string?,
	-- Use the `icon` prop as plain text to be icon content
	useTextAsIcon: boolean?,
	-- Callback when item is activated
	onActivated: (() -> ())?,
	-- Item is in loading state
	isLoading: boolean?,
	-- Styles of name item
	styleProps: ItemStyleProps?,
}

export type Props = {
	-- Position of component
	position: UDim2?,
	-- AnchorPoint of component
	anchorPoint: Vector2?,
	-- Size of component
	size: UDim2?,
	-- LayoutOrder of component in parent container
	layoutOrder: number?,
	-- AutomaticSize of component
	automaticSize: Enum.AutomaticSize?,
	-- Spacing between name items
	namesSpacing: number?,
	-- Props of display name item
	displayNameItem: ItemProps?,
	-- Props of user name item
	userNameItem: ItemProps?,
	-- Props of vendor name item
	vendorNameItem: ItemProps?,
	-- Props of alias item
	aliasItem: ItemProps?,
}

type InnerItemProps = {
	layoutOrder: number,
	isReversed: boolean?,
	itemProps: ItemProps,
	itemStyleDefaults: ItemStyleProps,
	onActivated: (() -> ())?,
	openTypeFeatures: string?,
}

local function getStyleDefaults(tokens: StyleTypes.Tokens): ItemStyleProps
	return {
		iconLabelSpacing = tokens.Global.Space_25,
		iconSize = tokens.Semantic.Icon.Size.Small,
		iconColorStyle = tokens.Semantic.Color.Icon.Default,
		labelTypography = tokens.Semantic.Typography.CaptionHeader,
		labelColorStyle = tokens.Semantic.Color.Text.Default,
	}
end

local function getDisplayNameStyleDefaults(tokens: StyleTypes.Tokens): ItemStyleProps
	return {
		iconLabelSpacing = tokens.Global.Space_25,
		iconSize = tokens.Semantic.Icon.Size.Small,
		labelTypography = tokens.Semantic.Typography.Subheader,
		labelColorStyle = tokens.Semantic.Color.Text.Emphasis,
	}
end

local function getUserNameStyleDefaults(tokens: StyleTypes.Tokens): ItemStyleProps
	return {
		iconLabelSpacing = tokens.Global.Space_25,
		iconSize = tokens.Global.Size_150,
		iconColorStyle = tokens.Semantic.Color.Icon.Default,
		labelTypography = tokens.Semantic.Typography.CaptionHeader,
		labelColorStyle = tokens.Semantic.Color.Text.Default,
	}
end

local function NameItem(props: InnerItemProps)
	local layoutOrder = props.layoutOrder
	local isReversed = props.isReversed
	local itemProps = props.itemProps
	local itemStyleDefaults = props.itemStyleDefaults

	local icon = itemProps.icon
	local labelText = itemProps.labelText
	local useTextAsIcon = itemProps.useTextAsIcon
	local onActivated = itemProps.onActivated
	local isLoading = if itemProps.isLoading ~= nil then itemProps.isLoading else false

	local styleProps = Cryo.Dictionary.join(itemStyleDefaults, itemProps.styleProps or {})
	local iconLabelSpacing = styleProps.iconLabelSpacing
	local iconSize = styleProps.iconSize
	local iconColorStyle = styleProps.iconColorStyle or {}
	local labelTypography = styleProps.labelTypography
	local labelColorStyle = styleProps.labelColorStyle

	local showIcon = if not isLoading and icon then true else false
	local isActive = if not isLoading and onActivated then true else false

	local shimmerHeight = nil
	if isLoading then
		if icon then
			shimmerHeight = math.max(iconSize, labelTypography.FontSize)
		else
			shimmerHeight = labelTypography.FontSize
		end
	end

	local iconElement = nil
	if showIcon then
		if useTextAsIcon then
			iconElement = React.createElement("TextLabel", {
				LayoutOrder = if isReversed then 2 else 1,
				Size = UDim2.fromOffset(iconSize, iconSize),
				BackgroundTransparency = 1,
				Text = icon,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = labelTypography.Font,
				TextSize = iconSize,
				TextColor3 = iconColorStyle.Color3,
				TextTransparency = if iconColorStyle.Transparency then iconColorStyle.Transparency else 0,
				Selectable = false,
			})
		else
			iconElement = React.createElement(ImageSetLabel, {
				LayoutOrder = if isReversed then 2 else 1,
				Size = UDim2.fromOffset(iconSize, iconSize),
				Image = icon,
				ImageColor3 = iconColorStyle.Color3,
				ImageTransparency = if iconColorStyle.Transparency then iconColorStyle.Transparency else 0,
				BackgroundTransparency = 1,
				Selectable = false,
			})
		end
	end

	return React.createElement(if isActive then "TextButton" else "Frame", {
		Text = if isActive then "" else nil,
		AutoButtonColor = if isActive then false else nil,
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Selectable = if isActive then true else false,
		[React.Event.Activated] = if isActive then onActivated else nil,
	}, {
		ListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, iconLabelSpacing),
		}),
		Shimmer = if isLoading
			then React.createElement(ShimmerPanel, {
				Size = UDim2.new(1, 0, 0, shimmerHeight),
			})
			else nil,
		Icon = iconElement,
		Label = if not isLoading
			then React.createElement("TextLabel", {
				LayoutOrder = if isReversed then 1 else 2,
				AutomaticSize = Enum.AutomaticSize.XY,
				Size = UDim2.fromScale(0, 0),
				BackgroundTransparency = 1,
				Text = labelText,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
				Font = labelTypography.Font,
				TextSize = labelTypography.FontSize,
				TextColor3 = labelColorStyle.Color3,
				TextTransparency = labelColorStyle.Transparency,
				Selectable = false,
				OpenTypeFeatures = if UIBloxConfig.enableOpenTypeSupport and props.openTypeFeatures
					then props.openTypeFeatures
					else nil,
			})
			else nil,
	})
end

local function PlayerName(props: Props)
	local style = useStyle()
	local position = props.position
	local anchorPoint = props.anchorPoint
	local size = props.size
	local automaticSize = props.automaticSize or Enum.AutomaticSize.Y
	local layoutOrder = props.layoutOrder

	local namesSpacing = props.namesSpacing or style.Tokens.Global.Space_50
	local displayNameItem = props.displayNameItem
	local userNameItem = props.userNameItem
	local vendorNameItem = props.vendorNameItem
	local aliasItem = props.aliasItem

	return React.createElement("Frame", {
		Position = position,
		AnchorPoint = anchorPoint,
		Size = size,
		AutomaticSize = automaticSize,
		BackgroundTransparency = 1,
		LayoutOrder = layoutOrder,
		Selectable = false,
	}, {
		ListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Vertical,
			SortOrder = Enum.SortOrder.LayoutOrder,
			HorizontalAlignment = Enum.HorizontalAlignment.Left,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, namesSpacing),
		}),
		DisplayName = if displayNameItem
			then React.createElement(NameItem, {
				layoutOrder = 1,
				isReversed = true,
				itemProps = displayNameItem,
				itemStyleDefaults = getDisplayNameStyleDefaults(style.Tokens),
			})
			else nil,
		UserName = if userNameItem
			then React.createElement(NameItem, {
				layoutOrder = 2,
				itemProps = userNameItem,
				openTypeFeatures = if UIBloxConfig.enableOpenTypeSupport
					then OpenTypeSupport:getUserNameStylisticAlternative()
					else nil,
				itemStyleDefaults = getUserNameStyleDefaults(style.Tokens),
			})
			else nil,
		VendorName = if vendorNameItem
			then React.createElement(NameItem, {
				layoutOrder = 3,
				itemProps = vendorNameItem,
				itemStyleDefaults = getStyleDefaults(style.Tokens),
			})
			else nil,
		Alias = if aliasItem
			then React.createElement(NameItem, {
				layoutOrder = 4,
				itemProps = aliasItem,
				itemStyleDefaults = getStyleDefaults(style.Tokens),
			})
			else nil,
	})
end

return PlayerName
