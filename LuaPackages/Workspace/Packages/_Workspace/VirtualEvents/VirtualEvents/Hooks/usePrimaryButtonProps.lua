local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local types = require(VirtualEvents.types)

local Images = UIBlox.App.ImageSet.Images
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local INTERESTED_OFF_IMAGE = "icons/actions/favoriteOff"
local INTERESTED_ON_IMAGE = "icons/actions/favoriteOn"

type ButtonProps = {
	buttonType: string,
	text: string,
	onActivated: (...any) -> (),
	icon: string?,
}

type Callbacks = {
	onRsvpChanged: (newRsvpStatus: types.RsvpStatus) -> (),
	onJoinEvent: () -> (),
	onClose: () -> (),
}

--[[
	This function is used to determine the properties for the call-to-action
	button on EventDetailsPage.

	We have a few different states we need to handle:
	- Upcoming event allows RSVPing
	- Ongoing event allows joining the event
	- Ended event allows returning to the homepage
]]
local function usePrimaryButtonProps(
	virtualEvent: types.VirtualEvent,
	eventStatus: types.EventTimerStatus,
	callbacks: Callbacks
): ButtonProps
	local text = useLocalization({
		going = "Feature.VirtualEvents.RsvpGoing",
		notGoing = "Feature.VirtualEvents.RsvpNotGoing",
		joinEvent = "Feature.VirtualEvents.JoinEvent",
		goHome = "Feature.VirtualEvents.GoHome",
	})

	local buttonProps = React.useMemo(function()
		if eventStatus == "Upcoming" or eventStatus == "UpcomingImminent" then
			if virtualEvent.userRsvpStatus == "going" then
				return {
					buttonType = ButtonType.PrimarySystem,
					text = text.going,
					onActivated = callbacks.onRsvpChanged,
					icon = Images[INTERESTED_ON_IMAGE],
				}
			else
				return {
					buttonType = ButtonType.Secondary,
					text = text.notGoing,
					onActivated = callbacks.onRsvpChanged,
					icon = Images[INTERESTED_OFF_IMAGE],
				}
			end
		elseif eventStatus == "Ongoing" or eventStatus == "ElapsedImminent" then
			return {
				buttonType = ButtonType.PrimaryContextual,
				text = text.joinEvent,
				onActivated = callbacks.onJoinEvent,
			}
		else
			return {
				buttonType = ButtonType.Secondary,
				text = text.goHome,
				onActivated = callbacks.onClose,
			}
		end
	end, { eventStatus, virtualEvent, callbacks } :: { any })

	return buttonProps
end

return usePrimaryButtonProps
