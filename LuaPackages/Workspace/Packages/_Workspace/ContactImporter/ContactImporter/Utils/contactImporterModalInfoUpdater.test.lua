local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local Constants = require(ContactImporter.Common.Constants)
local contactImporterModalInfoUpdater = require(script.Parent.contactImporterModalInfoUpdater)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local MockAppStorageService = devDependencies.MockAppStorageService
local USER_ID = "123"
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)

describe("Contact Importer User Modal information", function()
	if not HAS_ENGINE_FEATURE then
		it("SHOULD NOT update anything if no engine feature detected", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = "",
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = "",
			})
			contactImporterModalInfoUpdater:addSeenCount(appStorageService, USER_ID)
			contactImporterModalInfoUpdater:updateTimestamp(appStorageService, USER_ID, 1000)
			local modalSeenCountInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
			local modalSeenTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
			jestExpect(modalSeenCountInfo).toBe("")
			jestExpect(modalSeenTimestampInfo).toBe("")
		end)
	else
		describe("Updating timestamp info", function()
			it("SHOULD append new user to empty timestamp info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = "",
				})
				local currentTimestamp = DateTime.now().UnixTimestampMillis
				contactImporterModalInfoUpdater:updateTimestamp(appStorageService, USER_ID, currentTimestamp)
				local modalSeenTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
				jestExpect(modalSeenTimestampInfo).toBe(USER_ID .. ":" .. tostring(currentTimestamp))
			end)
			it("SHOULD append new user to existing timestamp info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = "USER_345:134908",
				})
				local currentTimestamp = DateTime.now().UnixTimestampMillis
				contactImporterModalInfoUpdater:updateTimestamp(appStorageService, USER_ID, currentTimestamp)
				local modalSeenTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
				jestExpect(modalSeenTimestampInfo).toBe(
					"USER_345:134908" .. "," .. USER_ID .. ":" .. tostring(currentTimestamp)
				)
			end)
			it("SHOULD update existing user timestamp info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = "USER_345:134908," .. USER_ID .. ":" .. "123124134",
				})
				local currentTimestamp = DateTime.now().UnixTimestampMillis
				contactImporterModalInfoUpdater:updateTimestamp(appStorageService, USER_ID, currentTimestamp)
				local modalSeenTimestampInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP)
				jestExpect(modalSeenTimestampInfo).toBe(
					"USER_345:134908," .. USER_ID .. ":" .. tostring(currentTimestamp)
				)
			end)
		end)

		describe("Updating modal seen count info", function()
			it("SHOULD append new user to empty seen count info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = "",
				})
				contactImporterModalInfoUpdater:addSeenCount(appStorageService, USER_ID)
				local modalSeenCountInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
				jestExpect(modalSeenCountInfo).toBe(USER_ID .. ":" .. "1")
			end)
			it("SHOULD append new user to existing seen count info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = "USER_345:5",
				})
				contactImporterModalInfoUpdater:addSeenCount(appStorageService, USER_ID)
				local modalSeenCountInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
				jestExpect(modalSeenCountInfo).toBe("USER_345:5," .. USER_ID .. ":" .. "1")
			end)
			it("SHOULD update user seen count info", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = "USER_345:5," .. USER_ID .. ":" .. "1",
				})
				contactImporterModalInfoUpdater:addSeenCount(appStorageService, USER_ID)
				local modalSeenCountInfo = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT)
				jestExpect(modalSeenCountInfo).toBe("USER_345:5," .. USER_ID .. ":" .. "2")
			end)
		end)
	end
end)
