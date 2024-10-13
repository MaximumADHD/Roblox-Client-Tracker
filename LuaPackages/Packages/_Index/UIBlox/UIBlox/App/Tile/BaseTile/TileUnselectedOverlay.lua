--[[
	Overlays an unselected checkbox on to the tile. This is typically used when the tile is part of a multi select
	item grid and is not selected.
]]
local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local withStyle = require(UIBlox.Core.Style.withStyle)
local UIBloxConfig = require(Packages.UIBlox.UIBloxConfig)

local TileUnselectedOverlay = Roact.PureComponent:extend("TileUnselectedOverlay")

local ICON_SIZE = 24

local UNSELECTED_IMAGE = Images["squircles/hollow"]

TileUnselectedOverlay.validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer),
})

function TileUnselectedOverlay:render()
	local zIndex = self.props.ZIndex

	return withStyle(function(style: any)
		local paddingRight, paddingTop
		if UIBloxConfig.itemTileOverlayPaddingUseTokens then
			local tokens = style.Tokens
			paddingRight = tokens.Global.Size_100
			paddingTop = tokens.Global.Size_100
		else
			paddingRight = 12
			paddingTop = 12
		end

		return Roact.createElement("Frame", {
			BackgroundTransparency = 1,
			BorderSizePixel = 0,
			Size = UDim2.new(1, 0, 1, 0),
			ZIndex = zIndex,
		}, {
			SelectionImage = Roact.createElement(ImageSetComponent.Label, {
				AnchorPoint = Vector2.new(1, 0),
				BackgroundTransparency = 1,
				Image = UNSELECTED_IMAGE,
				Position = UDim2.new(1, -paddingRight, 0, paddingTop),
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			}),
		})
	end)
end

return TileUnselectedOverlay
