local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local formatNumberWithShortUnits = require(VirtualEvents.Common.formatNumberWithShortUnits)
local types = require(VirtualEvents.types)

local ImageSetLabel = UIBlox.Core.ImageSet.Label
local Images = UIBlox.App.ImageSet.Images
local StyledTextLabel = UIBlox.App.Text.StyledTextLabel
local useStyle = UIBlox.Core.Style.useStyle

local PLAYERS_ICON = Images["icons/status/games/people-playing_small"]
local PLAYERS_ICON_SIZE = 18 -- px
local PADDING = UDim.new(0, 6)

export type Props = {
	eventStatus: types.EventTimerStatus,
	interested: number,
	attending: number,
	layoutOrder: number?,
}

local function AttendanceCount(props: Props)
	local style = useStyle()
	local text = useLocalization({
		interested = "Feature.VirtualEvents.AttendanceBeforeEvent",
		attendingNow = "Feature.VirtualEvents.AttendanceDuringEvent",
	})

	local isOngoing = props.eventStatus == "Ongoing"

	return React.createElement("Frame", {
		LayoutOrder = props.layoutOrder,
		BackgroundTransparency = 1,
		AutomaticSize = Enum.AutomaticSize.XY,
	}, {
		Layout = React.createElement("UIListLayout", {
			SortOrder = Enum.SortOrder.LayoutOrder,
			FillDirection = Enum.FillDirection.Horizontal,
			VerticalAlignment = Enum.VerticalAlignment.Center,
			Padding = PADDING,
		}),

		Icon = React.createElement(ImageSetLabel, {
			LayoutOrder = 1,
			Size = UDim2.fromOffset(PLAYERS_ICON_SIZE, PLAYERS_ICON_SIZE),
			Image = PLAYERS_ICON,
			ImageColor3 = style.Theme.IconEmphasis.Color,
			BackgroundTransparency = 1,
		}),

		Label = React.createElement(StyledTextLabel, {
			layoutOrder = 2,
			fontStyle = style.Font.Header1,
			colorStyle = style.Theme.TextEmphasis,

			text = ("%s %s"):format(
				formatNumberWithShortUnits(if isOngoing then props.attending else props.interested),
				if isOngoing then text.attendingNow else text.interested
			),
		}),
	})
end

return AttendanceCount
