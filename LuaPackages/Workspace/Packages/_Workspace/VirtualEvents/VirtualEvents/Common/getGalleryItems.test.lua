local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local constants = require(VirtualEvents.constants)
local getGalleryItems = require(script.Parent.getGalleryItems)

it("should map the media to the gallery format", function()
	local media = {
		ExperienceMediaModel.mock(),
	}

	local galleryItems = getGalleryItems(media)

	expect(galleryItems).toBeDefined()
	expect(#galleryItems).toBe(1)
	expect(galleryItems[1].imageId).toBe("rbxassetid://" .. (media[1].imageId :: number))
end)

it("should return the default image when only videos are included in the media", function()
	local video = ExperienceMediaModel.mock()
	video.imageId = nil
	video.videoHash = "hash"
	video.videoTitle = "Video Title"

	local media = {
		video,
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
