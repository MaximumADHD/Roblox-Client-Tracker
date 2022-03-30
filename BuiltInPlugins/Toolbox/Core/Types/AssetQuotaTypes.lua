--!strict
export type AssetTypeQuotaPolicy = {
	capacity: number?,
	days: number?,
	link: string?,
}

-- Keyed by AssetTypeName
export type AssetQuotaPolicy = {
	[string]: AssetTypeQuotaPolicy,
}

return {}
