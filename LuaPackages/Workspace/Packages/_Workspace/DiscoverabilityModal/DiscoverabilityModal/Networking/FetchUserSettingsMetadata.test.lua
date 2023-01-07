local DiscoverabilityModal = script:FindFirstAncestor("DiscoverabilityModal")
local mockStore = require(DiscoverabilityModal.TestHelpers.mockStore)

local dependencies = require(DiscoverabilityModal.dependencies)
local NetworkingUserSettings = dependencies.NetworkingUserSettings

local devDependencies = require(DiscoverabilityModal.devDependencies)
local JestGlobals = devDependencies.JestGlobals
local beforeAll = JestGlobals.beforeAll
local afterEach = JestGlobals.afterEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it
local jest = JestGlobals.jest

local FetchUserSettingsMetadata = require(script.Parent.FetchUserSettingsMetadata)

local DEFAULT_STATE = {}

describe("FetchUserSettingsMetadata", function()
	beforeAll(function()
		NetworkingUserSettings.GetUserSettingsMetadata.Mock.clear()
	end)

	afterEach(function()
		NetworkingUserSettings.GetUserSettingsMetadata.Mock.clear()
	end)

	it("SHOULD make right network calls", function()
		local GetMetadataSpy = jest.fn()
		NetworkingUserSettings.GetUserSettingsMetadata.Mock.clear()
		NetworkingUserSettings.GetUserSettingsMetadata.Mock.reply(function()
			GetMetadataSpy()
			return {}
		end)

		local store = mockStore(DEFAULT_STATE)

		store:dispatch(FetchUserSettingsMetadata())
		expect(GetMetadataSpy).toHaveBeenCalledTimes(1)
	end)
end)
