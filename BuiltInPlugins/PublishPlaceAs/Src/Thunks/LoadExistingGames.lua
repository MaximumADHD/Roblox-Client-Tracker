local Plugin = script.Parent.Parent.Parent

local StudioService = game:GetService("StudioService")

local SetGameInfo = require(Plugin.Src.Actions.SetGameInfo)
local ApiFetchGamesByUserId = require(Plugin.Src.Network.Requests.ApiFetchGamesByUserId)

return function(pageCursor)
	return function(store)
		store:dispatch(SetGameInfo(nil))

		local userId = StudioService:GetUserId()
		local query = ApiFetchGamesByUserId({userId = userId}, {cursor = pageCursor,})

		query:andThen(function(resp)
			store:dispatch(SetGameInfo(resp))
		end)
		:catch(function()
			-- TODO (kstephan) 2019/07/09 User facing error message
		end)

	end
end
