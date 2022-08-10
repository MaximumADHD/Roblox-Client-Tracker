local ALIAS_URL = require(script.Parent.Parent.ALIAS_URL)
local networkingAliasesTypes = require(script.Parent.Parent.networkingAliasesTypes)

return function(config: networkingAliasesTypes.Config)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.POST(
		{ Name = "SetUserTag" },
		function(requestBuilder: any, userId: string | number, tag: string)
			return requestBuilder(ALIAS_URL):path("v1"):path("user"):path("tag"):body({
				targetUserId = userId,
				userTag = tag,
			})
		end
	)
end
