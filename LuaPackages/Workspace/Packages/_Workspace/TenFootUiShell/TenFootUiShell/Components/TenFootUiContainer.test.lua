local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Packages = script:FindFirstAncestor("TenFootUiShell").Parent
local React = require(Packages.React)
local ReactRoblox = require(Packages.Dev.ReactRoblox)
local JestGlobals = require(Packages.Dev.JestGlobals)
local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mocks = TestHelpers.mocks
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs
local describe = JestGlobals.describe
local it = JestGlobals.it
local beforeEach = JestGlobals.beforeEach
local afterEach = JestGlobals.afterEach

local TenFootUiContainer = require(script.Parent.TenFootUiContainer)

describe("TenFootUiContainer", function()
	local backgroundModel
	beforeEach(function()
		backgroundModel = Instance.new("Model")
		backgroundModel.Name = "TenFootUiBackgroundShapes"
		backgroundModel.Parent = ReplicatedStorage
	end)
	afterEach(function()
		backgroundModel:Destroy()
	end)

	it("should create and destroy without errors", function()
		local providers, nestedMocks = mocks.makeMockProviders()
		local providerSpecs = mapProviderListToSpecs(providers)
		local mockTenFootUiContext = nestedMocks.globalNavMocks.mockTenFootUiContext

		local element = React.createElement(ProviderContainer, { providers = providerSpecs }, {
			TenFootUiContainer = React.createElement(TenFootUiContainer, {
				store = {},
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
	end)
end)
