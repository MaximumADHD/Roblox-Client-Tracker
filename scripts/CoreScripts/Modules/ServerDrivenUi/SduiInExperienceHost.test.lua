-- Scoped registration in getSduiServiceDependenciesStore only exists when this is true when SharedFlags first loads.
local originalHostedDependenciesFlag = game:SetFastFlagForTesting("SduiHostedDependencies", true)

local CorePackages = game:GetService("CorePackages")
local Packages = CorePackages.Workspace.Packages

local JestGlobals = require(CorePackages.Packages.Dev.JestGlobals3)
local afterAll = JestGlobals.afterAll
local describe = JestGlobals.describe
local expect = JestGlobals.expect
local it = JestGlobals.it

local React = require(CorePackages.Packages.React)
local ReactRoblox = require(CorePackages.Packages.ReactRoblox)
local Rodux = require(CorePackages.Packages.Rodux)
local RoactRodux = require(CorePackages.Packages.RoactRodux)
local Foundation = require(CorePackages.Packages.Foundation)
local RoactServiceTags = require(Packages.RoactServiceTags)
local useRoactService = require(Packages.RobloxAppHooks).useRoactService
local SduiCoreSystem = require(Packages.SduiCoreSystem)

local SduiInExperienceHost = require(script.Parent.SduiInExperienceHost)

local function renderAndReadServices()
	local services = {}
	local function ServiceReader()
		services.networking = useRoactService(RoactServiceTags.RoactNetworking)
		services.eventIngest = useRoactService(RoactServiceTags.AppEventIngestService)
		services.appAnalytics = useRoactService(RoactServiceTags.RoactAnalytics)
		services.sessionService = useRoactService(RoactServiceTags.AppSessionService)
		return nil
	end

	local store = Rodux.Store.new(function(state)
		return state
	end, {}, { Rodux.thunkMiddleware })
	local root = ReactRoblox.createRoot(Instance.new("Frame"))
	ReactRoblox.act(function()
		root:render(React.createElement(RoactRodux.StoreProvider, { store = store }, {
			Foundation = React.createElement(Foundation.FoundationProvider, nil, {
				Host = React.createElement(SduiInExperienceHost, { surfaceKey = "HostTestPage" }, {
					Reader = React.createElement(ServiceReader),
				}),
			}),
		}))
	end)
	ReactRoblox.act(function()
		root:unmount()
	end)
	return services
end

describe("SduiInExperienceHost", function()
	afterAll(function()
		game:SetFastFlagForTesting("SduiHostedDependencies", originalHostedDependenciesFlag)
	end)

	it("SHOULD provide in-experience services to RoactServices consumers", function()
		local services = renderAndReadServices()

		expect(services.networking).never.toBeNil()
		expect(services.eventIngest).never.toBeNil()
		expect(services.appAnalytics).never.toBeNil()
		expect(services.sessionService).toBe(game:GetService("SessionService"))
	end)

	it("SHOULD scope the host dispatch to each surfaceKey", function()
		local surfaceKey = "HostDispatchTestPage"
		local receivedActions = {}
		local store = Rodux.Store.new(function(state, action)
			if action.type == "Probe" then
				table.insert(receivedActions, action)
			end
			return state
		end, {}, { Rodux.thunkMiddleware })
		local root = ReactRoblox.createRoot(Instance.new("Frame"))
		ReactRoblox.act(function()
			root:render(React.createElement(RoactRodux.StoreProvider, { store = store }, {
				Foundation = React.createElement(Foundation.FoundationProvider, nil, {
					Host = React.createElement(SduiInExperienceHost, { surfaceKey = surfaceKey }),
				}),
			}))
		end)

		local dependenciesStore = SduiCoreSystem.getSduiServiceDependenciesStore()
		local scopedDependencies = dependenciesStore.getDependencies(surfaceKey) :: any
		local globalDependencies = dependenciesStore.getDependencies("UnregisteredPage") :: any
		scopedDependencies.dispatch({ type = "Probe" })
		globalDependencies.dispatch({ type = "Probe" })
		ReactRoblox.act(function()
			root:unmount()
		end)

		expect(#receivedActions).toBe(1)
		expect(scopedDependencies.logger).toBe(globalDependencies.logger)
	end)

	it("SHOULD report an error instead of throwing when navigation or game analytics is used", function()
		local surfaceKey = "HostUnavailableTestPage"
		local root = ReactRoblox.createRoot(Instance.new("Frame"))
		ReactRoblox.act(function()
			root:render(React.createElement(Foundation.FoundationProvider, nil, {
				Host = React.createElement(SduiInExperienceHost, { surfaceKey = surfaceKey }),
			}))
		end)
		local dependencies = SduiCoreSystem.getSduiServiceDependenciesStore().getDependencies(surfaceKey) :: any

		local reportedErrors = {}
		local originalReportError = SduiCoreSystem.SduiLogger.reportError
		SduiCoreSystem.SduiLogger.reportError = function(errorType, dimensions)
			table.insert(reportedErrors, { errorType = errorType, name = dimensions.name })
		end
		dependencies.getNavigation().navigate("SomePage")
		dependencies.gameAnalytics.reportSeeAllWithId("sortId")
		SduiCoreSystem.SduiLogger.reportError = originalReportError
		ReactRoblox.act(function()
			root:unmount()
		end)

		expect(reportedErrors).toEqual({
			{ errorType = "NavigationUnavailable", name = "navigate" },
			{ errorType = "GameAnalyticsUnavailable", name = "reportSeeAllWithId" },
		})
	end)
end)
