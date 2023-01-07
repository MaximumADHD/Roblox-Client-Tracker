local SocialModalsCommon = script:FindFirstAncestor("SocialModalsCommon")
local Packages = SocialModalsCommon.Parent

local JestGlobals = require(Packages.Dev.JestGlobals)
local jestExpect = JestGlobals.expect
local describe = JestGlobals.describe
local it = JestGlobals.it

local Constants = require(script.Parent.Parent.Constants)
local updateOptedInUsers = require(script.Parent.updateOptedInUsers)

local MockAppStorageService = require(Packages.Dev.SocialTestHelpers).TestHelpers.MockAppStorageService
local USER_ID = "123"
local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)

describe("Check opted-in users", function()
	if not HAS_ENGINE_FEATURE then
		it("SHOULD NOT update local storage for opted in users if no engine feature detected", function()
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "",
			})
			updateOptedInUsers:addUserToLocalStorage(appStorageService, USER_ID)
			local optedInUsers = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
			jestExpect(optedInUsers).toBe("")
		end)
	else
		describe("When no OS permissions are detected", function()
			it("SHOULD clear local storage", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "user1,user2,user3",
				})
				updateOptedInUsers:clearLocalStorage(appStorageService)

				local optedInUsers = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
				jestExpect(optedInUsers).toBe("")
			end)
		end)

		describe("When there are OS permissions and user has opted in already", function()
			it("SHOULD keep userid in opted-in users if user is already present", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "user1,user2,user3" .. "," .. USER_ID,
				})
				updateOptedInUsers:addUserToLocalStorage(appStorageService, USER_ID)

				local optedInUsers = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
				jestExpect(optedInUsers).toBe("user1,user2,user3" .. "," .. USER_ID)
			end)
		end)

		describe("When there are OS permissions and user has not opted in yet", function()
			it("SHOULD add userid to opted-in users if user is not there", function()
				local appStorageService = MockAppStorageService.new({
					[Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS] = "user1,user2,user3",
				})
				updateOptedInUsers:addUserToLocalStorage(appStorageService, USER_ID)

				local optedInUsers = appStorageService:GetItem(Constants.LOCAL_STORAGE_KEY_OPTED_IN_USERS)
				jestExpect(optedInUsers).toBe(USER_ID .. "," .. "user1,user2,user3")
			end)
		end)
	end
end)
