--[[
	Grid layout of individual makeup item viewports.
	Shows each makeup Decal in the look as a separate preview on a head.
	Used by both PublishAvatarAssetPrompt (single asset) and PublishMakeupLookPrompt (multi asset).
]]
local CorePackages = game:GetService("CorePackages")
local React = require(CorePackages.Packages.React)
local UIBlox = require(CorePackages.Packages.UIBlox)
local GridMetrics = UIBlox.App.Grid.GridMetrics
local DefaultMetricsGridView = UIBlox.App.Grid.DefaultMetricsGridView
local ItemTile = UIBlox.Tile.ItemTile

local Constants = require(script.Parent.Parent.Parent.Constants)
local AvatarItemCard = require(script.Parent.Parent.PublishAvatarPrompt.AvatarParts.AvatarItemCard)

local GetFFlagUploadMakeupSupport = require(script.Parent.Parent.Parent.Flags.GetFFlagUploadMakeupSupport)

local ITEM_HEIGHT_RATIO = 4 / 3
local ITEM_PADDING = Vector2.new(20, 20)
local MIN_ITEMS_PER_ROW = 2
local NUM_LOADING_ITEMS = 2

local ASSET_TYPE_DISPLAY_NAMES = {
	[Enum.AvatarAssetType.FaceMakeup] = "Face Makeup",
	[Enum.AvatarAssetType.LipMakeup] = "Lip Makeup",
	[Enum.AvatarAssetType.EyeMakeup] = "Eye Makeup",
	[Enum.AvatarAssetType.EyebrowAccessory] = "Eyebrow",
	[Enum.AvatarAssetType.EyelashAccessory] = "Eyelash",
}

type Props = {
	makeupFolder: Folder?,
	singleDecal: Instance?,
	singleAssetType: Enum.AvatarAssetType?,
	makeupEntries: { any }?,
	showAssetTypeInLabel: boolean?,
	name: string,
	LayoutOrder: number?,
	screenSize: Vector2,
}

local function getItemsFromFolder(
	folder: Folder,
	name: string,
	makeupEntries: { any }?,
	showAssetTypeInLabel: boolean
): { AvatarItemCard.Props }
	local items: { AvatarItemCard.Props } = {}
	local children = folder:GetChildren()

	for i, child in ipairs(children) do
		if child:IsA("Decal") or child:IsA("Accessory") then
			local bodyName = nil
			local partName = name
			local assetType = nil

			if makeupEntries and makeupEntries[i] then
				assetType = makeupEntries[i]["assetType"]
			end

			if showAssetTypeInLabel then
				if GetFFlagUploadMakeupSupport() then
					local assetTypeName = child.Name
					if assetType and ASSET_TYPE_DISPLAY_NAMES[assetType] then
						assetTypeName = ASSET_TYPE_DISPLAY_NAMES[assetType]
					end
					partName = name .. " - " .. assetTypeName
				else
					bodyName = name
					partName = child.Name
					if assetType and ASSET_TYPE_DISPLAY_NAMES[assetType] then
						partName = ASSET_TYPE_DISPLAY_NAMES[assetType]
					end
				end
			end

			local sortOrder = i
			if makeupEntries and makeupEntries[i] and makeupEntries[i]["sortOrder"] then
				sortOrder = makeupEntries[i]["sortOrder"]
			end

			table.insert(items, {
				asset = child,
				assetType = assetType,
				bodyName = bodyName,
				partName = partName,
				LayoutOrder = sortOrder,
			})
		end
	end

	table.sort(items, function(a, b)
		return (a.LayoutOrder or 0) < (b.LayoutOrder or 0)
	end)

	return items
end

local function MakeupPartGrid(props: Props)
	local items, setItems = React.useState({} :: { AvatarItemCard.Props })

	local showAssetTypeInLabel = if props.showAssetTypeInLabel == nil then true else props.showAssetTypeInLabel

	React.useEffect(function()
		if props.makeupFolder then
			setItems(getItemsFromFolder(props.makeupFolder, props.name, props.makeupEntries, showAssetTypeInLabel))
		elseif props.singleDecal then
			local bodyName = nil
			local partName = props.name
			local assetType = props.singleAssetType

			if showAssetTypeInLabel then
				bodyName = props.name
				partName = props.singleDecal.Name
				if assetType and ASSET_TYPE_DISPLAY_NAMES[assetType] then
					partName = ASSET_TYPE_DISPLAY_NAMES[assetType]
				end
			end

			setItems({
				{
					asset = props.singleDecal,
					assetType = assetType,
					bodyName = bodyName,
					partName = partName,
					LayoutOrder = 1,
				} :: any,
			})
		else
			local loadingItems: any = {}
			for i = 1, NUM_LOADING_ITEMS do
				loadingItems[i] = {}
			end
			setItems(loadingItems)
		end
	end, { props.makeupFolder, props.singleDecal } :: { any })

	-- Update labels when the name changes
	React.useEffect(function()
		if items[1] and items[1].asset then
			local newItems: { AvatarItemCard.Props } = {}
			for index, item in items do
				local bodyName = item.bodyName
				local partName = item.partName

				if GetFFlagUploadMakeupSupport() then
					if showAssetTypeInLabel then
						local assetTypeName = item.assetType and ASSET_TYPE_DISPLAY_NAMES[item.assetType] or ""
						partName = props.name .. " - " .. assetTypeName
					else
						partName = props.name
					end
					bodyName = nil
				else
					if showAssetTypeInLabel then
						bodyName = props.name
					else
						partName = props.name
					end
				end

				newItems[index] = {
					asset = item.asset,
					assetType = item.assetType,
					bodyName = bodyName,
					partName = partName,
					LayoutOrder = item.LayoutOrder,
				}
			end
			setItems(newItems)
		end
	end, { props.name } :: { any })

	local isPortrait = props.screenSize.Y > props.screenSize.X
	local itemCardWidth = if isPortrait then Constants.ItemCardWidthPortrait else Constants.ItemCardWidthLandscape

	local renderItem = React.useCallback(function(item: AvatarItemCard.Props)
		if item.asset then
			return React.createElement(AvatarItemCard, {
				asset = item.asset,
				assetType = item.assetType,
				bodyName = item.bodyName,
				partName = item.partName,
				viewportSize = itemCardWidth,
			})
		else
			return React.createElement(ItemTile)
		end
	end, { itemCardWidth, props.name } :: { any })

	return React.createElement("Frame", {
		Size = UDim2.fromScale(1, 0),
		AutomaticSize = Enum.AutomaticSize.Y,
		LayoutOrder = props.LayoutOrder,
		BackgroundTransparency = 1,
	}, {
		Grid = React.createElement(DefaultMetricsGridView, {
			getItemHeight = function(width: number)
				return width * ITEM_HEIGHT_RATIO
			end,
			getItemMetrics = GridMetrics.makeCustomMetricsGetter({
				minimumItemsPerRow = MIN_ITEMS_PER_ROW,
				minimumItemWidth = itemCardWidth,
			}),
			renderItem = renderItem,
			itemPadding = ITEM_PADDING,
			items = items,
		}),
	})
end

return MakeupPartGrid
