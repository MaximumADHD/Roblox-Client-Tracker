-- this function checks whether what the last OS Permissions were for Contacts

local Constants = require(script.Parent.Parent.Parent.ContactImporter.Common.Constants)
local HAS_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)

local contactImporterOSPermissions = {}

function contactImporterOSPermissions:getLastOSPermissionSettings(appStorageService)
	-- check if the storage keys are defined in game engine that is running
	if not HAS_FEATURE then
		return true
	end

	local success, OSSetting = pcall(function()
		return appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS)
	end)

	if success then
		return OSSetting == "true"
	else
		return false
	end
end

function contactImporterOSPermissions:updateOSPermissionSettings(appStorageService, hasOSPermissions)
	if not HAS_FEATURE then
		return
	end

	pcall(function()
		appStorageService:SetItem(Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS, tostring(hasOSPermissions))
		appStorageService:Flush()
	end)
end

return contactImporterOSPermissions
