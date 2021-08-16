--[[
	NetworkInterfaceMock

	Provide dummy data for testing
]]--

local Plugin = script.Parent.Parent.Parent

local Promise = require(Plugin.Libs.Framework).Util.Promise

-- public api
local NetworkInterfaceMock = {}
NetworkInterfaceMock.__index = NetworkInterfaceMock

function NetworkInterfaceMock.new()
	return setmetatable({}, NetworkInterfaceMock)
end

local function getFakeAsset(fakeId)
	return {
		Asset = {
			Id = fakeId,
			Name = "Observation Tower Mock",
			Duration = 0,
			TypeId = 10,
			IsEndorsed = true,
			Description = "mocked asset item",
			CreatedUtc = "2019-05-01T00:37:18.59Z",
			UpdatedUtc = "2021-05-06T19:56:54.437Z",
		},
		Creator = {
			Id = fakeId,
			Name = "Quenty",
			Type = 1,
		},
		Thumbnail = {
			Final = true,
			Url = "https://t7.rbxcdn.com/25cf9d71d60973993f9c08eb605ffe99",
			RetryUrl = nil,
			UserId = 0,
			EndpointType = "Avatar",
		},
		Voting = {
			ShowVotes = true,
			UpVotes = 4506,
			DownVotes = 581,
			CanVote = true,
			UserVote = true, -- Vote Up
			HasVoted = true,
			ReasonForNotVoteable = "",
		},
	}
end

local function getFakeToolboxItems(fakeId)
	return {
		id = fakeId,
		itemType = "Asset"
	}
end

local ARBITRARY_LARGE_TOTAL_COUNT = 7150107

function NetworkInterfaceMock:getAssets(pageInfo)
	local fakeItemListContent = {
		responseBody = {
			TotalResults = ARBITRARY_LARGE_TOTAL_COUNT,
		}
	}
	local Results = {}
	for i = 1, 100, 1 do
		Results[i] = getFakeAsset(i)
	end
	fakeItemListContent.responseBody.Results = Results

	return Promise.resolve(fakeItemListContent)
end

-- Intentionally ignoring that the real method has parameters because they are not used in this mock
function NetworkInterfaceMock:getToolboxItems()
	local fakeItemListContent = {
		responseBody = {
			totalResults = ARBITRARY_LARGE_TOTAL_COUNT,
		}
	}
	local data = {}
	for i = 1, 100, 1 do
		data[i] = getFakeToolboxItems(i)
	end
	fakeItemListContent.responseBody.data = data

	return Promise.resolve(fakeItemListContent)
end

function NetworkInterfaceMock:getItemDetails(items)
	local responseData = {}
	for _, item in ipairs(items) do
		local res = getFakeAsset(item.Asset.Id)

		table.insert(responseData, {
			asset = res.Asset,
			creator = res.Creator,
			thumbnail = res.Thumbnail,
			voting = res.Voting,
		})
	end

	return Promise.resolve({
		responseBody = {
			data = responseData,
		},
	})
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

function NetworkInterfaceMock:postVote(assetId)
	return 	Promise.resolve({
		model = {
			HasVoted = true,
			CanVote = true,
			upVotes = 11,
			UserVote = true,
			DownVote = 5,
			ShowVotes = true,
		},
		success = true,
		message = "This is a test message"
	})
end

function NetworkInterfaceMock:postUnvote(assetId)
	return 	Promise.resolve({
		model = {
			HasVoted = false,
			CanVote = true,
			upVotes = 10,
			UserVote = false,
			DownVote = 5,
			ShowVotes = true,
		},
		success = true,
		message = "This is a test message"
	})
end

function NetworkInterfaceMock:postInsertAsset(assetId)
	return true
end

function NetworkInterfaceMock:getManageableGroups()
	local fakeGroups = {}
	return Promise.resolve(fakeGroups)
end

function NetworkInterfaceMock:getCanManageAsset(assetId, myUserId)
	return Promise.resolve({
		responseBody = {
			CanManage = true,
			Success = true
		}
	})
end

function NetworkInterfaceMock:getRobuxBalance(myUserId)
	return Promise.resolve({
		responseBody = {
			robux = '16'
		}
	})
end

function NetworkInterfaceMock:getFavoriteCounts(assetId)
	return Promise.resolve({
		responseBody = {
			assetId = assetId,
			favoriteCounts = 15
		}
	})
end

function NetworkInterfaceMock:getFavorited(assetId)
	return Promise.resolve({
		responseBody = {
			assetId = assetId,
			favorited = false
		}
	})
end

function NetworkInterfaceMock:getMetaData()
	return Promise.resolve({})
end

function NetworkInterfaceMock:getTagsMetadata()
	return Promise.resolve({})
end

return NetworkInterfaceMock
