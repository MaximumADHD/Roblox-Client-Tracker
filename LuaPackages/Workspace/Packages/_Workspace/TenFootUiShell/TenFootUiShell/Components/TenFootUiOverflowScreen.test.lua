local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local SharedFlags = require(Packages.SharedFlags)
local JestGlobals = require(Packages.Dev.JestGlobals)
local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mocks = TestHelpers.mocks
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs
local describe = JestGlobals.describe
local it = JestGlobals.it
local GetFFlagUIBloxEnableRoDSDesignTokenSupport = SharedFlags.UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport
local TenFootUiOverflowScreen = require(script.Parent.TenFootUiOverflowScreen)

describe("TenFootUiOverflowScreen", function()
	it("should create and destroy without errors", function()
		if GetFFlagUIBloxEnableRoDSDesignTokenSupport() then
			local providers = mocks.makeMockProviders()
			local providerSpecs = mapProviderListToSpecs(providers)

			local element = React.createElement(
				ProviderContainer,
				{ providers = providerSpecs },
				React.createElement(TenFootUiOverflowScreen, nil, React.createElement("Frame"))
			)

			local container = Instance.new("Folder")
			local root = ReactRoblox.createRoot(container)

			ReactRoblox.act(function()
				root:render(element)
			end)
			root:unmount()
		end
	end)
end)
