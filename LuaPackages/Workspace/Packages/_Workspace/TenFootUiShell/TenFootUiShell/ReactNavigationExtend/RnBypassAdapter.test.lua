local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local Signal = require(Packages.AppCommonLib).Signal
local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer
local JestGlobals = require(Packages.Dev.JestGlobals)
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mocks = TestHelpers.mocks
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs
local it = JestGlobals.it
local describe = JestGlobals.describe
local beforeEach = JestGlobals.beforeEach
local expect = JestGlobals.expect
local RnBypassAdapter = require(script.Parent.RnBypassAdapter)

describe("RnBypassAdapter", function()
	local rnBypassActionSignal

	beforeEach(function()
		rnBypassActionSignal = Signal.new()
	end)

	it("should render without crashing", function()
		local providers = mocks.makeMockProviders()
		local providerSpecs = mapProviderListToSpecs(providers)

		print("rnBypassActionSignal", type(rnBypassActionSignal))
		local element = React.createElement(ProviderContainer, { providers = providerSpecs }, {
			RnBypassAdapter = React.createElement(RnBypassAdapter, {
				rnBypassActionSignal = rnBypassActionSignal,
			}),
		})

		local rootContainer = Instance.new("Folder")
		local root = ReactRoblox.createRoot(rootContainer)

		expect(function()
			ReactRoblox.act(function()
				root:render(element)
			end)
		end).never.toThrow()

		root:unmount()
	end)

	it("should dispatch an action when rnBypassActionSignal fires", function()
		local providers, nestedMocks = mocks.makeMockProviders()
		local providerSpecs = mapProviderListToSpecs(providers)
		local mockNavigation = nestedMocks.mockNavigation

		local action = { type = "Action" }
		local element = React.createElement(ProviderContainer, { providers = providerSpecs }, {
			RnBypassAdapter = React.createElement(RnBypassAdapter, {
				rnBypassActionSignal = rnBypassActionSignal,
			}),
		})

		local rootContainer = Instance.new("Folder")
		local root = ReactRoblox.createRoot(rootContainer)

		ReactRoblox.act(function()
			root:render(element)
		end)

		ReactRoblox.act(function()
			rnBypassActionSignal:fire(action)
		end)

		expect(mockNavigation.dispatch).toHaveBeenCalledWith(action)

		root:unmount()
	end)
end)
