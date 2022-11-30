local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local types = require(VirtualEvents.types)
local getEventTimerMessagePair = require(VirtualEvents.Common.getEventTimerMessagePair)

local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

export type Props = {
	status: string, -- types.EventTimerStatus,
	virtualEvent: types.VirtualEvent,
	currentTime: DateTime,
}

local SEPERATOR = utf8.char(0x2022) -- Bullet •

local function EventTimer(props: Props)
	local style = useStyle()
	local message = getEventTimerMessagePair(props.virtualEvent, props.currentTime)

	local getMessageColor = React.useCallback(function()
		if props.status == "Ongoing" then
			return style.Theme.Success
		elseif props.status == "ElapsedImminent" then
			return style.Theme.Alert
		else
			return style.Theme.TextEmphasis
		end
	end, { style, props.status })

	return React.createElement("Folder", {}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			Padding = UDim.new(0, 4),
		}),

		StartDate = React.createElement(StyledTextLabel, {
			layoutOrder = 1,
			text = message.startMessage,
			automaticSize = Enum.AutomaticSize.XY,
			fontStyle = style.Font.CaptionHeader,
			colorStyle = getMessageColor(),
		}),

		Separator = message.endMessage and React.createElement(StyledTextLabel, {
			layoutOrder = 2,
			text = SEPERATOR,
			automaticSize = Enum.AutomaticSize.XY,
			fontStyle = style.Font.CaptionHeader,
			colorStyle = style.Theme.TextMuted,
		}),

		EndDate = message.endMessage and React.createElement(StyledTextLabel, {
			layoutOrder = 3,
			text = message.endMessage,
			automaticSize = Enum.AutomaticSize.XY,
			fontStyle = style.Font.CaptionHeader,
			colorStyle = style.Theme.TextMuted,
		}),
	})
end

return EventTimer
