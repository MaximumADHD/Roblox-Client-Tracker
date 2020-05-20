local ItemTile = script.Parent
local Tile = ItemTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local GetTextSize = require(UIBlox.Core.Text.GetTextSize)
local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)

local ItemTileEnums = require(Tile.Enum.ItemTileEnums)

local ItemRestrictionStatus = Roact.PureComponent:extend("ItemRestrictionStatus")

local MAX_TEXT_SIZE = Vector2.new(50, 20)
local CONTENT_PADDING = Vector2.new(8, 8)

local PADDING_LEFT = 12
local PADDING_BOTTOM = 12
local TEXT_PADDING = 10

local validateProps = t.strictInterface({
	-- Enum specifying the restriction type
	restrictionTypes = t.map(enumerateValidator(ItemTileEnums.Restriction), t.boolean),

	-- Optional information about the restriction
	restrictionInfo = t.optional(t.table),
})

local function getAdditionalText(restrictionTypes, restrictionInfo)
	local additionalText = ""

	if restrictionTypes[ItemTileEnums.Restriction.LimitedUnique] then
		additionalText = "#"
	end

	if restrictionInfo and restrictionInfo.limitedSerialNumber then
		additionalText = additionalText .. " " .. restrictionInfo.limitedSerialNumber
	end

	return additionalText
end

local function getRestrictionIcon(restrictionTypes)
	if restrictionTypes[ItemTileEnums.Restriction.Limited] or
		restrictionTypes[ItemTileEnums.Restriction.LimitedUnique] then
		return Images["icons/status/item/limited"]
	end

	return nil
end

function ItemRestrictionStatus:render()
	assert(validateProps(self.props))

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme
		local fontInfo = stylePalette.Font

		local restrictionInfo = self.props.restrictionInfo
		local restrictionTypes = self.props.restrictionTypes
		local additionalText = getAdditionalText(restrictionTypes, restrictionInfo)

		local font = fontInfo.CaptionHeader.Font
		local fontSize = fontInfo.BaseSize * fontInfo.CaptionHeader.RelativeSize
		local textSize = GetTextSize(additionalText, fontSize, font, MAX_TEXT_SIZE)

		local icon = getRestrictionIcon(restrictionTypes)
		local imageSize = icon and icon.ImageRectSize / Images.ImagesResolutionScale or Vector2.new(0, 0)

		local xSize = imageSize.X + textSize.X + CONTENT_PADDING.X
		local ySize = math.max(imageSize.Y, textSize.Y) + CONTENT_PADDING.Y

		return Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = Vector2.new(0, 1),
			BackgroundTransparency = 1,
			Image = Images["component_assets/circle_17"],
			ImageColor3 = theme.UIDefault.Color,
			ImageTransparency = theme.UIDefault.Transparency,
			ScaleType = Enum.ScaleType.Slice,
			SliceCenter = Rect.new(8, 8, 9, 9),
			Position = UDim2.new(0, PADDING_LEFT, 1, -PADDING_BOTTOM),
			Size = UDim2.new(0, xSize, 0, ySize),
		}, {
			Icon = icon and Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = Vector2.new(0, 0.5),
				BackgroundTransparency = 1,
				Image = icon,
				ImageColor3 = theme.IconEmphasis.Color,
				ImageTransparency = theme.IconEmphasis.Transparency,
				Position = UDim2.new(0, CONTENT_PADDING.X / 2, 0.5, 0),
				Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
			}),

			Text = Roact.createElement("TextLabel", {
				BackgroundTransparency = 1,
				Font = font,
				TextSize = fontSize,
				Text = additionalText,
				TextColor3 = theme.TextMuted.Color,
				TextTransparency = theme.TextMuted.TextTransparency,
				TextTruncate = Enum.TextTruncate.AtEnd,
				TextXAlignment = Enum.TextXAlignment.Center,
				TextYAlignment = Enum.TextYAlignment.Center,
				Position = UDim2.new(0, imageSize.X, 0, 0),
				Size = UDim2.new(0, textSize.X + TEXT_PADDING, 1, 0),
			}),
		})
	end)
end

return ItemRestrictionStatus
