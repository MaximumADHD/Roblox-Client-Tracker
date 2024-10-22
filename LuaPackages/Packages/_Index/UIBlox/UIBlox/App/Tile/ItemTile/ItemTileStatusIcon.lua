local ItemTileRoot = script.Parent
local TileRoot = ItemTileRoot.Parent
local App = TileRoot.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local React = require(Packages.React)
local useStyle = require(UIBlox.Core.Style.useStyle)

local IconSize = require(UIBlox.App.ImageSet.Enum.IconSize)
local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local ItemTileEnums = require(TileRoot.Enum.ItemTileEnums)
local getIconSize = require(UIBlox.App.ImageSet.getIconSize)

export type Props = {
	-- Enum specifying the style for the status component
	statusStyle: any, -- ItemTileEnums.StatusStyle type (userdata)
}

local function getIconImage(statusStyle): string?
	if statusStyle == ItemTileEnums.StatusStyle.PendingIcon then
		return "icons/status/pending_small"
	elseif statusStyle == ItemTileEnums.StatusStyle.AlertIcon then
		return "icons/actions/info_small"
	else
		return nil
	end
end

local function ItemTileStatusIcon(props: Props): React.Element<any>?
	local style = useStyle()
	local tokens = style.Tokens

	local statusStyle = props.statusStyle

	local iconImage = getIconImage(statusStyle)
	if not iconImage then
		return nil
	end

	local iconSize = getIconSize(IconSize.Small)
	local iconStyle = tokens.Semantic.Color.Icon.Emphasis

	return React.createElement(ImageSetComponent.Label, {
		Position = UDim2.fromOffset(tokens.Global.Size_100, tokens.Global.Size_100),
		Size = UDim2.fromOffset(iconSize, iconSize),
		BackgroundTransparency = 1,
		Image = Images[iconImage],
		ImageColor3 = iconStyle.Color3,
		ImageTransparency = iconStyle.Transparency,
	})
end

return ItemTileStatusIcon
