local ContactImporter = script:FindFirstAncestor("ContactImporter")
local devDependencies = require(ContactImporter.devDependencies)

local Constants = require(ContactImporter.Common.Constants)
local shouldShowContactImporterModal = require(script.Parent.shouldShowContactImporterModal)

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
local OLDER_TIMESTAMP = DateTime.now().UnixTimestampMillis - (MIN_DAYS + 1) * MILLISECONDS_PER_DAY -- current time minus 1 day
local UPDATED_TIMESTAMP = DateTime.now().UnixTimestampMillis - (MIN_DAYS - 1) * MILLISECONDS_PER_DAY -- current time plus 1 day

describe("shouldShowContactImporterModal", function()
	if HAS_FEATURE_IN_GAME_ENGINE then
		it("SHOULD return false if user is already opted into Contact Importer", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. tostring(MAX_DISPLAY_COUNT - 1),
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = USER_ID,
				[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. OLDER_TIMESTAMP,
			})
			local params = {
				appStorageService = appStorageService,
				userid = USER_ID,
			}
			jestExpect(shouldShowContactImporterModal(params)).toBe(false)
		end)
		it(
			"SHOULD return false if user has not opted in but has already seen the modal more than max number of times within timeframe",
			function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. tostring(
						MAX_DISPLAY_COUNT + 1
					),
					[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "",
					[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. UPDATED_TIMESTAMP,
				})
				local params = {
					appStorageService = appStorageService,
					userid = USER_ID,
				}
				jestExpect(shouldShowContactImporterModal(params)).toBe(false)
			end
		)
		it("SHOULD return true if user has not opted in and meets requirements for seeing modal", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_MODAL_DISPLAY_COUNT] = USER_ID .. ":" .. tostring(MAX_DISPLAY_COUNT - 1),
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "",
				[Constants.LOCAL_STORAGE_KEY_MODAL_TIMESTAMP] = USER_ID .. ":" .. UPDATED_TIMESTAMP,
			})
			local params = {
				appStorageService = appStorageService,
				userid = USER_ID,
			}
			jestExpect(shouldShowContactImporterModal(params)).toBe(true)
		end)
	else
		it("SHOULD return true if no game engine feature", function()
			local appStorageService = MockAppStorageService.new({})
			local params = {
				appStorageService = appStorageService,
				userid = USER_ID,
			}
			jestExpect(shouldShowContactImporterModal(params)).toBe(true)
		end)
	end
end)
