--[[
	ServerBulkPurchaseEvent is a server script that handles the bulk purchase event.
	It is used to prompt a bulk purchase from the inspect and buy menu client core script.

    To prevent security exploits, bulk purchase prompts can only be initiated from a server script

    - All items are validated against the batch item details API for regionally restricted assets and bundles
    - Total items are validated against the bulk purchase limit (At this time, the bulk purchase limit is 20 items)
    - All in-experience items with original stock remaining are not forwarded to the marketplace service bulk purchase request
    - All Bulk purchase attempts are throttled by player
]]
local RobloxReplicatedStorage = game:GetService("RobloxReplicatedStorage")
local CorePackages = game:GetService("CorePackages")
local MarketplaceService = game:GetService("MarketplaceService")
local Players = game:GetService("Players")
local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")
local Url = require(CorePackages.Workspace.Packages.CoreScriptsCommon).Url

local FFlagAXEnableInspectAndBuyBulkPurchase =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagAXEnableInspectAndBuyBulkPurchase
local FIntBulkPurchaseRequestLimit = require(CorePackages.Workspace.Packages.SharedFlags).FIntBulkPurchaseRequestLimit
local FIntBulkPurchaseThrottleLimit = require(CorePackages.Workspace.Packages.SharedFlags).FIntBulkPurchaseThrottleLimit
local FFlagFilterOutShopOnlyItemsOnBulkPurchase =
	require(CorePackages.Workspace.Packages.SharedFlags).FFlagFilterOutShopOnlyItemsOnBulkPurchase

--[[
    Item type each item in the bulk purchase event
]]
type BulkPurchaseEventItem = {
	id: number,
	itemType: number,
}

