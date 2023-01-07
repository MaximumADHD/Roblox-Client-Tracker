local FriendsLanding = script:FindFirstAncestor("FriendsLanding")
local Constants = require(FriendsLanding.Common.Constants)
local HAS_FEATURE = game:GetEngineFeature(Constants.TOOLTIP_GAME_ENGINE_FEATURE)

local contactImporterTooltip = {}

function contactImporterTooltip.getKey(appStorageService)
	if not HAS_FEATURE then
		return true
	end

	local success, hasSeenFriendRequest = pcall(function()
		return appStorageService:GetItem(Constants.TOOLTIP_APP_STORAGE_KEY)
	end)

	if success then
		return hasSeenFriendRequest == "true"
	else
		return false
	end
end

function contactImporterTooltip.updateKey(appStorageService, hasSeenFriendRequest)
	if not HAS_FEATURE then
		return
	end

	pcall(function()
		appStorageService:SetItem(Constants.TOOLTIP_APP_STORAGE_KEY, tostring(hasSeenFriendRequest))
		appStorageService:Flush()
	end)
end

return contactImporterTooltip
