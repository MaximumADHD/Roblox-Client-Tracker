local ALIAS_URL = require(script.Parent.Parent.ALIAS_URL)
local networkingAliasesTypes = require(script.Parent.Parent.networkingAliasesTypes)

return function(config: networkingAliasesTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST({ Name = "GetTagsFromUserIds" }, function(requestBuilder: any, userIds: string | number)
		return requestBuilder(ALIAS_URL):path("v1"):path("user"):path("get-tags"):body({
			targetUserIds = userIds,
		})
	end)
end
