local App = script:FindFirstAncestor("App")
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local t = require(Packages.t)
local React = require(Packages.React)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSize = require(App.ImageSet.getIconSize)
local ImageSetLabel = require(UIBlox.Core.ImageSet.ImageSetComponent).Label
local GenericTextLabel = require(UIBlox.Core.Text.GenericTextLabel.GenericTextLabel)
local useStyle = require(UIBlox.Core.Style.useStyle)
local devOnly = require(UIBlox.Utility.devOnly)
local validateImage = require(UIBlox.Core.ImageSet.Validator.validateImage)

local ICON_SIZE = getIconSize(IconSize.Large)
local ICON_TEXT_PADDING = 12
local PADDING_LEFT_RIGHT = 12

export type Props = {
	icon: any,
	countText: string,
	labelText: string,

	position: UDim2?,
	anchorPoint: Vector2?,
	size: UDim2?,
	horizontalAlignment: Enum.HorizontalAlignment?,
	layoutOrder: number?,
}

local validateProps = devOnly(t.strictInterface({
	icon = validateImage,
	countText = t.string,
	labelText = t.string,

	position = t.optional(t.UDim2),
	anchorPoint = t.optional(t.Vector2),
	size = t.optional(t.UDim2),
	horizontalAlignment = t.optional(t.enum(Enum.HorizontalAlignment)),
	layoutOrder = t.optional(t.integer),
}))

local function StatWidget(props: Props)
	assert(validateProps(props))

	local style = useStyle()

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
			Padding = UDim.new(0, ICON_TEXT_PADDING),
		}),
		Padding = React.createElement("UIPadding", {
			PaddingLeft = UDim.new(0, PADDING_LEFT_RIGHT),
			PaddingRight = UDim.new(0, PADDING_LEFT_RIGHT),
		}),
		Icon = React.createElement(ImageSetLabel, {
			Size = UDim2.new(0, ICON_SIZE, 0, ICON_SIZE),
			Image = props.icon,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			Position = UDim2.new(0, 0, 0, 0),
			BackgroundTransparency = 1,
		}),
		TextSection = React.createElement("Frame", {
			Size = UDim2.fromScale(0, 0),
			AutomaticSize = Enum.AutomaticSize.XY,
			BackgroundTransparency = 1,
			Position = UDim2.new(0, ICON_SIZE + ICON_TEXT_PADDING, 0, 0),
		}, {
			ListLayout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				FillDirection = Enum.FillDirection.Vertical,
			}),
			Number = React.createElement(GenericTextLabel, {
				Size = UDim2.fromScale(0, 0),
				AutomaticSize = Enum.AutomaticSize.XY,
				LayoutOrder = 1,
				Text = props.countText,
				fluidSizing = true,
				TextWrapped = false,
				TextXAlignment = Enum.TextXAlignment.Left,
				colorStyle = style.Theme.TextEmphasis,
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
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.CaptionHeader,
				TextTruncate = Enum.TextTruncate.AtEnd,
				BackgroundTransparency = 1,
			}),
		}),
	})
end

return StatWidget
