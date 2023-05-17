local ReplicatedStorage = game:GetService("ReplicatedStorage")
local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local Constants = require(TenFootUiShell.Constants)
local React = require(Packages.React)
local ReactRoblox = require(Packages.ReactRoblox)
local SharedFlags = require(Packages.SharedFlags)
local Signal = require(Packages.AppCommonLib).Signal
local JestGlobals = require(Packages.Dev.JestGlobals)
local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mocks = TestHelpers.mocks
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach
local GetFFlagUIBloxEnableRoDSDesignTokenSupport = SharedFlags.UIBlox.GetFFlagUIBloxEnableRoDSDesignTokenSupport

local TenFootUiContainer = require(script.Parent.TenFootUiContainer)

describe("TenFootUiContainer", function()
	local backgroundModel
	beforeEach(function()
		backgroundModel = Instance.new("Model")
		backgroundModel.Name = Constants.BACKGROUND_MODEL_NAME
		backgroundModel.Parent = ReplicatedStorage
	end)
	afterEach(function()
		backgroundModel:Destroy()
	end)

	it("should create and destroy without errors", function()
		if GetFFlagUIBloxEnableRoDSDesignTokenSupport() then
			local providers, nestedMocks = mocks.makeMockProviders()
			local providerSpecs = mapProviderListToSpecs(providers)
			local mockTenFootUiContext = nestedMocks.mockTenFootUiContext

			local element = React.createElement(
				ProviderContainer,
				{ providers = providerSpecs },
				React.createElement(TenFootUiContainer, {
					dependencies = mockTenFootUiContext,
					rnBypassActionSignal = Signal.new(),
				})
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
