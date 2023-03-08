local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local Constants = require(DiscoverabilityModal.Common.Constants)
local React = dependencies.React
local useMemo = React.useMemo
local SelfViewProfileDiscoverabilityUpsellIXP =
	require(DiscoverabilityModal.Flags.SelfViewProfileDiscoverabilityUpsellIXP)
local AnalyticsContext = require(DiscoverabilityModal.Analytics.DiscoverabilityModalAnalyticsContext)
local setupFireAnalyticsEvents = require(DiscoverabilityModal.Analytics.setupFireAnalyticsEvents)
local AnalyticsService = require(DiscoverabilityModal.Analytics.AnalyticsService)
local EntryPoints = require(DiscoverabilityModal.Analytics.Enums.EntryPoints)

local useSelector = dependencies.Hooks.useSelector
local useNavigation = dependencies.Hooks.useNavigation

local function Container(component)
	return function(props)
		local navigation = if not SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled() then useNavigation() else nil
		local eventIngestService = if not SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
			then navigation.getParam(Constants.EVENT_INGEST_SERVICE)
			else nil
		local diagService = if not SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled()
			then navigation.getParam(Constants.DIAG_SERVICE)
			else nil

		if props.context and not SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled() then
			eventIngestService = props.context.eventIngestService
			diagService = props.context.diagService
		end

		local localUserId = useSelector(function(state)
			return state.LocalUserId
		end)

		if SelfViewProfileDiscoverabilityUpsellIXP.SetupEnabled() then
			return React.createElement(AnalyticsContext.Provider, {
				value = {
					fireAnalyticsEvent = setupFireAnalyticsEvents({
						analytics = AnalyticsService,
						defaultAnalyticsInfo = {
							uid = localUserId,
							entry = if props.navigation
								then props.navigation.getParam(Constants.ENTRY_POINT).rawValue()
								else props.entryPoint.rawValue(),
						},
					}),
				},
			}, {
				React.createElement(component, props),
			})
		else
			local context = useMemo(function()
				return {
					fireAnalyticsEvent = setupFireAnalyticsEvents({
						diag = diagService,
						eventStreamImpl = eventIngestService,
						defaultAnalyticsInfo = {
							uid = localUserId,
							entry = if props.context
								then EntryPoints.AddFriends.rawValue()
								else EntryPoints.HomePage.rawValue(),
						},
					}),
				}
			end, {
				diagService,
				eventIngestService,
				localUserId,
			})

			return React.createElement(AnalyticsContext.Provider, {
				value = context,
			}, {
				React.createElement(component, props),
			})
		end
	end
end

return Container
