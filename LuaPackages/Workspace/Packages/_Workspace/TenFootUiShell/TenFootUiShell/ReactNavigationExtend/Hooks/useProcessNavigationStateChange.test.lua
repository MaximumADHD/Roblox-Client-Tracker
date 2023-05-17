local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local JestGlobals = require(Packages.Dev.JestGlobals)
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local it = JestGlobals.it
local expect = JestGlobals.expect
local jest = JestGlobals.jest
local UnitTestHelpers = require(Packages.Dev.UnitTestHelpers)
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local renderHookWithProviders = UnitTestHelpers.renderHookWithProviders
local mocks = TestHelpers.mocks
local useProcessNavigationStateChange = require(script.Parent.useProcessNavigationStateChange)

describe("useProcessNavigationStateChange", function()
	local action

	beforeEach(function()
		action = jest.fn().mockReturnValue({ type = "Action" })
	end)

	it("should return a function which dispatches a provided action", function()
		local helper = renderHookWithProviders(function()
			return useProcessNavigationStateChange(action)
		end, {
			providers = mocks.makeMockProviders(),
		})

		local processNavigationStateChange = helper.result

		expect(type(processNavigationStateChange)).toEqual("function")

		helper.cleanup()
	end)

	it("should dispatch the provided action with state when the returned function is invoked", function()
		local nextNavState = {}

		local helper = renderHookWithProviders(function()
			return useProcessNavigationStateChange(action)
		end, {
			providers = mocks.makeMockProviders(),
		})

		local processNavigationStateChange = helper.result

		processNavigationStateChange(nil, nextNavState)

		expect(action).toHaveBeenCalledWith(nextNavState)

		helper.cleanup()
	end)
end)
