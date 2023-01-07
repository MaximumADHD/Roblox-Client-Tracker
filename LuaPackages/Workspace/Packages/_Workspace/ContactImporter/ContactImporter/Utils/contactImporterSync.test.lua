local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local Constants = require(ContactImporter.Common.Constants)
local contactImporterSync = require(script.Parent.contactImporterSync)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local MockAppStorageService = devDependencies.MockAppStorageService
local USER_ID = "123"
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local CURRENT_TIME = DateTime.now().UnixTimestampMillis
local getFIntContactImporterSyncMinHours = require(script.Parent.Parent.Flags.getFIntContactImporterSyncMinHours)
local MIN_HOURS = getFIntContactImporterSyncMinHours()
local HOURS_TO_MS = 60 * 60 * 1000

describe("Contact Importer Contacts Syncing", function()
	if not HAS_ENGINE_FEATURE then
		it("SHOULD NOT update local storage for opted in users if no engine feature detected", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = "",
			})
			contactImporterSync:updateSyncTimestamp(appStorageService, USER_ID, CURRENT_TIME)
			local syncTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
			jestExpect(syncTimestampInfo).toBe("")
		end)

		it("SHOULD sync if no engine feature detected", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = tostring(CURRENT_TIME),
			})
			local shouldSync = contactImporterSync:shouldSyncContacts(appStorageService, USER_ID, CURRENT_TIME)
			jestExpect(shouldSync).toBe(true)
		end)
	else
		describe("Time since last sync", function()
			it("SHOULD sync if it has been more than min hours since last sync", function()
				local TIME_IN_MS = (MIN_HOURS + 2) * HOURS_TO_MS
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = USER_ID .. ":" .. tostring(CURRENT_TIME - TIME_IN_MS),
				})
				local shouldSync = contactImporterSync:shouldSyncContacts(appStorageService, USER_ID, CURRENT_TIME)
				jestExpect(shouldSync).toBe(true)
			end)
			it("SHOULD NOT sync if it has been less than min hours since last sync", function()
				local TIME_IN_MS = (MIN_HOURS - 2) * HOURS_TO_MS
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = USER_ID .. ":" .. tostring(CURRENT_TIME - TIME_IN_MS),
				})
				local shouldSync = contactImporterSync:shouldSyncContacts(appStorageService, USER_ID, CURRENT_TIME)
				jestExpect(shouldSync).toBe(false)
			end)
		end)

		describe("Update last sync timestamp", function()
			it("SHOULD add new user sync timestamp to empty timestamp info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = "",
				})
				contactImporterSync:updateSyncTimestamp(appStorageService, USER_ID, CURRENT_TIME)
				local syncTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
				jestExpect(syncTimestampInfo).toBe(USER_ID .. ":" .. tostring(CURRENT_TIME))
			end)
			it("SHOULD add new user sync timestamp to existing timestamp info", function()
				local initialInfo = "USER_456" .. ":" .. tostring(CURRENT_TIME - 10)
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = initialInfo,
				})
				contactImporterSync:updateSyncTimestamp(appStorageService, USER_ID, CURRENT_TIME)
				local syncTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
				jestExpect(syncTimestampInfo).toBe(initialInfo .. "," .. USER_ID .. ":" .. tostring(CURRENT_TIME))
			end)
			it("SHOULD update user sync timestamp if it's the only entry", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = USER_ID .. ":" .. tostring(CURRENT_TIME - 100),
				})
				contactImporterSync:updateSyncTimestamp(appStorageService, USER_ID, CURRENT_TIME)
				local syncTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
				jestExpect(syncTimestampInfo).toBe(USER_ID .. ":" .. tostring(CURRENT_TIME))
			end)
			it("SHOULD update user sync timestamp with multiple entries", function()
				local initialInfo = "USER_456" .. ":" .. tostring(CURRENT_TIME - 10)
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = initialInfo .. "," .. USER_ID .. ":" .. tostring(
						CURRENT_TIME - 50
					),
				})
				contactImporterSync:updateSyncTimestamp(appStorageService, USER_ID, CURRENT_TIME)
				local syncTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC)
				jestExpect(syncTimestampInfo).toBe(initialInfo .. "," .. USER_ID .. ":" .. tostring(CURRENT_TIME))
			end)
		end)
	end
end)
