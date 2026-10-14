local Src = script:FindFirstAncestor("ViewRecycler")

local IdentityKind = require(Src.Core.Enums.IdentityKind)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)

export type ContentInsets = {
	start: number,
	finish: number,
}

export type ItemPlacement = {
	mainAxisOffset: number?,
	mainAxisLength: number?,
	-- The Item's main-axis end may not pass this offset: its start is
	-- min(mainAxisOffset, mainAxisEndLimit - its painted length).
	mainAxisEndLimit: number?,
	viewportRelative: boolean?,
	zIndex: number?,
}

export type RetainedItem = {
	key: string,
	index: number,
}

export type IdentityKind = IdentityKind.IdentityKind
export type PinnedPosition = PinnedPosition.PinnedPosition

export type PinnedIdentity = {
	kind: typeof(IdentityKind.Pinned),
	position: PinnedPosition,
	revision: number,
}

export type AdditionalItem = {
	key: string,
	identity: PinnedIdentity,
}

export type Plan = {
	retainedItems: { RetainedItem },
	additionalItems: { AdditionalItem },
	placements: { [string]: ItemPlacement },
	hasViewportRelativePlacements: boolean,
}

return table.freeze({
	IdentityKind = IdentityKind,
	ITEM_PLACEMENT_KEYS = table.freeze({ "mainAxisOffset", "mainAxisLength", "mainAxisEndLimit", "zIndex" }),
	PinnedPosition = PinnedPosition,
})
