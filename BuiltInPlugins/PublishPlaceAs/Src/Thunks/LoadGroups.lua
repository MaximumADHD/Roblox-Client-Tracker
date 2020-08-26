local Plugin = script.Parent.Parent.Parent

local SetGroupInfo = require(Plugin.Src.Actions.SetGroupInfo)
local ApiFetchGroupsHavePermission = require(Plugin.Src.Network.Requests.ApiFetchGroupsHavePermission)

return function()
	return function(store)
		store:dispatch(SetGroupInfo({ groups = {} }))

		local query = ApiFetchGroupsHavePermission()

		query:andThen(function(resp)
			store:dispatch(SetGroupInfo(resp))
		end, function(err)
			error("Failed to fetch groups with edit permission")
		end)
	end
end
