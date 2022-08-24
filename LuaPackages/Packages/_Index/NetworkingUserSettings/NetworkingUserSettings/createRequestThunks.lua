local NetworkingUserSettings = script.Parent
local networkRequests = NetworkingUserSettings.networkRequests
local createGetUserSettings = require(networkRequests.createGetUserSettings)
local createUpdateUserSettings = require(networkRequests.createUpdateUserSettings)
local createGetUserSettingsMetadata = require(networkRequests.createGetUserSettingsMetadata)
local networkRequestsTypes = require(NetworkingUserSettings.Types.networkRequestsTypes)

return function(config: networkRequestsTypes.Config): networkRequestsTypes.RequestThunks
	return {
		GetUserSettings = createGetUserSettings(config),
		UpdateUserSettings = createUpdateUserSettings(config),
		GetUserSettingsMetadata = createGetUserSettingsMetadata(config),
	}
end
