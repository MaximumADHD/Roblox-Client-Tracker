--[[
	NetworkInterfaceMock

	Provide dummy data for testing
]]
--

local Plugin = script.Parent.Parent.Parent
local Packages = Plugin.Packages

local Promise = require(Packages.Framework).Util.Promise

local AssetQuotaTypes = require(Plugin.Core.Types.AssetQuotaTypes)

-- public api
local NetworkInterfaceMock = {}
NetworkInterfaceMock.__index = NetworkInterfaceMock

function NetworkInterfaceMock.new()
	return setmetatable({}, NetworkInterfaceMock)
end

local function getFakeAsset(fakeId)
	return {
		asset = {
			id = fakeId,
			name = "Observation Tower Mock" .. fakeId,
			duration = 0,
			typeId = 10,
			isEndorsed = true,
			description = "mocked asset item",
			createdUtc = "2018-05-10T02:28:14.227Z",
			updatedUtc = "2018-06-10T02:28:14.24Z",
			assetGenres = {},
		},
		creator = {
			id = fakeId,
			name = "JUSTforTEST",
			type = 1,
		},
		thumbnail = {
			final = true,
			Url = "rbxasset://textures/StudioToolbox/Animation.png",
			retryUrl = nil,
			userId = 0,
			endpointType = "Avatar",
		},
		voting = {
			showVotes = true,
			upVotes = 4506,
			downVotes = 581,
			canVote = true,
			userVote = "", -- Vote Up
			hasVoted = false,
			reasonForNotVoteable = "",
		},
	}
end

function NetworkInterfaceMock:fakeAssetFactory(assetId)
	return getFakeAsset(assetId)
end

local function getCreationsFakeAsset(fakeId)
	return {
		assetId = fakeId,
		assetType = "Models",
		created = "2019-08-09T21:41:51.97Z",
		creatorType = "User",
		name = "Dummy" .. fakeId,
		creatorTargetId = 1010101,
		status = "Free",
		description = "mocked asset item",
		updated = "2021-05-06T19:56:54.437Z",
		priceConfiguration = {},
	}
end

local function getFakeToolboxItems(fakeId)
	return {
		id = fakeId,
		itemType = "Asset",
	}
end

function NetworkInterfaceMock:fakeToolboxItemFactory(assetId)
	return getFakeToolboxItems(assetId)
end

local function getFakeCreationsItems(fakeId)
	return {
		assetId = fakeId,
		name = "Dummy",
	}
end

local function createStringValueforVerification(categoryName, sortType)
	for i, child in ipairs(game.CoreGui:GetChildren()) do
		if child.Name == "CategoryVerification" then
			child:Destroy()
		end
	end

	local vString = Instance.new("StringValue", game.CoreGui)
	vString.Name = "CategoryVerification"

	local categoryString = Instance.new("StringValue", game.CoreGui.CategoryVerification)
	categoryString.Value = categoryName
	categoryString.Name = "Category"

	local sortTypeString = Instance.new("StringValue", game.CoreGui.CategoryVerification)
	sortTypeString.Value = sortType
	sortTypeString.Name = "Sort"

	return vString
end

local ARBITRARY_LARGE_TOTAL_COUNT = 10

function NetworkInterfaceMock:getAssets(pageInfo)
	local fakeItemListContent = {
		responseBody = {
			TotalResults = ARBITRARY_LARGE_TOTAL_COUNT,
		},
	}
	local Results = {}
	for i = 1, 10, 1 do
		Results[i] = getFakeAsset(i)
	end
	fakeItemListContent.responseBody.Results = Results

	return Promise.resolve(fakeItemListContent)
end

function NetworkInterfaceMock:postAssetCheckPermissions(actions, assetIds)
	local fakeAssetPermissionsList = {
		responseBody = {
			TotalResults = 11,
		},
	}
	local Results = {
		{ action = "Use", assetId = 7327, status = "HasPermission" },
		{ action = "Edit", assetId = 7327, status = "HasPermission" },
		{ action = "GrantAssetPermissions", assetId = 7327, status = "HasPermission" },
		{ action = "Use", assetId = 3127, status = "HasPermission" },
		{ action = "Edit", assetId = 3127, status = "HasPermission" },
		{ action = "GrantAssetPermissions", assetId = 3127, status = "NoPermission" },
		{ action = "GrantAssetPermissions", assetId = 2134, status = "AssetNotFound" },
		{ action = "Edit", assetId = 9765, status = "UnknownError" },
		{ action = "Use", assetId = 7340, status = "NoPermission" },
		{ action = "Edit", assetId = 7340, status = "NoPermission" },
		{ action = "GrantAssetPermissions", assetId = 7340, status = "NoPermission" },
	}
	fakeAssetPermissionsList.responseBody.results = Results
	return Promise.resolve(fakeAssetPermissionsList)
end

-- Intentionally ignoring that the real method has parameters because they are not used in this mock
function NetworkInterfaceMock:getToolboxItems(
	args: {
		categoryName: string,
		sortType: string?,
		keyword: string?,
		cursor: string?,
		limit: number?,
		ownerId: number?,
		creatorType: string?,
		creatorTargetId: number?,
		minDuration: number?,
		maxDuration: number?,
		includeOnlyVerifiedCreators: boolean?,
	}
)
	local categoryName = args.categoryName
	local sortType = args.sortType

	createStringValueforVerification(categoryName, sortType)
	local fakeItemListContent = {
		responseBody = {
			totalResults = ARBITRARY_LARGE_TOTAL_COUNT,
		},
	}
	local data = {}
	for i = 1, 10, 1 do
		data[i] = getFakeToolboxItems(i)
	end
	fakeItemListContent.responseBody.data = data

	return Promise.resolve(fakeItemListContent)
