--!strict

local GAMES_URL: string = require(script.Parent.Parent.GAMES_URL)

type ParamType = {
	[number]: string
}

return function(config: any)
	local roduxNetworking: any = config.roduxNetworking

	return roduxNetworking.GET({ Name = "GetExperiencesPlayabilityStatus" }, function(requestBuilder: any, universeIds: ParamType)
		return requestBuilder(GAMES_URL)
			:path("v1")
			:path("games")
			:path("multiget-playability-status")
			:expandedQueryArgsWithIds("universeIds", universeIds)
	end)
end
