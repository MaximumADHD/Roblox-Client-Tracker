local SocialTab = script:FindFirstAncestor("SocialTab")
local dependencies = require(SocialTab.dependencies)
local UIBlox = dependencies.UIBlox

local function findImageSet(imageSetPath)
	local Images = UIBlox.App.ImageSet.Images
	local imageSet = Images[imageSetPath]

	return {
		Image = imageSet.Image,
		ImageRectSize = imageSet.ImageRectSize,
		ImageRectOffset = imageSet.ImageRectOffset,
	}
end

return findImageSet
