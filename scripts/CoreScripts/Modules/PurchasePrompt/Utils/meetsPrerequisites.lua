local Root = script.Parent.Parent
local Players = game:GetService("Players")
local Workspace = game:GetService("Workspace")

local Constants = require(Root.Misc.Constants)
local PurchaseError = require(Root.Enums.PurchaseError)

local FFlagEnableUGC4ACollectiblePurchaseSupport = require(Root.Parent.Flags.FFlagEnableUGC4ACollectiblePurchaseSupport)

local CONTENT_RATING_13_PLUS = 1
local ROBLOX_CREATOR = 1

local THIRD_PARTY_WARNING = "AllowThirdPartySales has blocked the purchase"
	.. " prompt for %d created by %d. To sell this asset made by a"
	.. " different %s, you will need to enable AllowThirdPartySales."

local function meetsPrerequisites(productInfo, alreadyOwned, restrictThirdParty, externalSettings, expectedPrice)
	local isCollectibleItem = productInfo.ProductType == Constants.ProductType.CollectibleItem
	local isLimited = if FFlagEnableUGC4ACollectiblePurchaseSupport and productInfo.CollectiblesItemDetails then productInfo.CollectiblesItemDetails.IsLimited else nil

	
	if FFlagEnableUGC4ACollectiblePurchaseSupport then
		-- A user can own multiple instances of a Limited Collectible item
		if isCollectibleItem then
			if not isLimited and alreadyOwned then
				return false, PurchaseError.AlreadyOwn
			end
		else
			if alreadyOwned then
				return false, PurchaseError.AlreadyOwn
			end
		end
	else
		-- A user can own multiple instances of a Collectible item
		if not isCollectibleItem and alreadyOwned then
			return false, PurchaseError.AlreadyOwn
		end
	end

	-- Resale cases should have precedence over the following conditions.
	if (expectedPrice == nil) and not (productInfo.IsForSale or productInfo.IsPublicDomain) then
		return false, PurchaseError.NotForSale
	end

	if (expectedPrice == nil) and externalSettings.GetFFlagEnableRestrictedAssetSaleLocationPurchasePrompt()
			and productInfo.CanBeSoldInThisGame == false then
		return false, PurchaseError.NotForSaleHere
	end

	if FFlagEnableUGC4ACollectiblePurchaseSupport then
		if (expectedPrice == nil) and ((isCollectibleItem and isLimited) or productInfo.IsLimited or productInfo.IsLimitedUnique) then
			if productInfo.Remaining == nil or productInfo.Remaining == 0 then
				return false, PurchaseError.Limited
			end
		end
	else
		if (expectedPrice == nil) and (isCollectibleItem or productInfo.IsLimited or productInfo.IsLimitedUnique) then
			if productInfo.Remaining == nil or productInfo.Remaining == 0 then
				return false, PurchaseError.Limited
			end
		end
	end

	if productInfo.MinimumMembershipLevel == Enum.MembershipType.Premium.Value
			and (Players.LocalPlayer :: Player).MembershipType ~= Enum.MembershipType.Premium then
		return false, PurchaseError.PremiumOnly
	end

	if productInfo.ContentRatingTypeId == CONTENT_RATING_13_PLUS and (Players.LocalPlayer :: Player):GetUnder13() then
		return false, PurchaseError.Under13
	end

	local allowThirdPartyPurchase = true
	if externalSettings.getLuaUseThirdPartyPermissions() then
		-- Use Q2 2020 universe-wide permission to restrict access.
		allowThirdPartyPurchase = externalSettings.isThirdPartyPurchaseAllowed()
	else
		-- TODO(DEVTOOLS-4227): Need to remove here before removing AllowThirdPartySales from DataModel/Workspace.
		allowThirdPartyPurchase = Workspace.AllowThirdPartySales
	end

	-- Restricting third party sales is only valid for Assets and Game Passes
	if productInfo.ProductType ~= Constants.ProductType.DeveloperProduct
		and restrictThirdParty
		and not allowThirdPartyPurchase
	then
		local isGroupGame = game.CreatorType == Enum.CreatorType.Group
		local isGroupAsset = productInfo.Creator.CreatorType == "Group"
		local productCreator = tonumber(productInfo.Creator.CreatorTargetId)

		--[[
			Third party sales will be restricted if the creator of the asset
			is not the creator of this game, whether the creators be users or groups
		]]
		if productCreator ~= ROBLOX_CREATOR
			and (isGroupGame ~= isGroupAsset or productCreator ~= game.CreatorId)
		then
			--[[
				Typically we avoid messaging the console for core scripts, but
				in this case we want to inform developers why their game isn't
				allowing sales while they're testing.
			]]
			warn((THIRD_PARTY_WARNING):format(
				productInfo.AssetId,
				productCreator,
				isGroupGame and "group" or "user"
			))
			return false, PurchaseError.ThirdPartyDisabled
		end
	end

	-- No failed prerequisites
	return true, nil
end

return meetsPrerequisites
