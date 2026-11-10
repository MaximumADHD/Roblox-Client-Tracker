local CorePackages = game:GetService("CorePackages")

local EventIngestService = game:GetService("EventIngestService")
local HttpService = game:GetService("HttpService")
local SessionService = game:GetService("SessionService")

local React = require(CorePackages.Packages.React)
local Foundation = require(CorePackages.Packages.Foundation)
local Signals = require(CorePackages.Packages.Signals)
local Analytics = require(CorePackages.Workspace.Packages.Analytics).Analytics
local EventIngest = require(CorePackages.Workspace.Packages.Analytics).AnalyticsReporters.EventIngest
local requestInternalWrapper = require(CorePackages.Workspace.Packages.Http).NetworkLayers.requestInternalWrapper
local LinkingProtocol = require(CorePackages.Workspace.Packages.LinkingProtocol).LinkingProtocol
local LocalizationRoactContext = require(CorePackages.Workspace.Packages.Localization).LocalizationRoactContext
local RoactServiceProvider = require(CorePackages.Workspace.Packages.RoactServices).RoactServices.ServiceProvider
local RoactServiceTags = require(CorePackages.Workspace.Packages.RoactServiceTags)
local StoreContext = require(CorePackages.Packages.RoactRodux).StoreContext
local FeedbackManagerInjectionContext =
	require(CorePackages.Packages.UIBlox).Core.Control.FeedbackManagerInjectionContext
local GetAppPolicyStore = require(CorePackages.Workspace.Packages.UniversalAppPolicy).GetAppPolicyStore

local SduiCoreSystem = require(CorePackages.Workspace.Packages.SduiCoreSystem)
local SduiInstrumentation = SduiCoreSystem.SduiInstrumentation
local SduiLogger = SduiCoreSystem.SduiLogger

type SduiDependencies = SduiCoreSystem.SduiDependencies
type TriggerFeedback = SduiCoreSystem.TriggerFeedback
type TriggerFeedbackInteractionType = SduiCoreSystem.TriggerFeedbackInteractionType

type Dispatch = (action: any) -> ()

type ScopedDependencies = {
	dispatch: Dispatch,
}

type Services = {
	appAnalytics: any,
	eventIngest: any,
	networking: any,
	sessionService: any,
}

export type Props = {
	surfaceKey: string,
	children: React.ReactNode,
}

local services: Services? = nil

-- SDUI dependencies and RoactServices consumers must share the same instances.
local function getServices(): Services
	if services == nil then
		services = {
			appAnalytics = Analytics.new() :: any,
			eventIngest = EventIngest.new(EventIngestService),
			networking = requestInternalWrapper(HttpService),
			sessionService = SessionService,
		}
	end
	return services :: Services
end

local function reportRoduxUnavailable(action: any)
	SduiLogger.reportError(SduiCoreSystem.SduiErrors.SduiErrorType.RoduxUnavailable, {
		message = "Dispatched without a Rodux store",
		name = if typeof(action) == "table" then action.type else typeof(action),
	}, "unknown")
end

-- Shared actions call these without nil checks, so every method reports an error instead of throwing.
local function createUnavailableDependency(errorType: SduiCoreSystem.SduiErrorType, dependencyName: string): any
	return setmetatable({}, {
		__index = function(_, methodName)
			return function()
				SduiLogger.reportError(errorType, {
					message = `{dependencyName} is unavailable in experience`,
					name = tostring(methodName),
				}, "unknown")
				return nil
			end
		end,
	})
end

local unavailableNavigation =
	createUnavailableDependency(SduiCoreSystem.SduiErrors.SduiErrorType.NavigationUnavailable, "Navigation")
local unavailableGameAnalytics =
	createUnavailableDependency(SduiCoreSystem.SduiErrors.SduiErrorType.GameAnalyticsUnavailable, "GameAnalytics")

local function getNavigation()
	return unavailableNavigation
end

