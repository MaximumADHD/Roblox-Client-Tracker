local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local ExperienceMediaModel = require(VirtualEvents.Models.ExperienceMediaModel)
local findFirstImageInMedia = require(script.Parent.findFirstImageInMedia)

it("should return the rbxassetid of the first image-based media object", function()
	local image = ExperienceMediaModel.mock()

	local video: ExperienceMediaModel.Response = {
		assetTypeId = 33,
		assetType = "YouTubeVideo",
		videoHash = "Foo",
		videoTitle = "Bar",
		approved = true,
	}

	local response = {
		video,
		image,
	}

	local imageId = findFirstImageInMedia(response)
	expect(imageId).toMatch("rbxassetid://")
	expect(imageId).toMatch(tostring(image.imageId))
end)

return {}
