--[[
	NetworkingMock

	Provide dummy data for testing
]]--

local Plugin = script.Parent.Parent.Parent

local FFlagToolboxWaitForPluginOwnedStatus = game:GetFastFlag("ToolboxWaitForPluginOwnedStatus")

local FFlagToolboxUseDevFrameworkPromise = game:GetFastFlag("ToolboxUseDevFrameworkPromise")
local Promise
if FFlagToolboxUseDevFrameworkPromise then
	Promise = require(Plugin.Libs.Framework.Util.Promise)
else
	Promise = require(Plugin.Libs.Http.Promise)
end

-- public api
local NetworkingMock = {}
NetworkingMock.__index = NetworkingMock

function NetworkingMock.new()
	return setmetatable({}, NetworkingMock)
end

function NetworkingMock:getAssets(pageInfo)
	local fakeItemListContent = {
		responseBody = {
			TotalResults = 7150107,
		}
	}
	local Results = {}
	for i = 1, 100, 1 do
		Results[i] = {
			Asset = {
				Id = i,
				Name = "Observation Tower",
				TypeId = 10,
				IsEndorsed = true,
			},
			Creator = {
				Id = i,
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
	fakeItemListContent.responseBody.Results = Results

	return Promise.resolve(fakeItemListContent)
end

-- Pass this a list of assets and it returns a promise with the same data structure as returned from the web
function NetworkingMock:resolveAssets(assets, totalResults)
	return Promise.resolve({
		responseBody = {
			TotalResults = totalResults or #assets,
			Results = assets,
		},
	})
end

--para bool, vote up or not
function NetworkingMock:postVote(assetId, bool)
	return 	{
		success = true,
		message = "This is a test message"
	}
end

function NetworkingMock:postUnvote(assetId)
	return 	{
		success = true,
		message = "This is a test message"
	}
end

function NetworkingMock:postInsertAsset(assetId)
	return true
end

function NetworkingMock:getManageableGroups()
	local fakeGroups = {}
	return Promise.resolve(fakeGroups)
end

if not FFlagToolboxWaitForPluginOwnedStatus then
	function NetworkingMock:getOwnsAsset(assetId, myUserId)
		return Promise.resolve({
			responseBody = "true"
		})
	end
end

function NetworkingMock:getCanManageAsset(assetId, myUserId)
	return Promise.resolve({
		responseBody = {
			CanManage = true,
			Success = true
		}
	})
end

function NetworkingMock:getRobuxBalance(myUserId)
	return Promise.resolve({
		responseBody = {
			robux = '0'
		}
	})
end

function NetworkingMock:getFavoriteCounts(assetId)
	return Promise.resolve({
		responseBody = {
			assetId = assetId,
			favoriteCounts = 0
		}
	})
end

function NetworkingMock:getFavorited(assetId)
	return Promise.resolve({
		responseBody = {
			assetId = assetId,
			favorited = false
		}
	})
end

return NetworkingMock
