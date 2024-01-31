local HttpRbxApiService = game:GetService("HttpRbxApiService")
local HttpService = game:GetService("HttpService")

local root = script.Parent.Parent

local Promise = require(root.Parent.Promise)

local APIUtil = require(root.util.APIUtil)

export type AssetTypeSettings = {
	minimumQuantity: number,
	maximumQuantity: number,
	isEligibleForUpload: boolean,
	allowedFileExtensions: { string },
}

export type AllowedBundleTypeSettings = {
	[string]: {
		allowedAssetTypeSettings: {
			[string]: AssetTypeSettings,
		},

		marketplaceFeePercentage: number,
		allowedPriceRange: {
			minimumPrice: number,
			maximumPrice: number,
		},
	},
}

export type BundlesMetadata = {
	isBundlesControllerEnabled: boolean,
	isBundlesCreationEnabled: boolean,
	isBundlesPublishingEnabled: boolean,

	allowedBundleTypeSettings: AllowedBundleTypeSettings,
}

local BundlesMetadata = {}

-- Returns a Promise to BundlesMetadata
function BundlesMetadata.fetch()
	return Promise.try(function()
		return HttpService:JSONDecode(
			HttpRbxApiService:GetAsyncFullUrl(`https://itemconfiguration.{APIUtil.getBaseDomain()}/v1/bundles/metadata`)
		)
	end)
end

function BundlesMetadata.mock(): BundlesMetadata
	return {
		isBundlesControllerEnabled = true,
		isBundlesCreationEnabled = true,
		isBundlesPublishingEnabled = true,
		allowedBundleTypeSettings = {
			Body = {
				allowedAssetTypeSettings = {
					DynamicHead = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					EyebrowAccessory = {
						minimumQuantity = 0,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					EyelashAccessory = {
						minimumQuantity = 0,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					HairAccessory = {
						minimumQuantity = 0,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					LeftArm = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					LeftLeg = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					RightArm = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					RightLeg = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					Torso = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
				},
				marketplaceFeePercentage = 30,
				allowedPriceRange = {
					minimumPrice = 0,
					maximumPrice = 10000,
				},
			},
			DynamicHead = {
				allowedAssetTypeSettings = {
					DynamicHead = {
						minimumQuantity = 1,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					EyebrowAccessory = {
						minimumQuantity = 0,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
					EyelashAccessory = {
						minimumQuantity = 0,
						maximumQuantity = 1,
						isEligibleForUpload = true,
						allowedFileExtensions = {
							".rbxm",
						},
					},
				},
				marketplaceFeePercentage = 30,
				allowedPriceRange = {
					minimumPrice = 0,
					maximumPrice = 10000,
				},
			},
		},
	}
end

return BundlesMetadata
