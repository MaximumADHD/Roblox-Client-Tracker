local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local NetworkingUserSettings = dependencies.NetworkingUserSettings
local NetworkingAccountInformation = dependencies.NetworkingAccountInformation
local NetworkingAccountSettings = dependencies.NetworkingAccountSettings
local PermissionsProtocol = dependencies.PermissionsProtocol
local Promise = dependencies.Promise
local llama = dependencies.llama
local contactImporterModalInfo = require(ContactImporter.Utils.contactImporterModalInfo)
local updateOptedInUsers = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local contactImporterOSPermissions = require(ContactImporter.Utils.contactImporterOSPermissions)
local Constants = require(ContactImporter.Common.Constants)
local SetContactImporterDisplayLogic = require(ContactImporter.Actions.SetContactImporterDisplayLogic)
local getFFlagContactImporterWithPhoneVerification = dependencies.getFFlagContactImporterWithPhoneVerification

local handleError = function(e)
	return
end

return function(userid: string, permissionsService: any, appStorageService: any): any
	return function(store)
		local promises = {}
		if getFFlagContactImporterWithPhoneVerification() then
			promises = {
				store:dispatch(NetworkingUserSettings.GetUserSettings.API({})):andThen(function(results)
					return Promise.resolve({
						canUploadContacts = results.responseBody.canUploadContacts,
						phoneNumberDiscoverability = results.responseBody.phoneNumberDiscoverability,
					}, handleError)
				end),
				store:dispatch(NetworkingAccountInformation.GetPhoneInformation.API()):andThen(function(results)
					return Promise.resolve({ isPhoneVerified = results.responseBody.isVerified }, handleError)
				end),
				store:dispatch(NetworkingAccountSettings.GetEmailSettings.API()):andThen(function(results)
					return Promise.resolve({
						isEmailVerified = results.responseBody.verified,
					}, handleError)
				end),
				permissionsService
					:hasPermissions({ PermissionsProtocol.Permissions.CONTACTS_ACCESS })
					:andThen(function(result)
						local permissionGranted = result and result.status == PermissionsProtocol.Status.AUTHORIZED
						if not permissionGranted then
							updateOptedInUsers:clearLocalStorage(appStorageService)
						end
						return Promise.resolve({ hasOSPermissions = permissionGranted })
					end, handleError),
			}
		else
			promises = {
				store:dispatch(NetworkingUserSettings.GetUserSettings.API({})):andThen(function(results)
					return Promise.resolve({
						canUploadContacts = results.responseBody.canUploadContacts,
						phoneNumberDiscoverability = results.responseBody.phoneNumberDiscoverability,
					}, handleError)
				end),
				store:dispatch(NetworkingAccountInformation.GetPhoneInformation.API()):andThen(function(results)
					return Promise.resolve({ isPhoneVerified = results.responseBody.isVerified }, handleError)
				end),
				permissionsService
					:hasPermissions({ PermissionsProtocol.Permissions.CONTACTS_ACCESS })
					:andThen(function(result)
						local permissionGranted = result and result.status == PermissionsProtocol.Status.AUTHORIZED
						if not permissionGranted then
							updateOptedInUsers:clearLocalStorage(appStorageService)
						end
						return Promise.resolve({ hasOSPermissions = permissionGranted })
					end, handleError),
			}
		end
		Promise.all(promises)
			:andThen(function(results)
				local combinedResults = {}
				for ind, res in results do
					combinedResults = llama.Dictionary.join(combinedResults, res)
				end
				local isUserOptedInLocalStorage =
					contactImporterModalInfo:isUserOptedInLocalStorage(appStorageService, userid)
				local shouldShowContactImporterUpsellAgain =
					contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, userid)
				combinedResults[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_AGAIN] =
					shouldShowContactImporterUpsellAgain
				combinedResults[Constants.IS_USER_OPTED_IN_LOCAL_STORAGE] = isUserOptedInLocalStorage
				store:dispatch(SetContactImporterDisplayLogic(combinedResults))

				local previousOSPermissionsSetting =
					contactImporterOSPermissions:getLastOSPermissionSettings(appStorageService)
				local hasOSPermissions = combinedResults.hasOSPermissions
				if previousOSPermissionsSetting ~= hasOSPermissions then
					store:dispatch(
						NetworkingUserSettings.UpdateUserSettings.API({ canUploadContacts = hasOSPermissions })
					)
				end

				contactImporterOSPermissions:updateOSPermissionSettings(appStorageService, hasOSPermissions)
			end)
			:catch(function()
				store:dispatch(NetworkingUserSettings.UpdateUserSettings.API({ canUploadContacts = false }))
			end)
	end
end
