--[[
	Returns a list of aliases given a universeID

	Example
	https://apis.roblox.com/content-aliases-api/v1/universes/{universeId/aliases?page=cursor 

	Documented at: https://apis.simulpong.com/content-aliases-api/swagger/index.html

	{
		"nextPageToken": "",
		"Aliases": [
			{
			"Name": "Images/Aa",
			"Type": 1,
			"TargetId": 2176908078,
			"Asset": {
				"Id": 2176908078,
				"TypeId": 1,
				"Name": "Images/image1",
				"Description": "Decal Image",
				"CreatorType": 1,
				"CreatorTargetId": 44209154,
				"Created": "2020-01-08T18:57:53.31Z",
				"Updated": "2020-01-08T18:57:53.333Z"
			},
			"Version": null
			},
			{
			"Name": "Meshes/my_mesh_Part1",
			"Type": 1,
			"TargetId": 2176921953,
			"Asset": {
				"Id": 2176921953,
				"TypeId": 40,
				"Name": "Meshes/my_mesh_Part1",
				"Description": "MeshPart",
				"CreatorType": 1,
				"CreatorTargetId": 44209154,
				"Created": "2020-01-09T16:22:01.0435081-06:00",
				"Updated": "2020-01-09T16:22:01.0715095-06:00"
			},
			"Version": null
			},
		],
	}
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	-- universeId : id of universe
	-- pageNumber : number of page to request
	return function(universeId, maxPageSize, pageCursor)
		assert(type(universeId) == "number", string.format("universeId must be number, received %s", type(universeId)))
		assert(
			type(maxPageSize) == "number",
			string.format("maxPageSize must be number, received %s", type(maxPageSize))
		)
		if pageCursor then
			assert(
				type(pageCursor) == "string",
				string.format("pageCursor must be string, received %s", type(pageCursor))
			)
		end
		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			"content-aliases-api/v1/universes/" .. tostring(universeId) .. "/aliases",
			{
				maxPageSize = maxPageSize,
				pageToken = pageCursor,
			}
		)

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:get(url)
				local retryPromise = networkingImpl:handleRetry(httpPromise)
				return networkingImpl:parseJson(retryPromise)
			end,
		}
	end
end
