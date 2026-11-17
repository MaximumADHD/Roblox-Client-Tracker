export type RegionOrder = "Newest" | "Priority"

local RegionOrderEnum = {
	-- Ranks entries by most recent claim.
	Newest = "Newest" :: "Newest",
	-- Ranks entries by priority first, then by most recent claim.
	Priority = "Priority" :: "Priority",
}

return RegionOrderEnum
