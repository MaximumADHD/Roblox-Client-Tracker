local Foundation = script:FindFirstAncestor("Foundation")

local DisplacedBehavior = require(Foundation.Providers.ScreenRegion.DisplacedBehavior)
local RegionOrder = require(Foundation.Providers.ScreenRegion.RegionOrder)
local ScreenRegion = require(Foundation.Providers.ScreenRegion.ScreenRegion)
local ScreenRegionKind = require(Foundation.Providers.ScreenRegion.ScreenRegionKind)
type DisplacedBehavior = DisplacedBehavior.DisplacedBehavior
type RegionOrder = RegionOrder.RegionOrder
type ScreenRegion = ScreenRegion.ScreenRegion
type ScreenRegionKind = ScreenRegionKind.ScreenRegionKind

export type RegionPolicy = {
	-- Most entries visible at once.
	capacity: number,
	-- Optional cap per kind, applied on top of `capacity`.
	capacityPerKind: { [ScreenRegionKind]: number }?,
	-- How competing entries are ranked.
	order: RegionOrder,
	-- What happens to an open entry of each kind that does not fit. Kinds that are not listed are suspended.
	displaced: { [ScreenRegionKind]: DisplacedBehavior },
	-- When true, an entry waits until displaced entries have finished leaving before it appears.
	sequential: boolean,
}

local policies: { [ScreenRegion]: RegionPolicy } = {
	[ScreenRegion.Bottom] = {
		capacity = 1,
		order = RegionOrder.Newest,
		displaced = {
			[ScreenRegionKind.FloatingBanner] = DisplacedBehavior.Suspend,
		},
		sequential = true,
	},
}

return policies
