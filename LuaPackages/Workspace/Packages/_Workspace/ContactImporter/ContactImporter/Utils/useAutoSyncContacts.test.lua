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
	it("SHOULD call AutoSyncContacts when shouldShowContactImporter is true", function()
		local mockContactImporterSettings = {
			shouldFetchContactImporterData = true,
			shouldShowContactImporter = true,
			shouldShowContactImporterModal = true,
		}

		local mockDispatchAutoSyncContacts = jest.fn()

		local testStore = Rodux.Store.new(function()
			return {
				LocalUserId = "111",
			}
		end, {}, { Rodux.thunkMiddleware })

		local _helper = renderHookWithProviders(function()
			useAutoSyncContacts(mockContactImporterSettings, mockDispatchAutoSyncContacts)
		end, {
			store = testStore,
		})

		jestExpect(mockDispatchAutoSyncContacts).toHaveBeenCalled()
	end)

	it("SHOULD NOT call AutoSyncContacts when shouldShowContactImporter is false", function()
		local mockContactImporterSettings = {
			shouldFetchContactImporterData = false,
			shouldShowContactImporter = false,
			shouldShowContactImporterModal = true,
		}

		local mockDispatchAutoSyncContacts = jest.fn()

		local testStore = Rodux.Store.new(function()
			return {
				LocalUserId = "111",
			}
		end, {}, { Rodux.thunkMiddleware })

		local _helper = renderHookWithProviders(function()
			useAutoSyncContacts(mockContactImporterSettings, mockDispatchAutoSyncContacts)
		end, {
			store = testStore,
		})

		jestExpect(mockDispatchAutoSyncContacts).never.toHaveBeenCalled()
	end)
end)
