-- CollectionViews exports useCollectionLayoutConfig only when this is true when SharedFlags first loads.
local originalLayoutParamsInContextFlag = game:SetFastFlagForTesting("LuaAppLayoutParamsInContext2", true)
-- Scoped registration in getSduiServiceDependenciesStore only exists when this is true when SharedFlags first loads.
local originalHostedDependenciesFlag = game:SetFastFlagForTesting("SduiHostedDependencies", true)

local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Workspace.Packages

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterAll = JestGlobals.afterAll
local afterEach = JestGlobals.afterEach
local beforeEach = JestGlobals.beforeEach
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Foundation = require(Packages.Foundation)
local LocalizationProvider = require(Packages.Localization).LocalizationProvider
local LocalizationRoactContext = require(Packages.Localization).LocalizationRoactContext
local UniversalAppPolicy = require(Packages.UniversalAppPolicy)
local SduiCoreSystem = require(Packages.SduiCoreSystem)

local SduiInExperienceEntryPoint = require(script.Parent.SduiInExperienceEntryPoint)
local isTenFootInterface = require(Packages.AppCommonLib).isTenFootInterface

local SURFACE_KEY = "EntryPointTestPage"
local FEATURE_PROPS = {
	surfaceKey = SURFACE_KEY,
	configKey = "EntryPointTestConfig",
}

