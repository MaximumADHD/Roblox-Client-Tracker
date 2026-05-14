local Foundation = script:FindFirstAncestor("Foundation")
local Packages = Foundation.Parent

local FoundationCloudAssets = require(Packages.FoundationCloudAssets).Assets

return function(img: string)
	return FoundationCloudAssets[img] ~= nil
end
