--!nonstrict
local ItemTile = script.Parent
local Tile = ItemTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local UIBloxConfig = require(UIBlox.UIBloxConfig)
local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ItemTileEnums = require(Tile.Enum.ItemTileEnums)

local ItemIcon = Roact.PureComponent:extend("ItemIcon")

local ItemIconTypesMap = {
	[ItemTileEnums.ItemIconType.AnimationBundle] = Images["icons/status/item/bundle"],
	[ItemTileEnums.ItemIconType.Bundle] = Images["icons/status/item/bundle"],
	[ItemTileEnums.ItemIconType.DynamicHead] = Images["icons/status/dynamicHead_small"],
}

local function isValidItemIconType(value)
	if ItemIconTypesMap[value] then
		return true
	end

	return false, "Unknown ItemType " .. value
end

ItemIcon.validateProps = t.strictInterface({
	-- Enum specifying the item type
	itemIconType = t.intersection(ItemTileEnums.ItemIconType.isEnumValue, isValidItemIconType),
})

function ItemIcon:render()
	local itemIconType = self.props.itemIconType

	local icon = ItemIconTypesMap[itemIconType]
	local imageSize = icon.ImageRectSize / Images.ImagesResolutionScale

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		local paddingRight, paddingBottom
		if UIBloxConfig.itemTileOverlayPaddingUseTokens then
			local tokens = stylePalette.Tokens
			paddingRight = tokens.Global.Size_100
			paddingBottom = tokens.Global.Size_100
		else
			paddingRight = 12
			paddingBottom = 12
		end

		return Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = Vector2.new(1, 1),
			BackgroundTransparency = 1,
			Image = icon,
			ImageColor3 = theme.IconEmphasis.Color,
			ImageTransparency = theme.IconEmphasis.Transparency,
			Position = UDim2.new(1, -paddingRight, 1, -paddingBottom),
			Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
		})
	end)
end

return ItemIcon
