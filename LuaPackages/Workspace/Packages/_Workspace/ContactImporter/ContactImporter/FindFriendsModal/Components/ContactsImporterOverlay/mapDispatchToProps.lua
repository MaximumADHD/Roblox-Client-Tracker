local ContactImporter = script.Parent.Parent.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local UpdateContactImporterModalLogic = dependencies.SocialModalsCommon.Actions.UpdateContactImporterModalLogic
local SetIsPhoneVerified = require(ContactImporter.Actions.SetIsPhoneVerified)
local getFFlagContactImporterWithPhoneVerification = dependencies.getFFlagContactImporterWithPhoneVerification

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
		setIsPhoneVerified = if getFFlagContactImporterWithPhoneVerification()
			then function()
				return dispatch(SetIsPhoneVerified({ isPhoneVerified = true }))
			end
			else nil,
	}
end

export type Props = typeof(mapDispatchToProps(...))

return mapDispatchToProps
