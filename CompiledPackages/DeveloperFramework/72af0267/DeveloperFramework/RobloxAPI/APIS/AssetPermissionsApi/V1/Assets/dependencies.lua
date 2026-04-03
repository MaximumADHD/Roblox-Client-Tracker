--!strict
--[[
	Gets a list of dependencies (descendant assets within a composite asset) given an asset ID. For example, a list of all the meshes and images used within a model asset.

	Example
	https://apis.roblox.com/asset-permissions-api/v1/assets/{assetId}/dependencies

	Documented at : https://apis.simulprod.com/asset-permissions-api/swagger/index.html

	Returns a JSON table with these fields :
	{
    "results": [
        {
        "assetId": 0,
        "assetName": "string",
        "assetType": "Invalid",
        "accessStatus": "Restricted",
        "creator": {
            "type": "Invalid",
            "id": 0
        }
        }
    ],
    "hasMore": true,
    "nextPageToken": "string"
    }
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
return function(networkingImpl, baseUrl)
	return function(
		assetId: number,
		versionNumber: number?,
		dependenciesDegree: number?,
		includeAccessStatus: boolean?,
		maxPageSize: number?,
		pageToken: string?
	)
		local optionalParams = if versionNumber
				or dependenciesDegree
				or includeAccessStatus
				or maxPageSize
				or pageToken
			then {
				versionNumber = versionNumber,
				dependenciesDegree = dependenciesDegree,
				includeAccessStatus = includeAccessStatus,
				maxPageSize = maxPageSize,
				pageToken = pageToken,
			}
			else nil

		local url = baseUrl.composeUrl(
			baseUrl.APIS_URL,
			`asset-permissions-api/v1/assets/{assetId}/dependencies`,
			optionalParams
		)

		local headers = {
			["Content-Type"] = "application/json",
		}

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise = networkingImpl:get(url, nil, headers)
				local retryPromise = networkingImpl:handleRetry(httpPromise)
				return networkingImpl:parseJson(retryPromise)
			end,
		}
	end
end
