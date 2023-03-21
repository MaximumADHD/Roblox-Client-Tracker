local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local ApolloClient = require(VirtualEvents.Parent.ApolloClient)
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local useDeviceType = require(VirtualEvents.Parent.RobloxAppHooks).useDeviceType
local RobloxAppEnums = require(VirtualEvents.Parent.RobloxAppEnums)
type DeviceType = RobloxAppEnums.DeviceType

local getEventTimerStatus = require(VirtualEvents.Common.getEventTimerStatus)
local findFirstImageInMedia = require(VirtualEvents.Common.findFirstImageInMedia)
local getGalleryItems = require(VirtualEvents.Common.getGalleryItems)
local useVirtualEventMedia = require(VirtualEvents.Hooks.useVirtualEventMedia)
local useExperienceDetails = require(VirtualEvents.Hooks.useExperienceDetails)
local useActionBarProps = require(VirtualEvents.Hooks.useActionBarProps)
local EventTimer = require(VirtualEvents.Components.EventTimer)
local EventDescription = require(VirtualEvents.Components.EventDescription)
local EventHostedBy = require(VirtualEvents.Components.EventHostedBy)
local Attendance = require(VirtualEvents.Components.Attendance)
local network = require(VirtualEvents.network)
local requests = require(VirtualEvents.requests)
local types = require(VirtualEvents.types)

local getFFlagHorizontalMediaOnEventDetailsPage =
	require(VirtualEvents.Parent.SharedFlags).getFFlagHorizontalMediaOnEventDetailsPage
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL
local getFFlagUpsellModalOnEventDetailsPage =
	require(VirtualEvents.Parent.SharedFlags).getFFlagUpsellModalOnEventDetailsPage

local useMutation = ApolloClient.useMutation
local DetailsPageTemplate = UIBlox.App.Template.DetailsPage.DetailsPageTemplate
local ContentPositionEnum = UIBlox.App.Template.DetailsPage.Enum.ContentPosition
local MediaGalleryPreview = UIBlox.App.Container.MediaGalleryPreview
local MediaGalleryHorizontal = UIBlox.App.Container.MediaGalleryHorizontal
local ListTable = UIBlox.App.Table.ListTable
local noop = function() end

local THUMBNAILS_COUNT = 5

-- These get used by EventDetailsPageLoader so it can pass down all the same props
export type BaseProps = {
	currentTime: DateTime,
	onClose: (() -> ())?,
	onJoinEvent: (() -> ())?,
	onRsvpChanged: ((newRsvpStatus: types.RsvpStatus, shouldSeeNotificationsUpsellModal: boolean?) -> ())?,
	onExperienceTileActivated: (() -> ())?,
	onHostActivated: ((host: types.Host) -> ())?,
	onShare: (() -> ())?,
}

export type Props = BaseProps & {
	virtualEvent: types.VirtualEvent | GraphQLServer.VirtualEvent,
}

local defaultProps = {
	onClose = noop,
	onJoinEvent = noop,
	onShare = noop,
}

type InternalProps = typeof(defaultProps) & Props

