local ItemTileRoot = script.Parent
local UIBloxRoot = ItemTileRoot.Parent.Parent

local Roact = require(UIBloxRoot.Parent.Roact)
local t = require(UIBloxRoot.Parent.t)
local withStyle = require(UIBloxRoot.Style.withStyle)

local Images = require(UIBloxRoot.ImageSet.Images)
local ImageSetComponent = require(UIBloxRoot.ImageSet.ImageSetComponent)
local ItemTileEnums = require(ItemTileRoot.ItemTileEnums)

local ItemIcon = Roact.PureComponent:extend("ItemIcon")

local ItemIconTypesMap = {
	[ItemTileEnums.ItemIconType.AnimationBundle] = Images["icons/bundleItemType"],
	[ItemTileEnums.ItemIconType.Bundle] = Images["icons/bundleItemType"],
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
	itemIconType = t.intersection(t.string, isValidItemIconType),
})

function ItemIcon:render()
	assert(validateProps(self.props))

	local itemIconType = self.props.itemIconType

	local icon = ItemIconTypesMap[itemIconType]
	local imageSize = icon.ImageRectSize

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
