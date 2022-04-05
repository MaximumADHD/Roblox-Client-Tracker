--[[
	Helper function that builds and returns table of Tile elements for each asset/bundle/guid
]]

local Library = script.Parent.Parent.Parent
local Packages = Library.Parent
local Roact = require(Packages.Roact)

local TileTypes = require(script.Parent.types)

local Components = Library.Components
local Tile = require(Components.Tile)

local Framework = require(Packages.Framework)
local Util = Framework.Util
local LayoutOrderIterator = Util.LayoutOrderIterator

local function createThumbnailTile(props, id, order)
	local assetsInfo = props.AssetsInfo
	local onThumbnailClick = props.OnThumbnailClick
	local defaultThumbnail = props.DefaultThumbnail

	local selected = props.SelectedTiles[id] ~= nil

	local image = defaultThumbnail

	local infoForAsset = assetsInfo[id] -- will only be available on production
	if infoForAsset then
		local thumbnailType = infoForAsset.ThumbnailType
		if thumbnailType and thumbnailType ~= "" then
			image = "rbxthumb://type=" ..thumbnailType .."&id=" .. tostring(id) .. "&w=150&h=150"
		end
		return Roact.createElement(Tile, {
			OnClick = function()
				onThumbnailClick(id, selected)
			end,
			Text = infoForAsset.Name or infoForAsset.name or "",
			IsOn = selected,
			LayoutOrder = order,
			Image = image,
		})
	end
end

return function(props: TileTypes.AssetThumbnailTileProps)
	local assetIds = props.AssetIds
	local layoutOrder = props.LayoutOrder

	local orderIterator = LayoutOrderIterator.new()
	local tileLayoutOrder = layoutOrder
	local tiles = {}
	for _, id in ipairs(assetIds) do
		tiles[tileLayoutOrder] = createThumbnailTile(props, id, tileLayoutOrder)
		tileLayoutOrder = layoutOrder + orderIterator:getNextOrder()
	end
	return tiles
end