local function EventDetailsPage(props: Props)
	local joinedProps: InternalProps = Cryo.Dictionary.join(defaultProps, props)

	local dispatch = useDispatch()
	local media = if getFFlagVirtualEventsGraphQL()
		then (props.virtualEvent :: GraphQLServer.VirtualEvent).media
		else useVirtualEventMedia(joinedProps.virtualEvent :: types.VirtualEvent)
	local experienceDetails = if getFFlagVirtualEventsGraphQL()
		then (props.virtualEvent :: GraphQLServer.VirtualEvent).experienceDetails
		else useExperienceDetails((joinedProps.virtualEvent :: types.VirtualEvent).universeId)
	local firstImage = if media then findFirstImageInMedia(media) else nil

	local galleryHeight, setGalleryHeight = React.useState(0)

	local deviceType: DeviceType = useDeviceType()

	local galleryItems = React.useMemo(function()
		return getGalleryItems(media)
	end, { media })

	local updateRsvpStatus = if getFFlagVirtualEventsGraphQL()
		then useMutation(requests.UPDATE_RSVP_STATUS, {
			variables = {
				virtualEventId = props.virtualEvent.id,
			},
			update = function(_self, cache, result)
				local virtualEvent = result.data.virtualEventRsvp.virtualEvent

				cache:modify({
					id = cache:identify(virtualEvent),
					fields = {
						rsvpCounters = function(_self, prev: { going: number })
							local increment = if virtualEvent.userRsvpStatus == "going" then 1 else -1
							return Cryo.Dictionary.join(prev, {
								going = prev.going + increment,
							})
						end,
					},
				})
			end,
		})
		else nil

	local eventStatus = if getFFlagVirtualEventsGraphQL()
		then React.useMemo(function()
			return getEventTimerStatus(joinedProps.virtualEvent, joinedProps.currentTime)
		end, { joinedProps.virtualEvent, joinedProps.currentTime } :: { any })
		else (React.useMemo(function()
			return getEventTimerStatus(joinedProps.virtualEvent, joinedProps.currentTime)
		end, { joinedProps.virtualEvent, joinedProps.currentTime } :: { any })) :: any

	local onSizeChanged = React.useCallback(function(container: Frame)
		local containerWidth = container.AbsoluteSize.X
		local gallerySizes = MediaGalleryPreview:calcSizesFromWidth(containerWidth, THUMBNAILS_COUNT)
		local contentHeight = gallerySizes.contentSize.Y.Offset
		if contentHeight ~= galleryHeight then
			setGalleryHeight(contentHeight)
		end
	end, { galleryHeight })

	local onRsvpChanged = React.useCallback(function()
		local newRsvpStatus: types.RsvpStatus
		if joinedProps.virtualEvent.userRsvpStatus ~= "going" then
			newRsvpStatus = "going"
		else
			newRsvpStatus = "notGoing"
		end

		if getFFlagVirtualEventsGraphQL() then
			updateRsvpStatus
				[1]({
					variables = {
						rsvpStatus = newRsvpStatus,
					},
				})
				:andThen(function(res)
					if getFFlagUpsellModalOnEventDetailsPage() then
						if joinedProps.onRsvpChanged then
							joinedProps.onRsvpChanged(
								res.data.virtualEventRsvp.rsvpStatus,
								res.data.virtualEventRsvp.shouldSeeNotificationsUpsellModal
							)
						end
					end
				end)
		else
			if getFFlagUpsellModalOnEventDetailsPage() then
				dispatch(
					network.NetworkingVirtualEvents.UpdateMyRsvpStatus.API(joinedProps.virtualEvent.id, newRsvpStatus)
				):andThen(function(res)
					if joinedProps.onRsvpChanged then
						joinedProps.onRsvpChanged(
							res.responseBody.rsvpStatus,
							res.responseBody.shouldSeeNotificationsUpsellModal
						)
					end
				end)
			else
				if joinedProps.onRsvpChanged then
					joinedProps.onRsvpChanged(newRsvpStatus)
				end

				dispatch(
					network.NetworkingVirtualEvents.UpdateMyRsvpStatus.API(joinedProps.virtualEvent.id, newRsvpStatus)
				)
			end
		end
	end, { joinedProps.virtualEvent })

	local actionBarProps = useActionBarProps(joinedProps.virtualEvent, eventStatus, {
		onClose = joinedProps.onClose,
		onJoinEvent = joinedProps.onJoinEvent,
		onShare = joinedProps.onShare,
		onRsvpChanged = onRsvpChanged,
	})

	local shouldShowActionBar = React.useMemo(function()
		return actionBarProps.button or #actionBarProps.icons > 0
	end, { actionBarProps })

	local componentList = {
		Attendance = if eventStatus ~= "Elapsed"
			then {
				portraitLayoutOrder = 1,
				landscapePosition = ContentPositionEnum.Left,
				landscapeLayoutOrder = 1,
				renderComponent = function()
					return React.createElement(Attendance, {
						virtualEvent = joinedProps.virtualEvent,
						eventStatus = eventStatus,
					})
				end,
			}
			else nil,
		MediaGallery = {
			portraitLayoutOrder = 2,
			landscapePosition = ContentPositionEnum.Right,
			landscapeLayoutOrder = 1,
			renderComponent = function()
				if getFFlagHorizontalMediaOnEventDetailsPage() then
					return React.createElement(MediaGalleryHorizontal, {
						items = galleryItems,
					})
				else
					return React.createElement("Frame", {
						Size = UDim2.new(1, 0, 0, galleryHeight),
						BackgroundTransparency = 1,
						[React.Change.AbsoluteSize] = onSizeChanged,
					}, {
						Gallery = React.createElement(MediaGalleryPreview, {
							items = galleryItems,
							numberOfThumbnails = THUMBNAILS_COUNT,
						}),
					})
				end
			end,
		},
		Description = {
			portraitLayoutOrder = 3,
			landscapePosition = ContentPositionEnum.Left,
			landscapeLayoutOrder = 2,
			renderComponent = function()
				return React.createElement(EventDescription, {
					description = joinedProps.virtualEvent.description,
					experienceName = if experienceDetails then experienceDetails.name else nil,
					experienceThumbnail = firstImage,
					onExperienceTileActivated = joinedProps.onExperienceTileActivated,
				})
			end,
		},
		EventInfo = if joinedProps.virtualEvent.host
			then {
				portraitLayoutOrder = 4,
				landscapePosition = ContentPositionEnum.Right,
				landscapeLayoutOrder = 2,
				renderComponent = function()
					return React.createElement(ListTable, {
						cells = {
							React.createElement(EventHostedBy, {
								host = joinedProps.virtualEvent.host :: any,
								onActivated = joinedProps.onHostActivated,
							}),
						},
					})
				end,
			}
			else nil,
	}

	return React.createElement(DetailsPageTemplate, {
		deviceType = deviceType,
		titleText = if props.virtualEvent.eventStatus == "moderated"
			then "[CONTENT MODERATED]"
			else joinedProps.virtualEvent.title,
		thumbnailImageUrl = firstImage,
		thumbnailAspectRatio = Vector2.new(16, 9),
		renderInfoContent = function()
			return React.createElement(EventTimer, {
				virtualEvent = joinedProps.virtualEvent,
				status = eventStatus,
				currentTime = joinedProps.currentTime,
			})
		end,
		actionBarProps = if shouldShowActionBar then actionBarProps else nil,
		componentList = if props.virtualEvent.eventStatus ~= "cancelled"
				and props.virtualEvent.eventStatus ~= "moderated"
			then componentList
			else {},
		onClose = joinedProps.onClose,
	})
end

return EventDetailsPage
