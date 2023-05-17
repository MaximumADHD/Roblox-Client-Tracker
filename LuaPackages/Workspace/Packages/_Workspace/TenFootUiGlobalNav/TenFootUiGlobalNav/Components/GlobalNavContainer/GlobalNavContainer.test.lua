local Packages = script:FindFirstAncestor("TenFootUiGlobalNav").Parent
local React = require(Packages.React)
local SharedFlags = require(Packages.SharedFlags)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mocks = TestHelpers.mocks
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs
local describe = JestGlobals.describe
local it = JestGlobals.it
local GetFFlagUIBloxEnableRoDSDesignTokenSupport = SharedFlags.UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport

local GlobalNavContainer = require(script.Parent.GlobalNavContainer)

describe("GlobalNavContainer", function()
	it("should create and destroy without errors", function()
		if GetFFlagUIBloxEnableRoDSDesignTokenSupport() then
			local providers, nestedMocks = mocks.makeMockProviders()
			local providerSpecs = mapProviderListToSpecs(providers)
			local mockTenFootUiContext = nestedMocks.mockTenFootUiContext

			local element = React.createElement(ProviderContainer, { providers = providerSpecs }, {
				GlobalNavContainer = React.createElement(GlobalNavContainer, {
					dependencies = mockTenFootUiContext,
					updateRoute = function() end,
				}),
			})

			local container = Instance.new("Folder")
			local root = ReactRoblox.createRoot(container)

			ReactRoblox.act(function()
				root:render(element)
			end)

			root:unmount()
		end
	end)
end)
