local Modules = game:GetService("CoreGui").RobloxGui.Modules

local ShareGame = Modules.Settings.Pages.ShareGame
local ApiFetchUsersThumbnail = require(ShareGame.Thunks.ApiFetchUsersThumbnail)
local ApiFetchUsersPresences = require(ShareGame.Thunks.ApiFetchUsersPresences)
local Constants = require(ShareGame.Constants)

--this thunk will fill out users list with thumbnail and presence info
return function(networkImpl, userIds, thumbnailType)
	return function(store)
		store:dispatch(ApiFetchUsersPresences(networkImpl, userIds))
		store:dispatch(
			ApiFetchUsersThumbnail(
				networkImpl,
				userIds,
				thumbnailType,
				Constants.AvatarThumbnailSizes.Size100x100
			)
		)
	end
end