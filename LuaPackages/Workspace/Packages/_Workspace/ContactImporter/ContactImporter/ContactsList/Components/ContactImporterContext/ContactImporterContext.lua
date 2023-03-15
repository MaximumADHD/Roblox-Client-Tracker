local ContactImporter = script:FindFirstAncestor("ContactImporter")
local dependencies = require(ContactImporter.dependencies)
local React = dependencies.React
local Dash = dependencies.Dash
local useMemo = React.useMemo
local Analytics = require(ContactImporter.Analytics)
local Constants = require(ContactImporter.Common.Constants)

local useSelector = dependencies.useSelector
local useNavigation = dependencies.useNavigation
export type Props = {
	localUserId: string,
	eventIngestService: any,
	diag: any,
	Component: any?,
}

local function Container(component)
	return function(props)
		local navigation = useNavigation()
		local eventIngestService = navigation.getParam(Constants.EVENT_INGEST_SERVICE)
		local diagService = navigation.getParam(Constants.DIAG_SERVICE)
		local openProfilePeekView = navigation.getParam(Constants.OPEN_PROFILE_PEEK_VIEW, Dash.noop)

		if props.context then
			eventIngestService = props.context.eventIngestService
			diagService = props.context.diagService
			openProfilePeekView = props.context.openProfilePeekView
		end
		local localUserId = useSelector(function(state)
			return state.LocalUserId
		end)

		local entryPoint = if props.context then Analytics.EntryPoints.AddFriends else Analytics.EntryPoints.HomePage

		local context = useMemo(function()
			return {
				fireAnalyticsEvent = Analytics.setupFireAnalyticsEvents({
					diag = diagService,
					eventStreamImpl = eventIngestService,
					defaultAnalyticsInfo = {
						uid = props.localUserId,
						entry = if props.context
							then Analytics.EntryPoints.AddFriends.rawValue()
							else Analytics.EntryPoints.HomePage.rawValue(),
					},
				}),
				entryPoint = entryPoint,
				diagService = diagService,
				eventIngestService = eventIngestService,
				openProfilePeekView = openProfilePeekView,
			}
		end, {
			diagService,
			eventIngestService,
			localUserId,
			openProfilePeekView,
		})

		return React.createElement(Analytics.Context.Provider, {
			value = context,
		}, {
			React.createElement(component, props),
		})
	end
end

return Container
