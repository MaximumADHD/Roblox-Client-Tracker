--[[
	Mock network implementation that returns values in the expected
	formats, or returns promise rejections if specified
]]
local Promise = require(script.Parent.Parent.Promise)

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

local function networkFailure(id, infoType)
	return Promise.reject("Failed to access network service")
end

local MockNetwork = {}
MockNetwork.__index = MockNetwork

function MockNetwork.new(shouldFail)
	local mockNetworkService

	if shouldFail then
		mockNetworkService = {
			getProductInfo = networkFailure,
			getPlayerOwns = networkFailure,
			performPurchase = networkFailure,
			loadAssetForEquip = networkFailure,
			getAccountInfo = networkFailure,
		}
	else
		mockNetworkService = {
			getProductInfo = getProductInfo,
			getPlayerOwns = getPlayerOwns,
			performPurchase = performPurchase,
			loadAssetForEquip = loadAssetForEquip,
			getAccountInfo = getAccountInfo,
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