local function useTriggerFeedback(): TriggerFeedback
	local injectedTriggerFeedback = React.useContext(FeedbackManagerInjectionContext) :: TriggerFeedback
	local triggerFeedbackRef = React.useRef(injectedTriggerFeedback)
	triggerFeedbackRef.current = injectedTriggerFeedback
	return React.useCallback(
		function(
			contextKey: string,
			interactionType: TriggerFeedbackInteractionType,
			eventContext: string?,
			eventParams: { [string]: any }?
		)
			return triggerFeedbackRef.current(contextKey, interactionType, eventContext, eventParams)
		end,
		{ triggerFeedbackRef }
	)
end

-- Shared by every in-experience surface; a surface without scoped dependencies falls back to these.
local function useGlobalDependencies(): SduiDependencies
	local instrumentation = React.useMemo(function()
		return SduiInstrumentation.new()
	end, {})
	local localization = React.useContext(LocalizationRoactContext)
	local tileCursor = Foundation.Hooks.useCursor(Foundation.Enums.CursorType.RoundedRect)
	local triggerFeedback = useTriggerFeedback()

	return React.useMemo(function(): SduiDependencies
		local sharedServices = getServices()
		return {
			dispatch = reportRoduxUnavailable,
			getNavigation = getNavigation,
			appAnalytics = sharedServices.appAnalytics,
			gameAnalytics = unavailableGameAnalytics,
			eventIngest = sharedServices.eventIngest,
			sessionService = sharedServices.sessionService,
			linkingProtocol = LinkingProtocol.default,
			logger = SduiLogger,
			cursors = { tileCursor = tileCursor },
			instrumentation = instrumentation,
			localization = localization,
			networking = sharedServices.networking,
			triggerFeedback = triggerFeedback,
		}
	end, { instrumentation, localization, tileCursor, triggerFeedback } :: { any })
end

-- Rodux is scoped per React tree, so each host's store is registered against its own surfaceKey.
local function useScopedDependencies(): ScopedDependencies
	local store = React.useContext(StoreContext)
	local dispatch = React.useCallback(function(action: any)
		if store then
			store:dispatch(action)
			return
		end
		reportRoduxUnavailable(action)
	end, { store })

	return React.useMemo(function(): ScopedDependencies
		return { dispatch = dispatch }
	end, { dispatch })
end

local function SduiInExperienceHost(props: Props): React.ReactElement?
	local globalDependencies = useGlobalDependencies()
	local scopedDependencies = useScopedDependencies()

	-- Pages read dependencies during render, so they cannot mount in the commit that registers them.
	local ready, setReady = React.useState(false)
	React.useLayoutEffect(function()
		local dependenciesStore = SduiCoreSystem.getSduiServiceDependenciesStore()
		dependenciesStore.setDependencies(globalDependencies)
		local clearScopedDependencies = dependenciesStore.setScopedDependencies(props.surfaceKey, scopedDependencies)
		setReady(true)
		return clearScopedDependencies
	end, { globalDependencies, scopedDependencies, props.surfaceKey } :: { any })

	local tokens = Foundation.Hooks.useTokens()
	React.useEffect(function()
		SduiCoreSystem.getSduiTokensStore().setTokens(tokens)
	end, { tokens })

	-- In-experience roots have no PolicyProvider, so useAppPolicy would assert; read the policy feature store instead.
	React.useEffect(function()
		local getAppPolicy = GetAppPolicyStore(false).getAppPolicy
		return Signals.createEffect(function(scope)
			SduiCoreSystem.getSduiPolicyStore().setAppPolicy(getAppPolicy(scope))
		end)
	end, {})

	if not ready then
		return nil
	end
	local sharedServices = getServices()
	-- Shared components outside SDUI (e.g. PlayButton) read these from RoactServices rather than sduiContext.
	return React.createElement(RoactServiceProvider, {
		services = {
			[RoactServiceTags.RoactNetworking] = sharedServices.networking,
			[RoactServiceTags.AppEventIngestService] = sharedServices.eventIngest,
			[RoactServiceTags.RoactAnalytics] = sharedServices.appAnalytics,
			[RoactServiceTags.AppSessionService] = sharedServices.sessionService,
		},
	}, {
		Children = React.createElement(React.Fragment, nil, props.children),
	})
end

return React.memo(SduiInExperienceHost)
