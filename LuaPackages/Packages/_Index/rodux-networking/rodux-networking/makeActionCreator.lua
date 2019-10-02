local root = script.Parent
local Action = require(root.Action)

return function(networkRequestScript)
	return {
		Succeeded = Action(networkRequestScript.Name .. "_Succeeded", function(ids, responseBody, namedIds)
			return {
				ids = ids,
				responseBody = responseBody,
				namedIds = namedIds,
			}
		end),
		Failed = Action(networkRequestScript.Name .. "_Failed", function(ids, error, namedIds)
			return {
				ids = ids,
				error = error,
				namedIds = namedIds,
			}
		end),
	}
end
