local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ApiFetchUsersHeadshots = require(Modules.LuaApp.Thunks.ApiFetchUsersHeadshots)
local ApiFetchUsersPresences = require(Modules.LuaApp.Thunks.ApiFetchUsersPresences)

local THUMBNAIL_SIZE = Enum.ThumbnailSize.Size150x150

--this thunk will fill out users list with thumbnail and presence info
return function(networkImpl, userIds)
	return function(store)
		store:Dispatch(ApiFetchUsersPresences(networkImpl, userIds))
		store:Dispatch(ApiFetchUsersHeadshots(networkImpl, userIds, THUMBNAIL_SIZE))
	end
end