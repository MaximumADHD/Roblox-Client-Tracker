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

local function createTenFootUiTestHarness<T>(
	TestSubject: any, -- LUAU FIXME: this can take any function, but it throws with React Abstract Components (forwardRef)
	focusNavigationService,
	mockProvidersConfig
)
	local providers, nestedMocks = mocks.makeMockProviders(mockProvidersConfig)
	local providerSpecs = mapProviderListToSpecs(providers)

	return React.forwardRef(function(testSubjectProps: T, ref: React.Ref<any>)
		local props = table.clone(testSubjectProps :: any or {})
		props.ref = ref
		return React.createElement(
			ReactFocusNavigation.FocusNavigationContext.Provider,
			{ value = focusNavigationService or createDefaultFocusNavigationService() },
			React.createElement(
				ProviderContainer,
				{ providers = providerSpecs },
				React.createElement(
					FocusNavigableSurfaceRegistryProvider,
					nil,
					React.createElement(TestSubject, props :: any)
				)
			)
		)
	end),
		nestedMocks
end

return createTenFootUiTestHarness
