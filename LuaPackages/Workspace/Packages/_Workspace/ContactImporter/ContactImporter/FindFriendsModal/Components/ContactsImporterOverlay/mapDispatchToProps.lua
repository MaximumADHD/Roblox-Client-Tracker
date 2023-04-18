local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local UpdateContactImporterModalLogic = dependencies.SocialModalsCommon.Actions.UpdateContactImporterModalLogic

local mapDispatchToProps = function(dispatch: any)
	return {
		updateUserSettings = function()
			return dispatch(NetworkingUserSettings.UpdateUserSettings.API({ canUploadContacts = true }))
		end,
		hideContactImporterModal = function()
			return dispatch(UpdateContactImporterModalLogic({
				hasOSPermissions = true,
				shouldShowContactImporterUpsellModal = false,
			}))
		end,
		getUserSettingsMetadata = function()
			return dispatch(NetworkingUserSettings.GetUserSettingsMetadata.API())
		end,
	}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
