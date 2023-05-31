--!nonstrict
local ItemSplitTileRoot = script.Parent
local TileRoot = ItemSplitTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local Images = require(UIBlox.App.ImageSet.Images)

local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local IconSize = require(App.ImageSet.Enum.IconSize)
local getIconSizeUDim2 = require(App.ImageSet.getIconSizeUDim2)

local ICON_PADDING = 4

local ROBUX_ICON = "icons/common/robux_small"
local OWNED_ICON = "icons/status/item/owned"

local ItemSplitTileFooter = Roact.PureComponent:extend("ItemSplitTileFooter")

ItemSplitTileFooter.validateProps = t.strictInterface({
	priceText = t.optional(t.string),
	isOwned = t.optional(t.boolean),
	layoutOrder = t.optional(t.number),
})

function ItemSplitTileFooter:render()
	local priceText = self.props.priceText
	local isOwned = self.props.isOwned
	local icon = if isOwned then Images[OWNED_ICON] else Images[ROBUX_ICON]

	return withStyle(function(stylePalette)
		local font = stylePalette.Font.Body.Font
		local fontSize = stylePalette.Font.BaseSize * stylePalette.Font.Body.RelativeSize
		local theme = stylePalette.Theme

		local priceIsNumber = (priceText and tonumber(priceText:sub(1, 1))) or priceText == "--"
		local hasIcon = priceText and (priceIsNumber or isOwned)
		local iconSize = getIconSizeUDim2(IconSize.Small)
		local iconPadding = if hasIcon then iconSize.Width.Offset + ICON_PADDING else 0

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 0, fontSize),
			BackgroundTransparency = 1,
			LayoutOrder = self.props.layoutOrder,
		}, {
			Shimmer = if not priceText
				then Roact.createElement(ShimmerPanel, {
					Size = UDim2.new(0.8, 0, 0, fontSize),
				})
				else nil,

			Icon = hasIcon and Roact.createElement(ImageSetComponent.Label, {
				BackgroundTransparency = 1,
				Image = icon,
				ImageColor3 = theme.TextMuted.Color,
				ImageTransparency = theme.TextMuted.Transparency,
				Size = iconSize,
				Position = UDim2.new(0, 0, 0.5, 0),
				AnchorPoint = Vector2.new(0, 0.5),
			}),

			TextLabel = priceText and Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Position = UDim2.new(0, iconPadding, 0, 0),
				Size = UDim2.new(1, -iconPadding, 1, 0),
				Font = font,
				TextColor3 = theme.TextMuted.Color,
				TextTransparency = theme.TextMuted.Transparency,
				TextSize = fontSize,
				Text = priceText,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Center,
			}),
		})
	end)
end

return ItemSplitTileFooter
