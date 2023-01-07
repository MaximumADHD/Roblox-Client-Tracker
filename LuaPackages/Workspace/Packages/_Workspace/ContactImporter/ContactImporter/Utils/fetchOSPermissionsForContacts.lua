local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local updateOptedInUsers = dependencies.SocialModalsCommon.Utils.updateOptedInUsers
local PermissionsProtocol = dependencies.PermissionsProtocol
local AppStorageService = dependencies.AppStorageService

type CallbackFunction = ((boolean) -> ())?
type PermissionsProtocol = any

return function(permissionsService: PermissionsProtocol, callback: CallbackFunction)
	permissionsService
		:hasPermissions({ PermissionsProtocol.Permissions.CONTACTS_ACCESS })
		:andThen(function(result)
			local permissionGranted = result and result.status == PermissionsProtocol.Status.AUTHORIZED
			-- we need to clear local storage of users who have previously opted
			-- in if no OS permissions are detected
			if not permissionGranted then
				updateOptedInUsers:clearLocalStorage(AppStorageService)
			end
			if callback then
				callback(permissionGranted)
			end
		end)
		:catch(function(e) end)
end
