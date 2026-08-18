local Packages = script:FindFirstAncestor("FoundationImages").Parent
local SafeFlags = require(Packages.SafeFlags)

return {
	FoundationImagesWhitelistedIconAssets = SafeFlags.createGetFString("FoundationImagesWhitelistedIconAssets", "")(),
}
