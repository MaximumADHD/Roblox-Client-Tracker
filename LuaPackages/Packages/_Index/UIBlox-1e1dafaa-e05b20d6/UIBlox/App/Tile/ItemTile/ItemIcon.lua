local ItemTile = script.Parent
local Tile = ItemTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)
local withStyle = require(UIBlox.Core.Style.withStyle)

local enumerateValidator = require(UIBlox.Utility.enumerateValidator)
local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ItemTileEnums = require(Tile.Enum.ItemTileEnums)

local ItemIcon = Roact.PureComponent:extend("ItemIcon")

local ItemIconTypesMap = {
	[ItemTileEnums.ItemIconType.AnimationBundle] = Images["icons/status/item/bundle"],
	[ItemTileEnums.ItemIconType.Bundle] = Images["icons/status/item/bundle"],
}

local PADDING_BOTTOM = 12
local PADDING_RIGHT = 12

local function isValidItemIconType(value)
	if ItemIconTypesMap[value] then
		return true
	end

	return false, "Unknown ItemType " .. value
end

local validateProps = t.strictInterface({
	-- Enum specifying the item type
	itemIconType = t.intersection(enumerateValidator(ItemTileEnums.ItemIconType), isValidItemIconType),
})

function ItemIcon:render()
	assert(validateProps(self.props))

	local itemIconType = self.props.itemIconType

	local icon = ItemIconTypesMap[itemIconType]
	local imageSize = icon.ImageRectSize / Images.ImagesResolutionScale

	return withStyle(function(stylePalette)
		local theme = stylePalette.Theme

		return Roact.createElement(ImageSetComponent.Label, {
			AnchorPoint = Vector2.new(1, 1),
			BackgroundTransparency = 1,
			Image = icon,
			ImageColor3 = theme.IconEmphasis.Color,
			ImageTransparency = theme.IconEmphasis.Transparency,
			Position = UDim2.new(1, -PADDING_RIGHT, 1, -PADDING_BOTTOM),
			Size = UDim2.new(0, imageSize.X, 0, imageSize.Y),
		})
	end)
end

return ItemIcon
