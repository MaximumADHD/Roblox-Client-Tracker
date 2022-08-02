--!strict
export type AssetTypeQuotaPolicy = {
	link: string?,
}

-- Keyed by AssetTypeName
export type AssetQuotaPolicy = {
	[string]: AssetTypeQuotaPolicy,
}

export type AssetQuotaResourceType = "RateLimitCreatorMarketplaceDistribute" | "RateLimitUpload"

export type AssetQuota = {
	duration: string,
	usage: number,
	capacity: number,
	expirationTime: string?,
}
export type AssetQuotasResponse = {
	quotas: { AssetQuota }?,
}

return {}
