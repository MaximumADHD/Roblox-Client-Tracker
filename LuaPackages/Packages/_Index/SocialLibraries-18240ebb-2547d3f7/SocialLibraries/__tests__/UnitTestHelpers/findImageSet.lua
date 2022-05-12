local SocialLibraries = script:FindFirstAncestor("SocialLibraries")
local dependencies = require(SocialLibraries.dependencies)
local UIBlox = dependencies.UIBlox

return function(imageSetPath)
	local Images = UIBlox.App.ImageSet.Images
	local imageSet = Images[imageSetPath]

	return {
		Image = imageSet.Image,
		ImageRectSize = imageSet.ImageRectSize,
		ImageRectOffset = imageSet.ImageRectOffset,
	}
end
