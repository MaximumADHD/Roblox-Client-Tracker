local DiscoverabilityModal = script.Parent.Parent.Parent
local dependencies = require(DiscoverabilityModal.dependencies)
local Constants = require(DiscoverabilityModal.Common.Constants)
local React = dependencies.React
local useMemo = React.useMemo
local AnalyticsContext = require(DiscoverabilityModal.Analytics.DiscoverabilityModalAnalyticsContext)
local setupFireAnalyticsEvents = require(DiscoverabilityModal.Analytics.setupFireAnalyticsEvents)
local EntryPoints = require(DiscoverabilityModal.Analytics.Enums.EntryPoints)

local useSelector = dependencies.Hooks.useSelector
local useNavigation = dependencies.Hooks.useNavigation

local function Container(component)
	return function(props)
		local navigation = useNavigation()
		local eventIngestService = navigation.getParam(Constants.EVENT_INGEST_SERVICE)
		local diagService = navigation.getParam(Constants.DIAG_SERVICE)

		if props.context then
			eventIngestService = props.context.eventIngestService
			diagService = props.context.diagService
		end

		local localUserId = useSelector(function(state)
			return state.LocalUserId
		end)

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

return Container
