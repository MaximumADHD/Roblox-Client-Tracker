local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local UIBlox = require(VirtualEvents.Parent.UIBlox)
local Images = UIBlox.App.ImageSet.Images
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local INTERESTED_OFF_IMAGE = "icons/actions/favoriteOff"
local INTERESTED_ON_IMAGE = "icons/actions/favoriteOn"

local function getEventButtonProps(eventStatus, rsvpStatus, joinedProps)
	local buttonProps

	if eventStatus == "Upcoming" or eventStatus == "UpcomingImminent" then
		if rsvpStatus then
			buttonProps = {
				buttonType = ButtonType.Secondary,
				text = "Interested",
				onActivated = joinedProps.onRescindEvent,
				icon = Images[INTERESTED_ON_IMAGE],
			}
		else
			buttonProps = {
				buttonType = ButtonType.PrimarySystem,
				text = "Interested?",
				onActivated = joinedProps.onRSVPEvent,
				icon = Images[INTERESTED_OFF_IMAGE],
			}
		end
	elseif eventStatus == "Ongoing" or eventStatus == "ElapsedImminent" then
		buttonProps = {
			buttonType = ButtonType.PrimaryContextual,
			text = "Join Event",
			onActivated = joinedProps.onJoinEvent,
		}
	end

	return buttonProps
end

return getEventButtonProps
