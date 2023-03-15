local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local types = require(VirtualEvents.types)
local formatDate = require(VirtualEvents.Common.formatDate)
local getVirtualEventDates = require(VirtualEvents.Common.getVirtualEventDates)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local SEPERATOR = utf8.char(0x2022) -- Bullet •

export type Props = {
	virtualEvent: types.VirtualEvent | GraphQLServer.VirtualEvent,
}

local function EventTimer(props: Props)
	local style = useStyle()
	local text = useLocalization({
		cancelled = "Feature.VirtualEvents.EventCancelledText",
	})
	local isCancelled = props.virtualEvent.eventStatus == "cancelled"

	local dates = if getFFlagVirtualEventsGraphQL()
		then React.useMemo(function()
			-- Remove type cast when cleaning up FFlagVirtualEventsGraphQL
			return getVirtualEventDates(props.virtualEvent :: GraphQLServer.VirtualEvent)
		end, { props.virtualEvent })
		else nil

	return React.createElement(StyledTextLabel, {
		text = if isCancelled
			then text.cancelled
			else ("%s %s %s"):format(
				formatDate(
					if getFFlagVirtualEventsGraphQL() and dates
						then dates.startDate
						else (props.virtualEvent :: types.VirtualEvent).eventTime.startTime
				),
				SEPERATOR,
				formatDate(
					if getFFlagVirtualEventsGraphQL() and dates
						then dates.endDate
						else (props.virtualEvent :: types.VirtualEvent).eventTime.endTime
				)
			),
		automaticSize = Enum.AutomaticSize.XY,
		fontStyle = style.Font.CaptionHeader,
		colorStyle = if isCancelled then style.Theme.Alert else style.Theme.TextMuted,
	})
end

return EventTimer
