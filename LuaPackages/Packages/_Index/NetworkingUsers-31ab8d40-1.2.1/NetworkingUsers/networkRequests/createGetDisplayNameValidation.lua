local USERS_URL = require(script.Parent.Parent.USERS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetDisplayNameValidation" }, function(requestBuilder, userId, name)
		return requestBuilder(USERS_URL)
			:path("v1")
			:path("users")
			:id(userId)
			:path("display-names")
			:path("validate")
			:queryArgs({
				displayName = name,
			})
	end)
end
