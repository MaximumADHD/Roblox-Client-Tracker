local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local constants = require(VirtualEvents.constants)

type ExperienceMedia = GraphQLServer.ExperienceMedia

local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

--[[
	Transforms media objects from the backend into a format that
	MediaGalleryPreview accepts.

	MediaGalleryPreview is the UIBlox component we use for displaying a
	VirtualEvent's media, so before we can use it we need to use this function
	to map the raw data from the backend into a format it accepts.
]]
local function getGalleryItems(media: { ExperienceMedia }?)
	local galleryItems = {}

	if media then
		for _, singleMedia in media do
			if getFFlagVirtualEventsGraphQL() then
				-- MediaGalleryPreview doesn't support videos so we're foregoing support
				-- of them for now. Once we allow users to upload custom event assets we
				-- should revisit this limitation if we intend for videos to be uploaded
				if singleMedia.assetType == "Image" and singleMedia.imageId then
					table.insert(galleryItems, {
						imageId = ("rbxassetid://%s"):format(singleMedia.imageId),
						isVideo = false,
					})
				end
			else
				-- MediaGalleryPreview doesn't support videos so we're foregoing support
				-- of them for now. Once we allow users to upload custom event assets we
				-- should revisit this limitation if we intend for videos to be uploaded
				if singleMedia.imageId then
					table.insert(galleryItems, {
						imageId = ("rbxassetid://%i"):format(singleMedia.imageId :: any),
						isVideo = singleMedia.assetType == "YouTubeVideo",
					})
				end
			end
		end
	end

	if #galleryItems > 0 then
		return galleryItems
	else
		return {
			{
				imageId = constants.DEFAULT_EVENT_THUMBNAIL,
				isVideo = false,
			},
		}
	end
end

return getGalleryItems
