--[[
	Manage asset permissions given a list of asset IDs.
    If given a single asset ID, can get/patch/delete permissions for that asset.
    If given a list of asset IDs, can patch permissions for all assets in the list.
    PATCH requests require a request body of type SubjectActionRequest, see documentation for more details.
    Since PATCH and DELETE for a single asset ID are the same, isDelete is used to differentiate between the two.
	Example
    GET https://apis.roblox.com/asset-permissions-api/v1/assets/{assetId}/permissions
    PATCH https://apis.roblox.com/asset-permissions-api/v1/assets/{assetId}/permissions
    DELETE https://apis.roblox.com/asset-permissions-api/v1/assets/{assetId}/permissions
    PATCH https://apis.roblox.com/asset-permissions-api/v1/assets/permissions
	Documented at: https://roblox.atlassian.net/wiki/spaces/CON/pages/1539804446/Documentation+Asset+Permissions+API
    and https://apis.simulprod.com/asset-permissions-api/swagger/
	Returns a JSON table, see documentation for more details.
]]

-- networkingImpl : (Http.Networking) supplied by RobloxAPI.init.lua, a Networking object that makes the network requests
-- baseUrl : (RobloxAPI.Url) supplied by RobloxAPI.init.lua, an object for constructing urls
local HttpService = game:GetService("HttpService")

local SubjectType: { [string]: boolean } = {
	Invalid = true,
	User = true,
	Group = true,
	GroupRoleset = true,
	All = true,
	Universe = true,
}

local Action: { [string]: boolean } = {
	Invalid = true,
	Edit = true,
	Download = true,
	Use = true,
	CopyFromRcc = true,
	UpdateFromRcc = true,
}

return function(networkingImpl, baseUrl)
	return function(assetIds: { number }, subjectType: string?, subjectId: number?, action: string?, isDelete: boolean?)
		assert(type(assetIds) == "table", `assetIds must be table, received {type(assetIds)}`)
		if subjectType then
			assert(SubjectType[subjectType], `{subjectType} is not a valid SubjectType`)
		end
		if action then
			assert(Action[action], `{action} is not a valid Action`)
		end

		local url
		if #assetIds == 1 then
			url = baseUrl.composeUrl(baseUrl.APIS_URL, `asset-permissions-api/v1/assets/{assetIds[1]}/permissions`)
		else
			url = baseUrl.composeUrl(baseUrl.APIS_URL, `asset-permissions-api/v1/assets/permissions`)
		end

		local requestBody
		if #assetIds == 1 then
			requestBody = {
				requests = {
					{
						action = action,
						subjectId = tostring(subjectId),
						subjectType = subjectType,
					},
				},
			}
		else
			requestBody = {
				subjectType = subjectType,
				subjectId = tostring(subjectId),
				action = action,
				assetIds = assetIds,
			}
		end
		local requestBodyStr = HttpService:JSONEncode(requestBody)

		return {
			getUrl = function()
				return url
			end,

			makeRequest = function()
				local httpPromise
				if #assetIds == 1 then
					if subjectType then
						if isDelete then
							httpPromise = networkingImpl:delete(url, nil, requestBodyStr)
						else
							httpPromise = networkingImpl:patch(url, requestBodyStr)
						end
					else
						httpPromise = networkingImpl:get(url)
					end
				else
					httpPromise = networkingImpl:patch(url, requestBodyStr)
				end
				local retryPromise = networkingImpl:handleRetry(httpPromise)
				return networkingImpl:parseJson(retryPromise)
			end,
		}
	end
end