if FFlagAXEnableInspectAndBuyBulkPurchase then
	local ServerSideBulkPurchaseEvent = Instance.new("RemoteEvent")
	ServerSideBulkPurchaseEvent.Name = "ServerSideBulkPurchaseEvent"
	ServerSideBulkPurchaseEvent.Parent = RobloxReplicatedStorage
	local throttleMap = {}

	local InExperienceSalesLocationTypes = {
		MyExperiencesOnly = "MyExperiencesOnly" :: "MyExperiencesOnly",
		ExperiencesById = "ExperiencesById" :: "ExperiencesById",
		ExperiencesDevApiOnly = "ExperiencesDevApiOnly" :: "ExperiencesDevApiOnly",
	}

	local ShopOnlySalesLocationTypes = if FFlagFilterOutShopOnlyItemsOnBulkPurchase
		then {
			ShopOnly = "ShopOnly" :: "ShopOnly",
		}
		else nil

	local ItemRestrictions = {
		Limited = "Limited" :: "Limited",
		LimitedUnique = "LimitedUnique" :: "LimitedUnique",
		Collectible = "Collectible" :: "Collectible",
	}

	local ItemTypeToMarketplaceProductType: { [string]: Enum.MarketplaceProductType } = {
		["Bundle"] = Enum.MarketplaceProductType.AvatarBundle,
		["Asset"] = Enum.MarketplaceProductType.AvatarAsset,
	}

	--[[
		Get all item details from the batch item details API
	]]
	local function getBatchItemDetailsServerSide(items)
		local success, result = pcall(function()
			local apiPath = "v1/catalog/items/details"
			local url = Url.CATALOG_URL .. apiPath

			local requestBody = HttpService:JSONEncode({
				items = items,
			})

			local response = HttpRbxApiService:PostAsyncFullUrl(
				url,
				requestBody,
				Enum.ThrottlingPriority.Default,
				Enum.HttpContentType.ApplicationJson
			)

			return HttpService:JSONDecode(response)
		end)

		if success then
			return result
		else
			return nil
		end
	end

	--[[
        Checks if the item is limited, limited unique, or collectible. This is the equivalent of the
        "isLimited" field from the economy API /v2/assets/:assetId/details
    ]]
	local function isLimited(item): boolean
		local itemRestrictions = item.itemRestrictions
		local isLimited = itemRestrictions and table.find(itemRestrictions, ItemRestrictions.Limited)
		local isLimitedUnique = itemRestrictions and table.find(itemRestrictions, ItemRestrictions.LimitedUnique)
		local isCollectible = itemRestrictions and table.find(itemRestrictions, ItemRestrictions.Collectible)
		return isLimited ~= nil or isLimitedUnique ~= nil or isCollectible ~= nil
	end

	--[[
        Validates that the player parameter has a valid UserId
    ]]
	local function validatePlayer(player)
		-- Check if player has a valid UserId (guest users have UserId 0)
		if not player.UserId or player.UserId <= 0 then
			return false
		end
		return true
	end

	--[[
        Validates that the incoming item from the remote event is valid
    ]]
	local function validateItem(item: BulkPurchaseEventItem): boolean
		if
			type(item) ~= "table"
			or item.id == nil
			or item.itemType == nil
			or type(item.itemType) ~= "number"
			or type(item.id) ~= "number"
			or item.id == 0
			or (item.itemType ~= Enum.AvatarItemType.Asset.Value and item.itemType ~= Enum.AvatarItemType.Bundle.Value)
		then
			return false
		end
		return true
	end

	--[[
		filter out all items that have invalid item type format
	]]
	local function validateIncomingItems(items: { BulkPurchaseEventItem }): { BulkPurchaseEventItem }?
		local validatedItems = {}

		if not items then
			return nil
		end

		if type(items) ~= "table" then
			return nil
		end

		if #items > FIntBulkPurchaseRequestLimit then
			return nil
		end

		local validatedItemCount = 0
		for _, item in items do
			-- break early if we have reached the bulk purchase limit
			if validatedItemCount >= FIntBulkPurchaseRequestLimit then
				break
			end
			if not validateItem(item) then
				continue
			end
			table.insert(validatedItems, {
				id = item.id,
				itemType = item.itemType,
			})
			validatedItemCount = validatedItemCount + 1
		end
		return validatedItems
	end

	local function isThrottled(player)
		local throttleFinishedTime = throttleMap[player]
		if throttleFinishedTime and tick() < throttleFinishedTime then
			return true
		end
		throttleMap[player] = tick() + FIntBulkPurchaseThrottleLimit
		return false
	end

	Players.PlayerRemoving:Connect(function(player)
		throttleMap[player] = nil
	end)

	ServerSideBulkPurchaseEvent.OnServerEvent:Connect(function(player, items: { BulkPurchaseEventItem })
		-- validate player
		if not validatePlayer(player) then
			return
		end

		-- Check if the player is throttled before proceeding
		if isThrottled(player) then
			return
		end

		local validatedItems = validateIncomingItems(items)
		-- all items were invalid, return early
		if validatedItems == nil or #validatedItems == 0 then
			return
		end

		--[[
            The batch item details API will filter out regionally restricted assets and bundles.
            We also need to filter out all items that are purchasable from in-experience.

            For purchases, similar to MarketplaceService:PromptPurchase, resale of all shop collectibles
            and qualified in-experience items will be allowed.
        ]]
		local itemDetails = getBatchItemDetailsServerSide(validatedItems)
		local bulkPurchaseRequestPayload = {}
		if itemDetails ~= nil then
			for _, item in itemDetails.data do
				if
					item.saleLocationType == InExperienceSalesLocationTypes.MyExperiencesOnly
					or item.saleLocationType == InExperienceSalesLocationTypes.ExperiencesById
					or item.saleLocationType == InExperienceSalesLocationTypes.ExperiencesDevApiOnly
				then
					if not (item.unitsAvailableForConsumption == 0 and isLimited(item)) then
						--[[
                        If the in-experience item is limited, limited unique, or collectible
                        and still has original stock, we skip it. This is a stricter version
                        of the logic in MarketplaceService:promptPurchaseOnProductInfoReceived(),
                        which determines when to purchase from resale using the following check:

                            (remaining == 0 || !passSaleLocationConstraint) && isLimited

                        passSaleLocationConstraint is true if the player’s current universe
                        is approved for the item’s primary sale; otherwise false. Here, it
                        will always resolve to false (i.e. whether or not the player is in a
                        valid universe).

                        By enforcing this stricter check, the server script avoids purchasing
                        from original stock in every scenario, since those purchases should only ever
                        be initiated by the original game creator/system.
                    ]]
						continue
					end
				end

				-- if the item is shop-only, skip it unless it is a limited with no original stock
				if
					FFlagFilterOutShopOnlyItemsOnBulkPurchase
					and ShopOnlySalesLocationTypes
					and item.saleLocationType == ShopOnlySalesLocationTypes.ShopOnly
					and not (item.unitsAvailableForConsumption == 0 and isLimited(item)) 
				then
					continue
				end

				table.insert(bulkPurchaseRequestPayload, {
					Id = tostring(item.id),
					Type = ItemTypeToMarketplaceProductType[item.itemType],
				})
			end
		end

		-- Successfully retrieved item details, proceed with bulk purchase
		if #bulkPurchaseRequestPayload > 0 then
			MarketplaceService:PromptBulkPurchase(player, bulkPurchaseRequestPayload, {})
		end
	end)
end
