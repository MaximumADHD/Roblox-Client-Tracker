--[[
	NetworkingMock

	Provide dummy data for testing
]]--

local Plugin = script.Parent.Parent.Parent

local Promise = require(Plugin.Packages.Http.Promise)

-- public api
local NetworkingMock = {}
NetworkingMock.__index = NetworkingMock

function NetworkingMock.new()
	return setmetatable({}, NetworkingMock)
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

function NetworkingMock:getMyGroups(userId)
	local fakeGroups = {}
	return Promise.resolve(fakeGroups)
end

return NetworkingMock
