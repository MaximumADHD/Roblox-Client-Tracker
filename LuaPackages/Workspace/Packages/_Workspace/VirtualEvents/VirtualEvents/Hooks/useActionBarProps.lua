local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useLocalization = require(VirtualEvents.Parent.RoactUtils).Hooks.useLocalization
local types = require(VirtualEvents.types)

local Images = UIBlox.App.ImageSet.Images
local ButtonType = UIBlox.App.Button.Enum.ButtonType

local INTERESTED_OFF_IMAGE = "icons/actions/favoriteOff"
local INTERESTED_ON_IMAGE = "icons/actions/favoriteOn"
local SHARE_IMAGE = "icons/actions/share"

type VirtualEvent = types.VirtualEvent | GraphQLServer.VirtualEvent

type Button = {
	props: {
		buttonType: string,
		text: string,
		icon: string?,
		onActivated: ((...any) -> ())?,
	},
}

type Icon = {
	props: {
		icon: string,
		anchorPoint: Vector2?,
		position: UDim2?,
		userInteractionEnabled: boolean?,
		onActivated: ((...any) -> ())?,
	},
}

type ActionBarProps = {
	button: Button?,
	icons: { Icon? },
}

type Callbacks = {
	onRsvpChanged: (newRsvpStatus: types.RsvpStatus) -> (),
	onJoinEvent: () -> (),
	onClose: () -> (),
	onShare: () -> (),
}

--[[
	This function is used to determine the properties for the action bar on
	EventDetailsPage.

	We have a few different states we need to handle:
	- Upcoming event allows RSVPing
	- Ongoing event allows joining the event
	- Elapsed and Cancelled events allow returning to the homepage
]]
local function useActionBarProps(
	virtualEvent: VirtualEvent,
	eventTimerStatus: types.EventTimerStatus,
	callbacks: Callbacks
): ActionBarProps
	local text = useLocalization({
		notifyMe = "Feature.VirtualEvents.NotifyMe",
		unfollowEvent = "Feature.VirtualEvents.UnfollowEvent",
		joinEvent = "Feature.VirtualEvents.JoinEvent",
		goHome = "Feature.VirtualEvents.GoHome",
	})

	local button: Button? = React.useMemo(function()
		if virtualEvent.eventStatus ~= "cancelled" and virtualEvent.eventStatus ~= "moderated" then
			if eventTimerStatus == "Upcoming" or eventTimerStatus == "UpcomingImminent" then
				if virtualEvent.userRsvpStatus == "going" then
					return {
						props = {
							buttonType = ButtonType.Secondary,
							text = text.unfollowEvent,
							icon = Images[INTERESTED_ON_IMAGE],
							onActivated = callbacks.onRsvpChanged,
						},
					}
				else
					return {
						props = {
							buttonType = ButtonType.PrimarySystem,
							text = text.notifyMe,
							icon = Images[INTERESTED_OFF_IMAGE],
							onActivated = callbacks.onRsvpChanged,
						},
					}
				end
			elseif eventTimerStatus == "Ongoing" or eventTimerStatus == "ElapsedImminent" then
				return {
					props = {
						buttonType = ButtonType.PrimaryContextual,
						text = text.joinEvent,
						onActivated = callbacks.onJoinEvent,
					},
				}
			else
				return nil :: any
			end
		else
			return {
				props = {
					buttonType = ButtonType.Secondary,
					text = text.goHome,
					onActivated = callbacks.onClose,
				},
			}
		end
	end, { virtualEvent, eventTimerStatus, callbacks } :: { any })

	local shareIcon: Icon? = React.useMemo(function()
		if
			virtualEvent.eventStatus ~= "cancelled"
			and virtualEvent.eventStatus ~= "moderated"
			and eventTimerStatus ~= "Elapsed"
		then
			return {
				props = {
					anchorPoint = Vector2.new(0.5, 0.5),
					position = UDim2.fromScale(0.5, 0.5),
					icon = Images[SHARE_IMAGE],
					userInteractionEnabled = true,
					onActivated = callbacks.onShare,
				},
			}
		else
			return nil :: any
		end
	end, { virtualEvent, eventTimerStatus, callbacks } :: { any })

	local actionBarProps = React.useMemo(function()
		return {
			button = button,
			icons = {
				shareIcon,
			},
		}
	end, { button, shareIcon } :: { any })

	return actionBarProps
end

return useActionBarProps
