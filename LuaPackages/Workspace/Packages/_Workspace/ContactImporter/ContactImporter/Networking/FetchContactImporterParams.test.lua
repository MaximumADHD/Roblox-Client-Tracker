local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local NetworkingUserSettings = dependencies.NetworkingUserSettings
local NetworkingAccountInformation = dependencies.NetworkingAccountInformation
local NetworkingAccountSettings = dependencies.NetworkingAccountSettings

local mockStore = require(ContactImporter.TestHelpers.mockStore)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterEach = JestGlobals.afterEach

local Constants = require(ContactImporter.Common.Constants)
local SetContactImporterDisplayLogic = require(ContactImporter.Actions.SetContactImporterDisplayLogic)
local Promise = dependencies.Promise
local MockAppStorageService = devDependencies.MockAppStorageService
local PermissionsProtocol = dependencies.PermissionsProtocol

local FetchContactImporterParams = require(script.Parent.FetchContactImporterParams)

local USER_ID = "123"
local DEFAULT_STATE = {
	[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = false,
	[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = false,
	hasOSPermissions = false,
	isPhoneVerified = false,
	canUploadContacts = false,
	isEmailVerified = nil,
}

local appStorageService = MockAppStorageService.new({})

describe("FetchContactImporterParams", function()
	beforeAll(function()
		NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		NetworkingUserSettings.GetUserSettings.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		NetworkingAccountSettings.GetEmailSettings.Mock.clear()
	end)

	afterEach(function()
		NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		NetworkingUserSettings.GetUserSettings.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		NetworkingAccountSettings.GetEmailSettings.Mock.clear()
	end)

	it("SHOULD make right network calls", function()
		local GetPhoneInformationSpy = jest.fn()
		NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
			GetPhoneInformationSpy()
			return {
				responseBody = {
					isVerified = true,
				},
			}
		end)

		local GetUserSettingsSpy = jest.fn()
		NetworkingUserSettings.GetUserSettings.Mock.clear()
		NetworkingUserSettings.GetUserSettings.Mock.reply(function()
			GetUserSettingsSpy()
			return {
				responseBody = {
					canUploadContacts = true,
				},
			}
		end)

		local mockCallback = jest.fn()
		local PermissionsProtocolMock = {}
		function PermissionsProtocolMock:hasPermissions(param)
			mockCallback()
			local result = {
				status = "",
			}
			return Promise.resolve(result)
		end

		local GetAccountSettingsSpy = jest.fn()
		NetworkingAccountSettings.GetEmailSettings.Mock.clear()
		NetworkingAccountSettings.GetEmailSettings.Mock.reply(function()
			GetAccountSettingsSpy()
			return {
				responseBody = {
					verified = false,
				},
			}
		end)

		local reducerMonitorSpy = jest.fn()
		local function SetContactImporterDisplayLogicReducerMonitor(state, action)
			if action.type == SetContactImporterDisplayLogic.name then
				reducerMonitorSpy()
				local hasOSPermissions = action.hasOSPermissions
				local isPhoneVerified = action.isPhoneVerified
				local shouldShowContactImporterUpsellAgain = action.shouldShowContactImporterUpsellAgain
				local canUploadContacts = action.canUploadContacts
				local isEmailVerified = action.isEmailVerified

				return {
					[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE] = isPhoneVerified
						-- need to check for false here because default value is nil
						and canUploadContacts ~= false,
					[Constants.SHOULD_SHOW_CONTACT_IMPORTER_UPSELL_MODAL] = not hasOSPermissions
						and shouldShowContactImporterUpsellAgain,
					hasOSPermissions = hasOSPermissions,
					isPhoneVerified = isPhoneVerified,
					isEmailVerified = isEmailVerified,
					canUploadContacts = canUploadContacts,
				}
			end

			return state
		end

		local store = mockStore(DEFAULT_STATE, SetContactImporterDisplayLogicReducerMonitor)

		store:dispatch(FetchContactImporterParams(USER_ID, PermissionsProtocolMock, appStorageService))
		jestExpect(GetPhoneInformationSpy).toHaveBeenCalledTimes(1)
		jestExpect(GetUserSettingsSpy).toHaveBeenCalledTimes(1)
		jestExpect(mockCallback).toHaveBeenCalledTimes(1)
		jestExpect(reducerMonitorSpy).toHaveBeenCalledTimes(1)

		local state = store:getState()

		local shouldShowFeature = state[Constants.SHOULD_SHOW_CONTACT_IMPORTER_FEATURE]
		local hasOSPermissions = state.hasOSPermissions
		local isPhoneVerified = state.isPhoneVerified
		local canUploadContacts = state.canUploadContacts
		jestExpect(shouldShowFeature).toBe(true)
		jestExpect(isPhoneVerified).toBe(true)
		jestExpect(canUploadContacts).toBe(true)
		jestExpect(hasOSPermissions).toBe(false)
	end)

	it("SHOULD update user settings canUploadContacts when changes in OS Permissions are detected", function()
		NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
			return {
				responseBody = {
					isVerified = true,
				},
			}
		end)

		NetworkingUserSettings.GetUserSettings.Mock.clear()
		NetworkingUserSettings.GetUserSettings.Mock.reply(function()
			return {
				responseBody = {
					canUploadContacts = true,
				},
			}
		end)

		local UpdateUserSettingsSpy = jest.fn()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
			UpdateUserSettingsSpy()
			return {
				responseBody = {},
			}
		end)

		local GetAccountSettingsSpy = jest.fn()
		NetworkingAccountSettings.GetEmailSettings.Mock.clear()
		NetworkingAccountSettings.GetEmailSettings.Mock.reply(function()
			GetAccountSettingsSpy()
			return {
				responseBody = {
					verified = false,
				},
			}
		end)

		local PermissionsProtocolMock = {}
		function PermissionsProtocolMock:hasPermissions(param)
			local result = {
				status = PermissionsProtocol.Status.DENIED,
			}
			return Promise.resolve(result)
		end

		local appStorageService = MockAppStorageService.new({
			[Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS] = "true",
		})

		local store = mockStore(DEFAULT_STATE)
		store:dispatch(FetchContactImporterParams(USER_ID, PermissionsProtocolMock, appStorageService))
		jestExpect(UpdateUserSettingsSpy).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD not update user settings canUploadContacts if no changes in OS Permissions", function()
		NetworkingAccountInformation.GetPhoneInformation.Mock.clear()
		NetworkingAccountInformation.GetPhoneInformation.Mock.reply(function()
			return {
				responseBody = {
					isVerified = true,
				},
			}
		end)

		NetworkingUserSettings.GetUserSettings.Mock.clear()
		NetworkingUserSettings.GetUserSettings.Mock.reply(function()
			return {
				responseBody = {
					canUploadContacts = true,
				},
			}
		end)

		local UpdateUserSettingsSpy = jest.fn()
		NetworkingUserSettings.UpdateUserSettings.Mock.clear()
		NetworkingUserSettings.UpdateUserSettings.Mock.reply(function()
			UpdateUserSettingsSpy()
			return {
				responseBody = {},
			}
		end)

		local PermissionsProtocolMock = {}
		function PermissionsProtocolMock:hasPermissions(param)
			local result = {
				status = PermissionsProtocol.Status.AUTHORIZED,
			}
			return Promise.resolve(result)
		end

		local appStorageService = MockAppStorageService.new({
			[Constants.LOCAL_STORAGE_KEY_LAST_CONTACTS_OS_PERMISSIONS] = "true",
		})

		local store = mockStore(DEFAULT_STATE)
		store:dispatch(FetchContactImporterParams(USER_ID, PermissionsProtocolMock, appStorageService))
		jestExpect(UpdateUserSettingsSpy).never.toHaveBeenCalled()
	end)
end)
