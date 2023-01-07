local ContactImporter = script.Parent.Parent
local dependencies = require(ContactImporter.dependencies)
local devDependencies = require(ContactImporter.devDependencies)
local Rodux = dependencies.Rodux
local useFetchContactImporterInfoOnce = require(script.Parent.useFetchContactImporterInfoOnce)

local JestGlobals = devDependencies.JestGlobals
local jestExpect = devDependencies.jestExpect
local describe = JestGlobals.describe
local it = JestGlobals.it
local jest = JestGlobals.jest
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local renderHookWithProviders = require(ContactImporter.TestHelpers.renderHookWithProviders)
local GetUserSettings = dependencies.NetworkingUserSettings.GetUserSettings

local mockConfig, isContactImporterPolicyEnabled, mockGetUserSettings

beforeEach(function()
	mockGetUserSettings = jest.fn()
	GetUserSettings.Mock.clear()
	GetUserSettings.Mock.reply(function()
		mockGetUserSettings()
	end)
	isContactImporterPolicyEnabled = jest.fn().mockReturnValue(false)
	mockConfig = {
		useAppPolicy = jest.fn().mockReturnValue({
			isContactImporterPolicyEnabled = isContactImporterPolicyEnabled,
		}),
	}
end)

afterEach(function()
	GetUserSettings.Mock.clear()
end)

describe("useFetchContactImporterInfoOnce", function()
	it("SHOULD not call endpoint if policy is not enabled and user isn't a soothsayer", function()
		local testStore = Rodux.Store.new(function()
			return {}
		end, {}, { Rodux.thunkMiddleware })

		renderHookWithProviders(function()
			return useFetchContactImporterInfoOnce(mockConfig)
		end, {
			store = testStore,
		})

		jestExpect(mockGetUserSettings).never.toHaveBeenCalled()
	end)

	it("SHOULD call endpoint if contact importer is enabled", function()
		local testStore = Rodux.Store.new(function()
			return {
				IsLocalUserSoothsayer = true,
			}
		end, {}, { Rodux.thunkMiddleware })

		renderHookWithProviders(function()
			return useFetchContactImporterInfoOnce(mockConfig)
		end, {
			store = testStore,
		})

		jestExpect(mockGetUserSettings).toHaveBeenCalledTimes(1)
	end)

	it("SHOULD call endpoint only once if contact importer is enabled", function()
		local testStore = Rodux.Store.new(function()
			return {
				IsLocalUserSoothsayer = true,
			}
		end, {}, { Rodux.thunkMiddleware })

		local helper = renderHookWithProviders(function()
			return useFetchContactImporterInfoOnce(mockConfig)
		end, {
			store = testStore,
		})
		helper.rerender({})
		helper.rerender({})

		jestExpect(mockGetUserSettings).toHaveBeenCalledTimes(1)
	end)
end)
