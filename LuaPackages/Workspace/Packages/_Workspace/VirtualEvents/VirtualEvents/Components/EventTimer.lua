local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local types = require(VirtualEvents.types)
local formatDate = require(VirtualEvents.Common.formatDate)

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	virtualEvent: types.VirtualEvent,
}

local SEPERATOR = utf8.char(0x2022) -- Bullet •

local function EventTimer(props: Props)
	local style = useStyle()
	local text = useLocalization({
		cancelled = "Feature.VirtualEvents.EventCancelledText",
	})
	local isCancelled = props.virtualEvent.eventStatus == "cancelled"

	return React.createElement(StyledTextLabel, {
		text = if isCancelled
			then text.cancelled
			else ("%s %s %s"):format(
				formatDate(props.virtualEvent.eventTime.startTime),
				SEPERATOR,
				formatDate(props.virtualEvent.eventTime.endTime)
			),
		automaticSize = Enum.AutomaticSize.XY,
		fontStyle = style.Font.CaptionHeader,
		colorStyle = if isCancelled then style.Theme.Alert else style.Theme.TextMuted,
	})
end

return EventTimer
