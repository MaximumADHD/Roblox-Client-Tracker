--[[
	Mock network implementation that returns values in the expected
	formats, or returns promise rejections if specified
]]
local Promise = require(script.Parent.Parent.Promise)

local function getABTestGroup()
	return Promise.resolve(false)
end

local function getProductInfo(id, infoType)
	return Promise.resolve({
		AssetId	= 1,
		AssetTypeId	= 2,
		ContentRatingTypeId = 0,
		Creator = {
			CreatorType = "Group",
			CreatorTargetId = 1,
			Name = "ROBLOX",
			Id = 1,
		},
		Description = "This item isn't real!",
		IconImageAssetId = 1,
		IsForSale = true,
		IsLimited = false,
		IsLimitedUnique = false,
		IsNew = false,
		IsPublicDomain = false,
		MinimumMembershipLevel = 0,
		Name = "Test Item",
		PriceInRobux = 100,
		ProductId = 1,
	})
end

local function getPlayerOwns(player, id, infoType)
	return Promise.resolve(false)
end

local function performPurchase(infoType, productId, expectedPrice, requestId)
	return Promise.resolve({
		success = true,
		purchased = true,
		receipt = "fake-receipt-hash",
	})
end

local function loadAssetForEquip(assetId)
	return Promise.resolve(Instance.new("Tool"))
end

local function getAccountInfo()
	return Promise.resolve({
		RobuxBalance = 2147483647,
		MembershipType = 0,
	})
end

local function getBundleDetails(bundleId)
	return Promise.resolve({
		id = 1,
		name = "mock-name",
		description = "mock-description",
		items = {
			[1] = {
				id = 1,
				name = "outfit-name",
				type = "UserOutfit",
			},
		},
		creator = {
			id = 1,
			name = "ROBLOX",
			type = "User",
		},
		product = {
			id = 1,
			isForSale = true,
			priceInRobux = 100,
		}
	})
end

local function getProductPurchasableDetails(productId)
	return Promise.resolve({
		purchasable = false,
		reason = "mock-reason",
		price = 100,
	})
end

local function postPremiumImpression()
	return Promise.resolve()
end

local function getPremiumUpsellPrecheck()
	return Promise.resolve(true)
end

local function networkFailure(id, infoType)
	return Promise.reject("Failed to access network service")
end

local MockNetwork = {}
MockNetwork.__index = MockNetwork

function MockNetwork.new(shouldFail)
	local mockNetworkService

	if shouldFail then
		mockNetworkService = {
			getABTestGroup = networkFailure,
			getProductInfo = networkFailure,
			getPlayerOwns = networkFailure,
			performPurchase = networkFailure,
			loadAssetForEquip = networkFailure,
			getAccountInfo = networkFailure,
			getBundleDetails = networkFailure,
			getProductPurchasableDetails = networkFailure,
			postPremiumImpression = networkFailure,
			getPremiumUpsellPrecheck = networkFailure,
		}
	else
		mockNetworkService = {
			getABTestGroup = getABTestGroup,
			getProductInfo = getProductInfo,
			getPlayerOwns = getPlayerOwns,
			performPurchase = performPurchase,
			loadAssetForEquip = loadAssetForEquip,
			getAccountInfo = getAccountInfo,
			getBundleDetails = getBundleDetails,
			getProductPurchasableDetails = getProductPurchasableDetails,
			postPremiumImpression = postPremiumImpression,
			getPremiumUpsellPrecheck = getPremiumUpsellPrecheck,
		}
	end

	setmetatable(mockNetworkService, {
		__tostring = function()
			return "MockService(Network)"
		end
	})

	return mockNetworkService
end

return MockNetwork