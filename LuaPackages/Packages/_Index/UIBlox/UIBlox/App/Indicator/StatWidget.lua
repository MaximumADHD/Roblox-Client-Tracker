local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local Cryo = require(Packages.Cryo)

local ImagesTypes = require(App.ImageSet.ImagesTypes)
local StyleTypes = require(App.Style.StyleTypes)

local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local useStyle = require(UIBlox.Core.Style.useStyle)

export type StyleProps = {
	-- Padding left of container
	containerPaddingLeft: number?,
	-- Padding right of container
	containerPaddingRight: number?,
	-- Spacing between number and label in container
	containerGap: number?,
	-- Size of icon
	iconSize: number?,
	-- Color of icon
	iconContentColor: StyleTypes.ThemeItem?,
	-- Spacing between number and label
	dataGap: number?,
	-- Color of data number
	dataContentColor: StyleTypes.ThemeItem?,
	-- Color of data label
	dataLabelContentColor: StyleTypes.ThemeItem?,
}

export type Props = {
	-- The icon to display with this stat
	icon: ImagesTypes.ImageSetImage,
	-- Text representing the count for this stat
	countText: string,
	-- The label text for this stat
	labelText: string,
	-- Position of the stat widget
	position: UDim2?,
	-- AnchorPoint of the stat widget
	anchorPoint: Vector2?,
	-- Position of the stat widget
	size: UDim2?,
	-- HorizontalAlignment within the stat widget
	horizontalAlignment: Enum.HorizontalAlignment?,
	-- LayoutOrder of the stat widget in parent container
	layoutOrder: number?,
	-- Props to style the component
	styleProps: StyleProps?,
}

local defaultStyleProps = {
	containerPaddingLeft = 12,
	containerPaddingRight = 12,
	containerGap = 12,
	iconSize = getIconSize(IconSize.Large),
	dataGap = 0,
}

local function StatWidget(props: Props)
	local style = useStyle()

	local styleProps = Cryo.Dictionary.join(defaultStyleProps, props.styleProps or {})
	local containerPaddingLeft = styleProps.containerPaddingLeft
	local containerPaddingRight = styleProps.containerPaddingRight
	local containerGap = styleProps.containerGap
	local iconSize = styleProps.iconSize
	local iconContentColor = styleProps.iconContentColor or style.Theme.IconEmphasis
	local dataGap = styleProps.dataGap
	local dataContentColor = styleProps.dataContentColor or style.Theme.TextEmphasis
	local dataLabelContentColor = styleProps.dataLabelContentColor or style.Theme.TextEmphasis

	return React.createElement("Frame", {
		Position = props.position,
		AnchorPoint = props.anchorPoint,
		Size = props.size,
		AutomaticSize = Enum.AutomaticSize.Y,
		BackgroundTransparency = 1,
		LayoutOrder = props.layoutOrder,
	}, {
		ListLayout = React.createElement("UIListLayout", {
			FillDirection = Enum.FillDirection.Horizontal,
			HorizontalAlignment = props.horizontalAlignment,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = UDim.new(0, containerGap),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, containerPaddingLeft),
			PaddingRight = UDim.new(0, containerPaddingRight),
		}),
		Icon = React.createElement(ImageSetLabel, {
			Size = UDim2.new(0, iconSize, 0, iconSize),
			Image = props.icon,
			ImageColor3 = iconContentColor.Color,
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
		}),
		TextSection = React.createElement("Frame", {
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, iconSize + containerGap, 0, 0),
		}, {
			ListLayout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
				Padding = UDim.new(0, dataGap),
			}),
			Number = React.createElement(GenericTextLabel, {
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
				Text = props.countText,
				fluidSizing = true,
				TextWrapped = false,
				TextXAlignment = Enum.TextXAlignment.Left,
				colorStyle = dataContentColor,
				fontStyle = style.Font.Title,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
			Label = React.createElement(GenericTextLabel, {
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 2,
				Text = props.labelText,
				fluidSizing = true,
				TextWrapped = false,
				TextXAlignment = Enum.TextXAlignment.Left,
				colorStyle = dataLabelContentColor,
				fontStyle = style.Font.CaptionHeader,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
		}),
	})
end

return StatWidget
