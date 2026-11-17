local Foundation = script:FindFirstAncestor("Foundation")

local ElevationLayer = require(Foundation.Enums.ElevationLayer)
local Flags = require(Foundation.Utility.Flags)
type ElevationLayer = ElevationLayer.ElevationLayer

export type ElevationLayerSpec = { start: number, finish: number, step: number }
export type Token = {
	layer: ElevationLayer,
	zIndex: number,
	index: number,
}

local ELEVATION_LAYERS: { [ElevationLayer]: ElevationLayerSpec } = if Flags.FoundationFloatingElevationLayer
	then {
		[ElevationLayer.Popover] = { start = 4, finish = 99, step = 1 },
		-- Screen-anchored surfaces above page content, such as FloatingBanner. They sit below drawers, sheets, and
		-- dialogs because they can open them.
		[ElevationLayer.Floating] = { start = 100, finish = 199, step = 10 },
		[ElevationLayer.Drawer] = { start = 200, finish = 299, step = 10 },
		[ElevationLayer.Sheet] = { start = 300, finish = 399, step = 10 },
		[ElevationLayer.Dialog] = { start = 400, finish = 499, step = 10 },
		[ElevationLayer.Notification] = { start = 600, finish = 699, step = 1 },
	}
	else {
		[ElevationLayer.Popover] = { start = 4, finish = 99, step = 1 },
		[ElevationLayer.Drawer] = { start = 100, finish = 199, step = 10 },
		[ElevationLayer.Sheet] = { start = 200, finish = 299, step = 10 },
		[ElevationLayer.Dialog] = { start = 300, finish = 399, step = 10 },
		-- TODO: update this when we have a Notification component in Foundation v2
		-- https://roblox.atlassian.net/browse/UIBLOX-3451
		[ElevationLayer.Notification] = { start = 400, finish = 499, step = 1 },
		[ElevationLayer.Floating] = { start = 500, finish = 599, step = 10 },
	}

local function getRelativeIndex(token: Token): number
	local spec = ELEVATION_LAYERS[token.layer]
	return token.zIndex - spec.start
end

return {
	ELEVATION_LAYERS = ELEVATION_LAYERS,
	getRelativeIndex = getRelativeIndex,
}
