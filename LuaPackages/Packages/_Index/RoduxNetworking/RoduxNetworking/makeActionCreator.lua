--!nonstrict
local root = script.Parent
local Action = require(root.Action)

return function(networkRequestScript: ModuleScript | string)
	local name
	if type(networkRequestScript) == "string" then
		name = networkRequestScript
	else
		name = networkRequestScript.Name
	end

	return {
		Succeeded = Action(name .. "_Succeeded", function(ids, responseBody, namedIds, requestOptions, additionalData)
			return {
				ids = ids,
				responseBody = responseBody,
				namedIds = namedIds,
				postBody = requestOptions and requestOptions.postBody or nil,
				queryArgs = requestOptions and requestOptions.queryArgs,
				additionalData = additionalData,
			}
		end),
		Failed = Action(name .. "_Failed", function(ids, error, namedIds, requestOptions, additionalData)
			return {
				ids = ids,
				error = error,
				namedIds = namedIds,
				postBody = requestOptions and requestOptions.postBody or nil,
				queryArgs = requestOptions and requestOptions.queryArgs or nil,
				additionalData = additionalData,
			}
		end),
	}
end
