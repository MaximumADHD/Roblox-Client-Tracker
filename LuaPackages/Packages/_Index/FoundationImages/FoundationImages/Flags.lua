local Packages = script:FindFirstAncestor("FoundationImages").Parent
local SafeFlags = require(Packages.SafeFlags)

return {
	FixBlurryImages = SafeFlags.createGetFFlag("FixBlurryImages")(),
	FoundationImagesRemoveDeprecatedIconAssets = SafeFlags.createGetFFlag(
		"FoundationImagesRemoveDeprecatedIconAssets2"
	)(),
	FoundationImagesWhitelistedIconAssets = SafeFlags.createGetFString("FoundationImagesWhitelistedIconAssets", "")(),
}
