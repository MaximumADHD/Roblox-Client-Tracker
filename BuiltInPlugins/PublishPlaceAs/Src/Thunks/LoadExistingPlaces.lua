local Plugin = script.Parent.Parent.Parent

local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local ApiFetchPlacesByUniverseId = require(Plugin.Src.Network.Requests.ApiFetchPlacesByUniverseId)

return function(parentGame, pageCursor)
	return function(store)
		assert(type(parentGame.name) == "string", "LoadExistingPlaces.parentGame must have a string name")
		assert(type(parentGame.universeId) == "number", "LoadExistingPlaces.parentGame must have a number universeId")

		store:dispatch(SetPlaceInfo(nil))

		local query = ApiFetchPlacesByUniverseId({universeId = parentGame.universeId}, {cursor = pageCursor,})

		query:andThen(function(resp)
			resp.parentGame = parentGame
			store:dispatch(SetPlaceInfo(resp))
		end)
		:catch(function()
			-- TODO (kstephan) 2019/07/11 User facing error message
		end)

	end
end