end

function NetworkInterfaceMock:getItemDetails(items)
	local responseData = {}
	for _, item in ipairs(items) do
		local res = getFakeAsset(tostring(item.id))

		table.insert(responseData, res)
	end

	return Promise.resolve({
		responseBody = {
			data = responseData,
		},
	})
end

function NetworkInterfaceMock:getDevelopAsset(pageInfo)
	local fakeItemListContent = {
		responseBody = {
			totalResults = ARBITRARY_LARGE_TOTAL_COUNT,
			results = {},
		},
	}
	local data = {}
	for i = 1, 10, 1 do
		data[i] = getFakeToolboxItems(i)
	end
	fakeItemListContent.responseBody.results.data = data

	return Promise.resolve(fakeItemListContent)
end

local function getFakeCreations()
	local fakeItemListContent = {
		responseBody = {},
	}
	local data = {}
	for i = 1, 10, 1 do
		data[i] = getFakeCreationsItems(i)
	end
	fakeItemListContent.responseBody.data = data

	return Promise.resolve(fakeItemListContent)
end

function NetworkInterfaceMock:getAssetCreations(items)
	return getFakeCreations()
end

function NetworkInterfaceMock:getAssetGroupCreations(items)
	return getFakeCreations()
end

function NetworkInterfaceMock:getGroupAnimations(cursor, groupId)
	return Promise.resolve({})
end

function NetworkInterfaceMock:getAssetCreationDetails(assetIds)
	local responseData = {}
	for i = 1, #assetIds do
		responseData[i] = getCreationsFakeAsset(i)
	end

	return Promise.resolve({
		responseBody = responseData,
	})
end

function NetworkInterfaceMock:getCreatorInfo(creatorId, creatorType)
	local fakeItemListContent = {
		responseBody = {
			AvatarFinal = false,
			Id = "1010101",
			IsOnline = false,
			Username = "testAccount",
		},
	}
	return Promise.resolve(fakeItemListContent)
end

function NetworkInterfaceMock:configureSales(assetId, saleStatus, price)
	return Promise.resolve({})
end

function NetworkInterfaceMock:updateSales(assetId, price)
	return Promise.resolve({})
end

-- Pass this a list of assets and it returns a promise with the same data structure as returned from the web
function NetworkInterfaceMock:resolveAssets(assets, totalResults, nextPageCursor)
	return Promise.resolve({
		responseBody = {
			TotalResults = totalResults or #assets,
			Results = assets,
			nextPageCursor = nextPageCursor,
		},
	})
end

function NetworkInterfaceMock:getVote(assetId: number, assetType)
	local fakeResponse = {
		userVote = true
	}
	return Promise.resolve(fakeResponse)
end

function NetworkInterfaceMock:postVote(assetId)
	return Promise.resolve({
		model = {
			HasVoted = true,
			CanVote = true,
			upVotes = 4507,
			UserVote = true,
			DownVote = 581,
			ShowVotes = true,
		},
		success = true,
		message = "This is a test message",
	})
end

function NetworkInterfaceMock:postUnvote(assetId)
	return Promise.resolve({
		model = {
			HasVoted = false,
			CanVote = true,
			upVotes = 4506,
			UserVote = "",
			DownVote = 581,
			ShowVotes = true,
		},
		success = true,
		message = "This is a test message",
	})
end

function NetworkInterfaceMock:postFavorite(userId, assetId)
	return Promise.resolve({})
end

function NetworkInterfaceMock:deleteFavorite(userId, assetId)
	return Promise.resolve({})
end

function NetworkInterfaceMock:postInsertAsset(assetId)
	return true
end

function NetworkInterfaceMock:getManageableGroups()
	local fakeGroups = {
		responseBody = {
			data = {},
		},
	}
	return Promise.resolve(fakeGroups)
end

function NetworkInterfaceMock:getUsers(searchTerm, numResults)
	return Promise.resolve({})
end

function NetworkInterfaceMock:getCanManageAsset(assetId, myUserId)
	return Promise.resolve({
		responseBody = {
			CanManage = true,
			Success = true,
		},
	})
end

function NetworkInterfaceMock:getRobuxBalance(myUserId)
	return Promise.resolve({
		responseBody = {
			robux = "16",
		},
	})
end

function NetworkInterfaceMock:getFavoriteCounts(assetId)
	return Promise.resolve({
		responseBody = "10",
	})
end

function NetworkInterfaceMock:getFavorited(assetId)
	return Promise.resolve({
		responseBody = "null",
	})
end

function NetworkInterfaceMock:getMetaData()
	return Promise.resolve({})
end

function NetworkInterfaceMock:getTagsMetadata()
	return Promise.resolve({})
end

function NetworkInterfaceMock:uploadCatalogItem(formBodyData, boundary)
	return Promise.resolve({})
end

function NetworkInterfaceMock:uploadCatalogItemFormat(assetId, type, name, description, isPublic, format, instanceData)
	return Promise.resolve({})
end

function NetworkInterfaceMock:getCreatorMarketplaceQuotas(
	assetType: Enum.AssetType,
	resourceType: AssetQuotaTypes.AssetQuotaResourceType
)
	return Promise.resolve({})
end

return NetworkInterfaceMock
