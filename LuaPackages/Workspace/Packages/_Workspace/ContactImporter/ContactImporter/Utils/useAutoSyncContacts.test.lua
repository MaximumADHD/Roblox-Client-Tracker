local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)
local Rodux = dependencies.Rodux

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local jest = devDependencies.jest
local describe = JestGlobals.describe
local it = JestGlobals.it
local useAutoSyncContacts = require(script.Parent.useAutoSyncContacts)

local renderHookWithProviders = require(ContactImporter.TestHelpers.renderHookWithProviders)

describe("useAutoSyncContacts", function()
	it("SHOULD call AutoSyncContacts when canUploadContacts and isPhoneVerified is true", function()
		local mockDispatchAutoSyncContacts = jest.fn()

		local testStore = Rodux.Store.new(function()
			return {
				LocalUserId = "111",
				ContactImporter = {
					ShowContactImporterParams = {
						canUploadContacts = true,
						isPhoneVerified = true,
					},
				},
			}
		end, {}, { Rodux.thunkMiddleware })

		local _helper = renderHookWithProviders(function()
			useAutoSyncContacts(mockDispatchAutoSyncContacts)
		end, {
			store = testStore,
		})

		jestExpect(mockDispatchAutoSyncContacts).toHaveBeenCalled()
	end)

	it("SHOULD NOT call AutoSyncContacts when canUploadContacts is false", function()
		local mockDispatchAutoSyncContacts = jest.fn()

		local testStore = Rodux.Store.new(function()
			return {
				LocalUserId = "111",
				ContactImporter = {
					ShowContactImporterParams = {
						canUploadContacts = false,
						isPhoneVerified = true,
					},
				},
			}
		end, {}, { Rodux.thunkMiddleware })

		local _helper = renderHookWithProviders(function()
			useAutoSyncContacts(mockDispatchAutoSyncContacts)
		end, {
			store = testStore,
		})

		jestExpect(mockDispatchAutoSyncContacts).never.toHaveBeenCalled()
	end)

	it("SHOULD NOT call AutoSyncContacts when isPhoneVerified is false", function()
		local mockDispatchAutoSyncContacts = jest.fn()

		local testStore = Rodux.Store.new(function()
			return {
				LocalUserId = "111",
				ContactImporter = {
					ShowContactImporterParams = {
						canUploadContacts = true, -- technically an impossible set of parameters, but testing anyways
						isPhoneVerified = false,
					},
				},
			}
		end, {}, { Rodux.thunkMiddleware })

		local _helper = renderHookWithProviders(function()
			useAutoSyncContacts(mockDispatchAutoSyncContacts)
		end, {
			store = testStore,
		})

		jestExpect(mockDispatchAutoSyncContacts).never.toHaveBeenCalled()
	end)
end)
