local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)

local NetworkingContacts = dependencies.NetworkingContacts

local mockStore = require(ContactImporter.TestHelpers.mockStore)
local MockAppStorageService = devDependencies.MockAppStorageService

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeAll = JestGlobals.beforeAll
local afterEach = JestGlobals.afterEach

local Promise = dependencies.Promise
local Constants = require(ContactImporter.Common.Constants)

local AutoSyncContacts = require(script.Parent.AutoSyncContacts)

local USER_ID = "123"

describe("AutoSyncContacts", function()
	beforeAll(function()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
	end)

	afterEach(function()
		NetworkingContacts.UploadContactsByUser.Mock.clear()
	end)

	it("SHOULD send contacts to BE if enough time since last sync", function()
		local UploadContactsByUserSpy = jest.fn()
		NetworkingContacts.UploadContactsByUser.Mock.reply(function()
			UploadContactsByUserSpy()
			return {
				responseBody = {},
			}
		end)

		local supportsContactsSpy = jest.fn()
		local ContactsProtocolMock = {}
		function ContactsProtocolMock:supportsContacts()
			supportsContactsSpy()
			return Promise.resolve(true)
		end
		local getContactsSpy = jest.fn()
		function ContactsProtocolMock:getContacts()
			getContactsSpy()
			return Promise.resolve({ contacts = {} })
		end

		local store = mockStore({})

		local appStorageService = MockAppStorageService.new({
			[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = "",
		})

		store:dispatch(AutoSyncContacts(USER_ID, ContactsProtocolMock, appStorageService))
		jestExpect(UploadContactsByUserSpy).toHaveBeenCalledTimes(1)
		jestExpect(supportsContactsSpy).toHaveBeenCalledTimes(1)
		jestExpect(getContactsSpy).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD NOT send contacts to BE if not enough time since last sync", function()
		local HAS_ENGINE_FEATURE = game:GetEngineFeature(Constants.UNIVERSAL_APP_CONTACT_IMPORTER_STORAGE_KEYS)
		if HAS_ENGINE_FEATURE then
			local UploadContactsByUserSpy = jest.fn()
			NetworkingContacts.UploadContactsByUser.Mock.reply(function()
				UploadContactsByUserSpy()
				return {
					responseBody = {},
				}
			end)

			local supportsContactsSpy = jest.fn()
			local ContactsProtocolMock = {}
			function ContactsProtocolMock:supportsContacts()
				supportsContactsSpy()
				return Promise.resolve(true)
			end
			local getContactsSpy = jest.fn()
			function ContactsProtocolMock:getContacts()
				getContactsSpy()
				return Promise.resolve({ contacts = {} })
			end

			local store = mockStore({})

			local currentTime = DateTime.now().UnixTimestampMillis
			local appStorageService = MockAppStorageService.new({
				[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = USER_ID .. ":" .. tostring(currentTime),
			})

			store:dispatch(AutoSyncContacts(USER_ID, ContactsProtocolMock, appStorageService))
			jestExpect(UploadContactsByUserSpy).never.toHaveBeenCalled()
			jestExpect(supportsContactsSpy).never.toHaveBeenCalled()
			jestExpect(getContactsSpy).never.toHaveBeenCalled()
		end
	end)

	it("SHOULD NOT send contacts to BE if no permissions to contacts", function()
		local UploadContactsByUserSpy = jest.fn()
		NetworkingContacts.UploadContactsByUser.Mock.reply(function()
			UploadContactsByUserSpy()
			return {
				responseBody = {},
			}
		end)

		local supportsContactsSpy = jest.fn()
		local ContactsProtocolMock = {}
		function ContactsProtocolMock:supportsContacts()
			supportsContactsSpy()
			return Promise.resolve(false)
		end
		local getContactsSpy = jest.fn()
		function ContactsProtocolMock:getContacts()
			getContactsSpy()
			return Promise.resolve({ contacts = {} })
		end

		local store = mockStore({})

		local appStorageService = MockAppStorageService.new({
			[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = "",
		})

		store:dispatch(AutoSyncContacts(USER_ID, ContactsProtocolMock, appStorageService))
		jestExpect(UploadContactsByUserSpy).never.toHaveBeenCalled()
		jestExpect(supportsContactsSpy).toHaveBeenCalledTimes(1)
		jestExpect(getContactsSpy).never.toHaveBeenCalled()
	end)

	it("SHOULD attempt to send contacts to BE if we bypass sync checks", function()
		local UploadContactsByUserSpy = jest.fn()
		NetworkingContacts.UploadContactsByUser.Mock.reply(function()
			UploadContactsByUserSpy()
			return {
				responseBody = {},
			}
		end)

		local supportsContactsSpy = jest.fn()
		local ContactsProtocolMock = {}
		function ContactsProtocolMock:supportsContacts()
			supportsContactsSpy()
			return Promise.resolve(true)
		end
		local getContactsSpy = jest.fn()
		function ContactsProtocolMock:getContacts()
			getContactsSpy()
			return Promise.resolve({ contacts = {} })
		end

		local store = mockStore({})

		local appStorageService = MockAppStorageService.new({
			[Constants.LOCAL_STORAGE_KEY_CONTACTS_SYNC] = "",
		})

		store:dispatch(AutoSyncContacts(USER_ID, ContactsProtocolMock, appStorageService, true))
		jestExpect(UploadContactsByUserSpy).toHaveBeenCalledTimes(1)
		jestExpect(supportsContactsSpy).toHaveBeenCalledTimes(1)
		jestExpect(getContactsSpy).toHaveBeenCalledTimes(1)
	end)
end)
