local Packages = script:FindFirstAncestor("RoduxGames").Parent
local Rodux = require(Packages.Rodux)

local playabilityByGameId = require(script.Games.playabilityByGameId)
local productInfoByGameId = require(script.Games.productInfoByGameId)
local byGameId = require(script.Games.byGameId)

return function(config)
	return Rodux.combineReducers({
		playabilityByGameId = playabilityByGameId(config),
		productInfoByGameId = productInfoByGameId(config),
		byGameId = byGameId(config),
	})
end
