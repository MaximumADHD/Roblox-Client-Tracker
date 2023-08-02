local USERS_URL = require(script.Parent.Parent.USERS_URL)

return function(config)
	local roduxNetworking = config.roduxNetworking

	return roduxNetworking.POST({ Name = "SetDescription" }, function(requestBuilder, description)
		return requestBuilder(USERS_URL):path("v1"):path("description"):body({
			description = description,
		})
	end)
end
