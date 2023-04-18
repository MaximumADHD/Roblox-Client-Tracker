local VirtualEvents = script:FindFirstAncestor("VirtualEvents")

local JestGlobals = require(VirtualEvents.Parent.Dev.JestGlobals)
local expect = JestGlobals.expect
local it = JestGlobals.it
local GraphQLServer = require(VirtualEvents.Parent.GraphQLServer)
local findFirstImageInMedia = require(script.Parent.findFirstImageInMedia)

type ExperienceMedia = GraphQLServer.ExperienceMedia

it("should return the rbxassetid of the first image-based media object", function()
	local image: ExperienceMedia = {
		assetTypeId = "1",
		assetType = "Image",
		imageId = "1234567",
		altText = "Foo",
	}

	local video: ExperienceMedia = {
		assetTypeId = "33",
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
