local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local PaginatedVerticalList = require(script.Parent.PaginatedVerticalList)
local sortEventsByStartDate = require(VirtualEvents.Common.sortEventsByStartDate)
local types = require(VirtualEvents.types)
local EventRow = require(script.Parent.EventRow)

type VirtualEvent = GraphQLServer.VirtualEvent

local gql = ApolloClient.gql
local useQuery = ApolloClient.useQuery
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local PADDING = UDim.new(0, 12)

local GET_EVENTS_FOR_EXPERIENCE = gql([[
	query VirtualEventsForExperience($universeId: ID!, $options: VirtualEventsByUniverseIdOptions) {
		virtualEventsByUniverseId(universeId: $universeId, options: $options) {
			cursor
			virtualEvents {
				id
				title
				universeId
				description
				eventStatus
				eventTime {
					startUtc
					endUtc
				}
				userRsvpStatus
				rsvpCounters {
					going
				}
				experienceDetails {
					playing
				}
			}
		}
	}
]])

local defaultProps = {
	initialEventsShown = 1,
	extraEventsShownOnLoad = 3,

	-- The amount of time (in ms) between data refetches. This is needed on the
	-- experience details page to ensure that when the user plays for a while
	-- and returns to the page that they are shown the most up-to-date
	-- information about each event. Without this the user could play for an
	-- hour, return to the experience details page, and a now ongoing event
	-- could show the Notify Me state
	pollInterval = 5 * 60 * 1000,
}

export type Props = {
	universeId: number,
	initialEventsShown: number?,
	extraEventsShownOnLoad: number?,
	pollInterval: number?,
	onRsvpChanged: ((virtualEvent: VirtualEvent, newRsvpStatus: types.RsvpStatus) -> ())?,
	onJoinEvent: ((virtualEvent: VirtualEvent) -> ())?,
	onTileActivated: ((virtualEvent: VirtualEvent) -> ())?,
}

type InternalProps = Props & typeof(defaultProps)

local function EventsList(providedProps: Props)
	local props: InternalProps = Cryo.Dictionary.join(defaultProps, providedProps)

	local result = useQuery(GET_EVENTS_FOR_EXPERIENCE, {
		variables = {
			universeId = props.universeId,
		},
		pollInterval = props.pollInterval,
	})

	local style = useStyle()
	local text = useLocalization({
		title = "Feature.VirtualEvents.EventsListTitle",
	})

	local onRsvpChanged = React.useCallback(function(virtualEvent: VirtualEvent, newRsvpStatus: types.RsvpStatus)
		if props.onRsvpChanged then
			props.onRsvpChanged(virtualEvent, newRsvpStatus)
		end
	end, {})

	local onJoinEvent = React.useCallback(function(virtualEvent: VirtualEvent)
		if props.onJoinEvent then
			props.onJoinEvent(virtualEvent)
		end
	end, {})

	local onTileActivated = React.useCallback(function(virtualEvent: VirtualEvent)
		if props.onTileActivated then
			props.onTileActivated(virtualEvent)
		end
	end, {})

	if result.data then
		local virtualEvents = result.data.virtualEventsByUniverseId.virtualEvents
		local sortedVirtualEvents = sortEventsByStartDate(virtualEvents)

		local items = {}
		for _, virtualEvent in sortedVirtualEvents do
			local element = React.createElement(EventRow, {
				virtualEvent = virtualEvent,
				onRsvpChanged = function(...)
					onRsvpChanged(virtualEvent, ...)
				end,
				onJoinEvent = function()
					onJoinEvent(virtualEvent)
				end,
				onTileActivated = function()
					onTileActivated(virtualEvent)
				end,
			})

			table.insert(items, element)
		end

		return React.createElement("Frame", {
			Size = UDim2.fromScale(1, 0),
			AutomaticSize = Enum.AutomaticSize.Y,
			BackgroundTransparency = 1,
		}, {
			Layout = React.createElement("UIListLayout", {
				SortOrder = Enum.SortOrder.LayoutOrder,
				Padding = PADDING,
			}),

			Title = React.createElement(StyledTextLabel, {
				layoutOrder = 1,
				text = text.title,
				colorStyle = style.Theme.TextEmphasis,
				fontStyle = style.Font.Header1,
			}),

			PaginatedList = React.createElement(PaginatedVerticalList, {
				layoutOrder = 2,
				initialItemsShown = props.initialEventsShown,
				extraItemsShownOnLoad = props.extraEventsShownOnLoad,
				items = items,
			}),
		})
	else
		return nil :: any
	end
end

return EventsList