describe("SduiInExperienceEntryPoint", function()
	local root: any
	local reportedErrorTypes: { string }

	local originalReportError = SduiCoreSystem.SduiLogger.reportError

	beforeEach(function()
		reportedErrorTypes = {}
		SduiCoreSystem.SduiLogger.reportError = function(errorType)
			table.insert(reportedErrorTypes, errorType)
		end
		root = ReactRoblox.createRoot(Instance.new("Frame"))
	end)

	afterEach(function()
		ReactRoblox.act(function()
			root:unmount()
		end)
		SduiCoreSystem.SduiLogger.reportError = originalReportError
	end)

	afterAll(function()
		game:SetFastFlagForTesting("LuaAppLayoutParamsInContext2", originalLayoutParamsInContextFlag)
		game:SetFastFlagForTesting("SduiHostedDependencies", originalHostedDependenciesFlag)
	end)

	local function getDependencies(): any
		return SduiCoreSystem.getSduiServiceDependenciesStore().getDependencies(SURFACE_KEY)
	end

	it("SHOULD dispatch into the host store instead of shadowing it", function()
		local receivedActions = {}
		local hostStore = Rodux.Store.new(function(state, action)
			if action.type == "Probe" then
				table.insert(receivedActions, action)
			end
			return state
		end, {}, { Rodux.thunkMiddleware })

		ReactRoblox.act(function()
			root:render(React.createElement(RoactRodux.StoreProvider, { store = hostStore }, {
				EntryPoint = React.createElement(SduiInExperienceEntryPoint, FEATURE_PROPS),
			}))
		end)
		getDependencies().dispatch({ type = "Probe" })

		expect(#receivedActions).toBe(1)
	end)

	it("SHOULD report dispatches when the host has no store", function()
		ReactRoblox.act(function()
			root:render(React.createElement(SduiInExperienceEntryPoint, FEATURE_PROPS))
		end)
		getDependencies().dispatch({ type = "Probe" })

		expect(getDependencies().localization).never.toBeNil()
		expect(table.find(reportedErrorTypes, "RoduxUnavailable")).never.toBeNil()
	end)

	it("SHOULD keep shared dependencies but drop the host dispatch after unmount", function()
		local receivedActions = {}
		ReactRoblox.act(function()
			root:render(React.createElement(RoactRodux.StoreProvider, {
				store = Rodux.Store.new(function(state, action)
					if action.type == "Probe" then
						table.insert(receivedActions, action)
					end
					return state
				end, {}),
			}, {
				EntryPoint = React.createElement(SduiInExperienceEntryPoint, FEATURE_PROPS),
			}))
		end)
		ReactRoblox.act(function()
			root:render(nil)
		end)
		getDependencies().dispatch({ type = "Probe" })

		expect(getDependencies().localization).never.toBeNil()
		expect(#receivedActions).toBe(0)
		expect(table.find(reportedErrorTypes, "RoduxUnavailable")).never.toBeNil()
	end)

	local lightSurface = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Light).Color.Surface.Surface_0.Color3
	local darkSurface = Foundation.Utility.getTokens(Foundation.Enums.ColorMode.Dark).Color.Surface.Surface_0.Color3
	local sentinelLocalization = {}

	local function outerPolicy()
		return {
			getProbeMarker = function()
				return "outer"
			end,
		}
	end

	local function renderWithOuterProviders(disableProps: { [string]: any })
		local observed = {}
		local function Probe()
			observed.surface = Foundation.Hooks.useTokens().Color.Surface.Surface_0.Color3
			observed.localization = React.useContext(LocalizationRoactContext)
			observed.policyMarker = UniversalAppPolicy.useAppPolicy(function(policy)
				local getProbeMarker = (policy :: any).getProbeMarker
				if type(getProbeMarker) == "function" then
					return getProbeMarker()
				end
				return nil
			end)
			return nil
		end

		local props = {
			surfaceKey = SURFACE_KEY,
			configKey = "OptionalProvidersConfig",
			shouldDisplayLoading = true,
			loadingSlot = React.createElement(Probe),
			disableFoundationProvider = disableProps.disableFoundationProvider,
			disableLocalizationProvider = disableProps.disableLocalizationProvider,
			disableAppPolicyProvider = disableProps.disableAppPolicyProvider,
		}
		ReactRoblox.act(function()
			root:render(React.createElement(Foundation.FoundationProvider, {
				colorMode = Foundation.Enums.ColorMode.Light,
			}, {
				Localization = React.createElement(LocalizationProvider, {
					localization = sentinelLocalization,
				}, {
					Policy = React.createElement(UniversalAppPolicy.RoactAppPolicy.Provider, {
						policy = { UniversalAppPolicy.AppFeaturePolicies, outerPolicy },
					}, {
						EntryPoint = React.createElement(SduiInExperienceEntryPoint, props),
					}),
				}),
			}))
		end)
		return observed
	end

	it("SHOULD use the surrounding Foundation provider when disableFoundationProvider is set", function()
		local observed = renderWithOuterProviders({ disableFoundationProvider = true })

		expect(observed.surface).toEqual(lightSurface)
		expect(observed.localization).never.toBe(sentinelLocalization)
		expect(observed.policyMarker).toBeNil()
	end)

	it("SHOULD use the surrounding localization provider when disableLocalizationProvider is set", function()
		local observed = renderWithOuterProviders({ disableLocalizationProvider = true })

		expect(observed.surface).toEqual(darkSurface)
		expect(observed.localization).toBe(sentinelLocalization)
		expect(observed.policyMarker).toBeNil()
	end)

	local function readSize(createTree: (probe: React.ReactElement) -> React.ReactElement): number
		local size = 0
		local function Probe()
			size = Foundation.Hooks.useTokens().Size.Size_400
			return nil
		end
		ReactRoblox.act(function()
			root:render(createTree(React.createElement(Probe)))
		end)
		return size
	end

	local function readEntryPointSize(device: Foundation.Device?): number
		return readSize(function(probe)
			return React.createElement(SduiInExperienceEntryPoint, {
				surfaceKey = SURFACE_KEY,
				configKey = "DeviceConfig",
				shouldDisplayLoading = true,
				loadingSlot = probe,
				device = device,
			})
		end)
	end

	local function readProviderSize(device: Foundation.Device): number
		return readSize(function(probe)
			return React.createElement(Foundation.FoundationProvider, {
				colorMode = Foundation.Enums.ColorMode.Dark,
				device = device,
			}, { Probe = probe })
		end)
	end

	it("SHOULD provide tokens for the given device", function()
		expect(readEntryPointSize(Foundation.Enums.Device.Console)).toBe(
			readProviderSize(Foundation.Enums.Device.Console)
		)
	end)

	it("SHOULD default to desktop tokens outside the ten-foot interface", function()
		expect(isTenFootInterface()).toBe(false)
		expect(readEntryPointSize(nil)).toBe(readProviderSize(Foundation.Enums.Device.Desktop))
	end)

	it("SHOULD use the surrounding policy provider when disableAppPolicyProvider is set", function()
		local observed = renderWithOuterProviders({ disableAppPolicyProvider = true })

		expect(observed.surface).toEqual(darkSurface)
		expect(observed.localization).never.toBe(sentinelLocalization)
		expect(observed.policyMarker).toBe("outer")
	end)
end)
