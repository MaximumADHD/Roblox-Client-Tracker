local TenFootUiShell = script:FindFirstAncestor("TenFootUiShell")
local Packages = TenFootUiShell.Parent
local Hooks = TenFootUiShell.Hooks
local React = require(Packages.React)
local ReactFocusNavigation = require(Packages.ReactFocusNavigation)
local FocusNavigableSurfaceRegistryProvider = require(Hooks.FocusNavigableSurfaceRegistry).Provider
local FocusNavigationService = ReactFocusNavigation.FocusNavigationService
local TestHelpers = require(Packages.Dev.TenFootUiTesting).TestHelpers
local mapProviderListToSpecs = TestHelpers.mapProviderListToSpecs

local ProviderContainer = require(Packages.RoactUtils).Components.ProviderContainer

local mocks = TestHelpers.mocks
local CoreGuiInterface = ReactFocusNavigation.EngineInterface.CoreGui

local function createDefaultFocusNavigationService()
	local mockInterface = table.clone(CoreGuiInterface)
	-- this is here to stop an error from being thrown when a hook attempts a
	-- selection.
	mockInterface.setSelection = function() end
	return FocusNavigationService.new(mockInterface)
end

local function createTenFootUiShellTestHarness<T>(focusNavigationService, mockProvidersConfig)
	local providers, nestedMocks = mocks.makeMockProviders(mockProvidersConfig)
	local providerSpecs = mapProviderListToSpecs(providers)

	return React.forwardRef(function(props: { [string]: any }, ref: React.Ref<any>)
		return React.createElement(
			ReactFocusNavigation.FocusNavigationContext.Provider,
			{ value = focusNavigationService or createDefaultFocusNavigationService() },
			React.createElement(
				ProviderContainer,
				{ providers = providerSpecs },
				React.createElement(FocusNavigableSurfaceRegistryProvider, nil, props.children)
			)
		)
	end),
		nestedMocks
end

return createTenFootUiShellTestHarness
