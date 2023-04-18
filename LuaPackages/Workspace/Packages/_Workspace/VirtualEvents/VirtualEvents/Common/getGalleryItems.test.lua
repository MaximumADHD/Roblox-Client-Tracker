local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local constants = require(VirtualEvents.constants)
local getGalleryItems = require(script.Parent.getGalleryItems)

type ExperienceMedia = GraphQLServer.ExperienceMedia

it("should map the media to the gallery format", function()
	local media: { ExperienceMedia } = {
		{
			assetTypeId = "1",
			assetType = "Image",
			imageId = "123456",
		},
	}

	local galleryItems = getGalleryItems(media)

	expect(galleryItems).toBeDefined()
	expect(#galleryItems).toBe(1)
	expect(galleryItems[1].imageId).toBe("rbxassetid://" .. media[1].imageId :: string)
end)

it("should return the default image when only videos are included in the media", function()
	local media: { ExperienceMedia } = {
		{
			assetTypeId = "-1",
			assetType = "YouTubeVideo",
			videoHash = "hash",
			videoTitle = "Video Title",
		},
	}

	local galleryItems = getGalleryItems(media)

	expect(galleryItems).toBeDefined()
	expect(#galleryItems).toBe(1)
	expect(galleryItems[1].imageId).toBe(constants.DEFAULT_EVENT_THUMBNAIL)
end)

it("should return the default image when no media is passed in", function()
	local media = {}
	local galleryItems = getGalleryItems(media)

	expect(galleryItems).toBeDefined()
	expect(#galleryItems).toBe(1)
	expect(galleryItems[1].imageId).toBe(constants.DEFAULT_EVENT_THUMBNAIL)

	galleryItems = getGalleryItems(nil)

	expect(galleryItems).toBeDefined()
	expect(#galleryItems).toBe(1)
	expect(galleryItems[1].imageId).toBe(constants.DEFAULT_EVENT_THUMBNAIL)
end)

return {}
