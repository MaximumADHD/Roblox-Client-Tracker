local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ApiFetchUsersThumbnail = require(Modules.LuaApp.Thunks.ApiFetchUsersThumbnail)
local ApiFetchUsersPresences = require(Modules.LuaApp.Thunks.ApiFetchUsersPresences)
local Constants = require(Modules.LuaApp.Constants)

--this thunk will fill out users list with thumbnail and presence info
return function(networkImpl, userIds, thumbnailType)
	return function(store)
		store:Dispatch(ApiFetchUsersPresences(networkImpl, userIds))
		store:Dispatch(
			ApiFetchUsersThumbnail(
				networkImpl,
				userIds,
				thumbnailType,
				Constants.AvatarThumbnailSizes.Size100x100
			)
		)
	end
end