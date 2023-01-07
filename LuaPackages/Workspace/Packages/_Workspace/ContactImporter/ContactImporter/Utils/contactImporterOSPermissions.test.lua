local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local Constants = require(ContactImporter.Common.Constants)
local contactImporterOSPermissions = require(script.Parent.contactImporterOSPermissions)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local MockAppStorageService = devDependencies.MockAppStorageService
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)

describe("Check last OS permissions", function()
	if not HAS_ENGINE_FEATURE then
		it("SHOULD NOT update local storage if no engine feature detected", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS] = "",
			})
			contactImporterOSPermissions:updateOSPermissionSettings(appStorageService, true)
			local hasOSPermissions = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS)
			jestExpect(hasOSPermissions).toBe("")
		end)
	else
		describe("When user dismisses new badge", function()
			it("SHOULD update local storage for OS Permissions for Contacts", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS] = "true",
				})
				contactImporterOSPermissions:updateOSPermissionSettings(appStorageService, false)

				local hasOSPermissions =
					appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS)
				jestExpect(hasOSPermissions).toBe("false")
			end)
		end)
	end
end)
