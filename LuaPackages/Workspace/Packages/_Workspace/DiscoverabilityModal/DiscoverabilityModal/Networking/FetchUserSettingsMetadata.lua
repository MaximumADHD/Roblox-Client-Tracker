local DiscoverabilityModal = script.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local NetworkingUserSettings = dependencies.NetworkingUserSettings

return function(): any
	return function(store)
		store:dispatch(NetworkingUserSettings.GetUserSettingsMetadata.API())
	end
end
