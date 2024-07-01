--!strict

local GAMES_URL: string = require(script.Parent.Parent.GAMES_URL)

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET(
		{ Name = "GetExperienceMedia" },
		function(requestBuilder: any, universeId: number | string)
			return requestBuilder(GAMES_URL):path("v2"):path("games"):id(universeId):path("media")
		end
	)
end
