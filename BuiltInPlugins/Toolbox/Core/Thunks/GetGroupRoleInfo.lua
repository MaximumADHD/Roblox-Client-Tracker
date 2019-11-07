local HttpService = game:GetService("HttpService")

local Plugin = script.Parent.Parent.Parent

local Actions = Plugin.Core.Actions
local SetGroupRoleInfo = require(Actions.SetGroupRoleInfo)

return function(networkInterface, groupId)
    return function(store)
        return networkInterface:getGroupRoleInfo(groupId):andThen(
            function(result)
                local resultData = result.responseBody
                local decodedResult = HttpService:JSONDecode(resultData)

                store:dispatch(SetGroupRoleInfo(decodedResult.roles))
            end,
            function(error)
            end
        )
	end
end
