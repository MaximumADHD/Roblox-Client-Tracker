local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)
local Constants = require(ContactImporter.Common.Constants)
local contactImporterModalInfo = require(script.Parent.contactImporterModalInfo)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it

local HAS_FEATURE_IN_GAME_ENGINE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
local getFIntContactImporterModalDisplayMaxCount =
	require(script.Parent.Parent.Flags.getFIntContactImporterModalDisplayMaxCount)
local getFIntContactImporterModalDisplayMinDays =
	require(script.Parent.Parent.Flags.getFIntContactImporterModalDisplayMinDays)

local MockAppStorageService = devDependencies.MockAppStorageService
local USER_ID = "123"
local MIN_DAYS = getFIntContactImporterModalDisplayMinDays()
local MAX_DISPLAY_COUNT = getFIntContactImporterModalDisplayMaxCount()
local MILLISECONDS_PER_DAY = 24 * 60 * 60 * 1000

describe("lifecycle", function()
	if HAS_FEATURE_IN_GAME_ENGINE then
		it("SHOULD return true if user has not seen the modal 3 times", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. "1",
			})
			jestExpect(contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, USER_ID)).toBe(
				true
			)
		end)

		it("SHOULD return false if user has seen the modal more than max number of times", function()
			local seenCount = MAX_DISPLAY_COUNT + 1
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. tostring(seenCount),
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = USER_ID,
				[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. tostring(
					DateTime.now().UnixTimestampMillis
				),
			})
			jestExpect(contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, USER_ID)).toBe(
				false
			)
		end)

		it("SHOULD return true if user has not seen the modal within minimum days", function()
			local updatedTimestamp = DateTime.now().UnixTimestampMillis - (MIN_DAYS + 1) * MILLISECONDS_PER_DAY -- current time minus X days
			local seenCount = MAX_DISPLAY_COUNT + 1
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. tostring(seenCount),
				[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. tostring(updatedTimestamp),
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = USER_ID,
			})
			jestExpect(contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, USER_ID)).toBe(
				true
			)
		end)

		it("SHOULD return false if user has seen the modal within minimum number of days", function()
			local seenCount = MAX_DISPLAY_COUNT + 1
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. tostring(seenCount),
				[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. tostring(
					DateTime.now().UnixTimestampMillis
				),
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "",
			})
			jestExpect(contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, USER_ID)).toBe(
				false
			)
		end)

		it(
			"SHOULD return true if user is not opted in via local storage even if previously seen over max number of times",
			function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. "5",
					[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. tostring(DateTime.now()),
					[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "111,456,789",
				})
				jestExpect(contactImporterModalInfo:isUserOptedInLocalStorage(appStorageService, USER_ID)).toBe(false)
				jestExpect(contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, USER_ID)).toBe(
					false
				)
			end
		)
	else
		it("SHOULD always return correct values if storage keys are not in game engine", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = USER_ID,
			})
			jestExpect(contactImporterModalInfo:isUserOptedInLocalStorage(appStorageService, USER_ID)).toBe(false)
			jestExpect(contactImporterModalInfo:shouldUserSeeModalPotentiallyAgain(appStorageService, USER_ID)).toBe(
				true
			)
		end)
	end
end)
