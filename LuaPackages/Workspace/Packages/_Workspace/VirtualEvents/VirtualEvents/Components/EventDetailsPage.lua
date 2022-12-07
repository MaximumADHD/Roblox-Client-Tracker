local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local Cryo = require(VirtualEvents.Parent.Cryo)
local React = require(VirtualEvents.Parent.React)
local UIBlox = require(VirtualEvents.Parent.UIBlox)
local useDispatch = require(VirtualEvents.Parent.RoactUtils).Hooks.RoactRodux.useDispatch
local getEventTimerStatus = require(VirtualEvents.Common.getEventTimerStatus)
local findFirstImageInMedia = require(VirtualEvents.Common.findFirstImageInMedia)
local useVirtualEventMedia = require(VirtualEvents.Hooks.useVirtualEventMedia)
local useExperienceDetails = require(VirtualEvents.Hooks.useExperienceDetails)
local usePrimaryButtonProps = require(VirtualEvents.Hooks.usePrimaryButtonProps)
local EventTimer = require(VirtualEvents.Components.EventTimer)
local EventDescription = require(VirtualEvents.Components.EventDescription)
local EventHostedBy = require(VirtualEvents.Components.EventHostedBy)
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local network = require(VirtualEvents.network)
local types = require(VirtualEvents.types)

local DetailsPageTemplate = UIBlox.App.Template.DetailsPage.DetailsPageTemplate
local ContentPositionEnum = UIBlox.App.Template.DetailsPage.Enum.ContentPosition
local MediaGalleryPreview = UIBlox.App.Container.MediaGalleryPreview
local ListTable = UIBlox.App.Table.ListTable
local Images = UIBlox.App.ImageSet.Images
local noop = function() end

local THUMBNAILS_COUNT = 5

local function getGalleryItems(media: { ExperienceMediaModel.Response })
	local galleryItems = {}

	for _, singleMedia in media do
		-- MediaGalleryPreview doesn't support videos so we're foregoing support
		-- of them for now. Once we allow users to upload custom event assets we
		-- should revisit this limitation if we intend for videos to be uploaded
		if singleMedia.imageId then
			table.insert(galleryItems, {
				imageId = ("rbxassetid://%i"):format(singleMedia.imageId),
				isVideo = singleMedia.assetType == "YouTubeVideo",
			})
		end
	end

	return galleryItems
end

-- These get used by EventDetailsPageLoader so it can pass down all the same props
export type BaseProps = {
	currentTime: DateTime,
	onClose: (() -> ())?,
	onJoinEvent: (() -> ())?,
	onRsvpChanged: ((newRsvpStatus: types.RsvpStatus) -> ())?,
	onExperienceTileActivated: (() -> ())?,
	onHostActivated: ((host: types.Host) -> ())?,
	onShare: (() -> ())?,
}

export type Props = BaseProps & {
	virtualEvent: types.VirtualEvent,
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
	local media = useVirtualEventMedia(joinedProps.virtualEvent)
	local experienceDetails = useExperienceDetails(joinedProps.virtualEvent.universeId)
	local firstImage = if media then findFirstImageInMedia(media) else nil

	local galleryHeight, setGalleryHeight = React.useState(0)

	local galleryItems = React.useMemo(function()
		return if media then getGalleryItems(media) else {}
	end, { media })

	local eventStatus = (
		React.useMemo(function()
			return getEventTimerStatus(joinedProps.virtualEvent, joinedProps.currentTime)
		end, { joinedProps.virtualEvent, joinedProps.currentTime } :: { any })
	) :: any

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

		if joinedProps.onRsvpChanged then
			joinedProps.onRsvpChanged(newRsvpStatus)
		end

		dispatch(network.NetworkingVirtualEvents.UpdateMyRsvpStatus.API(joinedProps.virtualEvent.id, newRsvpStatus))
	end, { joinedProps.virtualEvent })

	local buttonProps = usePrimaryButtonProps(joinedProps.virtualEvent, eventStatus, {
		onClose = joinedProps.onClose,
		onJoinEvent = joinedProps.onJoinEvent,
		onRsvpChanged = onRsvpChanged,
	})

	return React.createElement(DetailsPageTemplate, {
		isMobile = true, -- TODO: EN-1467 Setup breakpoints for mobile and desktop
		titleText = joinedProps.virtualEvent.title,
		thumbnailImageUrl = firstImage,
		thumbnailAspectRatio = Vector2.new(16, 9),
		renderInfoContent = function()
			return React.createElement(EventTimer, {
				virtualEvent = joinedProps.virtualEvent,
				status = eventStatus,
				currentTime = joinedProps.currentTime,
			})
		end,
		actionBarProps = {
			button = {
				props = buttonProps,
			},
			icons = {
				{
					props = {
						anchorPoint = Vector2.new(0.5, 0.5),
						position = UDim2.fromScale(0.5, 0.5),
						icon = Images["icons/actions/share"],
						userInteractionEnabled = true,
						onActivated = joinedProps.onShare,
					},
				},
			},
		},
		componentList = {
			Description = {
				portraitLayoutOrder = 2,
				landscapePosition = ContentPositionEnum.Left,
				landscapeLayoutOrder = 1,
				renderComponent = function()
					return React.createElement(EventDescription, {
						description = if experienceDetails then experienceDetails.description else nil,
						experienceName = if experienceDetails then experienceDetails.name else nil,
						experienceThumbnail = firstImage,
						onExperienceTileActivated = joinedProps.onExperienceTileActivated,
					})
				end,
			},
			MediaGallery = {
				portraitLayoutOrder = 1,
				landscapePosition = ContentPositionEnum.Right,
				landscapeLayoutOrder = 1,
				renderComponent = function()
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
				end,
			},
			EventInfo = {
				portraitLayoutOrder = 3,
				landscapePosition = ContentPositionEnum.Right,
				landscapeLayoutOrder = 2,
				renderComponent = function()
					return React.createElement(ListTable, {
						cells = {
							React.createElement(EventHostedBy, {
								host = joinedProps.virtualEvent.host,
								onActivated = joinedProps.onHostActivated,
							}),
						},
					})
				end,
			},
		},
		onClose = joinedProps.onClose,
	})
end

return EventDetailsPage
