--[[
	Overlays an unselected checkbox on to the tile. This is typically used when the tile is part of a multi select
	item grid and is not selected.
]]
local BaseTile = script.Parent
local Tile = BaseTile.Parent
local App = Tile.Parent
local UIBlox = App.Parent
local Packages = UIBlox.Parent
local UIBloxConfig = require(UIBlox.UIBloxConfig)

local Roact = require(Packages.Roact)
local t = require(Packages.t)

local Images = require(UIBlox.App.ImageSet.Images)
local ImageSetComponent = require(UIBlox.Core.ImageSet.ImageSetComponent)
local withStyle = require(UIBlox.Core.Style.withStyle)

local TileUnselectedOverlay = Roact.PureComponent:extend("TileUnselectedOverlay")

local ICON_SIZE = 24

local UNSELECTED_IMAGE = Images["squircles/hollow"]

TileUnselectedOverlay.validateProps = t.strictInterface({
	ZIndex = t.optional(t.integer),
})

function TileUnselectedOverlay:render()
	local zIndex = self.props.ZIndex

	return withStyle(function(style: any)
		local tokens = style.Tokens

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
				Position = UDim2.new(
					1,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then -tokens.Size.Size_200
						else -tokens.Global.Size_100,
					0,
					if UIBloxConfig.deprecateComponentGlobalSemanticTokenUse
						then tokens.Size.Size_200
						else tokens.Global.Size_100
				),
				Size = UDim2.fromOffset(ICON_SIZE, ICON_SIZE),
			}),
		})
	end)
end

return TileUnselectedOverlay
