local Foundation = script:FindFirstAncestor("Foundation")

local ElevationLayer = require(Foundation.Enums.ElevationLayer)
type ElevationLayer = ElevationLayer.ElevationLayer

export type ElevationLayerSpec = { start: number, finish: number, step: number }
export type Token = {
	layer: ElevationLayer,
	zIndex: number,
	index: number,
}

local ELEVATION_LAYERS: { [ElevationLayer]: ElevationLayerSpec } = {
	[ElevationLayer.Popover] = { start = 4, finish = 99, step = 1 },
	[ElevationLayer.Drawer] = { start = 100, finish = 199, step = 10 },
	[ElevationLayer.Sheet] = { start = 200, finish = 299, step = 10 },
	[ElevationLayer.Dialog] = { start = 300, finish = 399, step = 10 },
	-- TODO: update this when we have a Notification component in Foundation v2
	-- https://roblox.atlassian.net/browse/UIBLOX-3451
	[ElevationLayer.Notification] = { start = 400, finish = 499, step = 1 },
}

return {
	ELEVATION_LAYERS = ELEVATION_LAYERS,
}
