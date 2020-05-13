local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local withStyle = require(UIBlox.Core.Style.withStyle)
local Images = require(UIBlox.App.ImageSet.Images)

local ShimmerPanel = require(UIBlox.App.Loading.ShimmerPanel)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local ICON_PADDING = 4

local ItemTileFooter = Roact.PureComponent:extend("ItemTileFooter")

local validateProps = t.strictInterface({
	-- The price text of footer
	priceText = t.optional(t.string),

	-- Is the item owned
	isOwned = t.optional(t.boolean)
})

function ItemTileFooter:render()
	assert(validateProps(self.props))

	local priceText = self.props.priceText
	local isOwned = self.props.isOwned

	local icon = Images["icons/common/robux_small"]
	if isOwned then
		icon = Images["icons/status/item/owned"]
	end
	return withStyle(function(stylePalette)
		local font = stylePalette.Font.SubHeader1.Font
		local fontSize = stylePalette.Font.BaseSize * stylePalette.Font.SubHeader1.RelativeSize
		local theme = stylePalette.Theme

		local iconSize = icon.ImageRectSize / Images.ImagesResolutionScale

		local priceIsNumber = priceText and tonumber(priceText:sub(1, 1))
		local showIcon = priceText and (priceIsNumber or isOwned)

		local iconPadding = 0
		if showIcon then
			iconPadding = iconSize.X + ICON_PADDING
		end

		return Roact.createElement("Frame", {
			Size = UDim2.new(1, 0, 1, 0),
			BackgroundTransparency = 1,
		}, {
			Shimmer = not priceText and Roact.createElement(ShimmerPanel, {
				Size = UDim2.new(0.8, 0, 0, fontSize),
			}),

			icon = showIcon and Roact.createElement(ImageSetComponent.Label, {
				BackgroundTransparency = 1,
				Image = icon,
				ImageColor3 = theme.IconEmphasis.Color,
				ImageTransparency = theme.IconEmphasis.Transparency,
				Size = UDim2.new(0, iconSize.X, 0, iconSize.Y),
			}),

			TextLabel = priceText and Roact.createElement("TextLabel", {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Position = UDim2.new(1, 0, 0, 0),
				Size = UDim2.new(1, -iconPadding, 1, 0),
				Font = font,
				TextColor3 = theme.SecondaryContent.Color,
				TextTransparency = theme.SecondaryContent.Transparency,
				TextSize = fontSize,
				Text = priceText,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Left,
				TextYAlignment = Enum.TextYAlignment.Top,
			})
		})
	end)
end

return ItemTileFooter