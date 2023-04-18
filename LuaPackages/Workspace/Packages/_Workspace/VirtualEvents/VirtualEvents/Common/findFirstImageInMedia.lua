--[[
	This is intended to be a temporary function while we build up our
	infrastructure to have media attached to the VirtualEvent object itself.

	Since right now we're inheriting media from game details, we use this
	function to grab the first image in the media response (skipping videos)
]]

local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local getFFlagVirtualEventsGraphQL = require(VirtualEvents.Parent.SharedFlags).getFFlagVirtualEventsGraphQL

type ExperienceMedia = GraphQLServer.ExperienceMedia

local function findFirstImageInMedia(media: { ExperienceMedia }): string?
	for _, singleMedia in media do
		if singleMedia.assetType == "Image" and singleMedia.imageId then
			if getFFlagVirtualEventsGraphQL() then
				return ("rbxassetid://%s"):format(singleMedia.imageId)
			else
				return ("rbxassetid://%i"):format(singleMedia.imageId :: any)
			end
		end
	end
	return nil
end

return findFirstImageInMedia
