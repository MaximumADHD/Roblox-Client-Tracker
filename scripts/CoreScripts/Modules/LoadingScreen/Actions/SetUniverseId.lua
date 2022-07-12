local CorePackages = game:GetService("CorePackages")
local Rodux = require(CorePackages.Rodux)
local ArgCheck = require(CorePackages.ArgCheck)

return Rodux.makeActionCreator(script.Name, function(gameIds)
	ArgCheck.isType(gameIds, "table", "SetUniverseId action expects gameIds to be a table")
	return {
		universeId = gameIds.universeId,
		placeId = gameIds.placeId,
	}
end)