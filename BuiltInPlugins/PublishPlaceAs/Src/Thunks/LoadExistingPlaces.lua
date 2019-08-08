local Plugin = script.Parent.Parent.Parent

local SetPlaceInfo = require(Plugin.Src.Actions.SetPlaceInfo)
local ApiFetchPlacesByUniverseId = require(Plugin.Src.Network.Requests.ApiFetchPlacesByUniverseId)

return function(universeId, pageCursor)
	return function(store)
		assert(type(universeId) == "number", "LoadExistingPlaces must have a number universeId")

		store:dispatch(SetPlaceInfo(nil))

		local query = ApiFetchPlacesByUniverseId({universeId = universeId}, {cursor = pageCursor,})

		query:andThen(function(resp)
			store:dispatch(SetPlaceInfo(resp))
		end)
		:catch(function()
			-- TODO (kstephan) 2019/07/11 User facing error message
		end)

	end
end
