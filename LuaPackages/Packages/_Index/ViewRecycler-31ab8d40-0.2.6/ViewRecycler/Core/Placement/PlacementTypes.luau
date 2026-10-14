local Src = script:FindFirstAncestor("ViewRecycler")

local DataSource = require(Src.Core.DataSource)
local IdentityKind = require(Src.Core.Enums.IdentityKind)
local Layout = require(Src.Core.Layout)
local PinnedPosition = require(Src.Core.Enums.PinnedPosition)

export type ContentInsets = {
	start: number,
	finish: number,
}

export type ItemPlacement = {
	mainAxisOffset: number?,
	mainAxisLength: number?,
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

export type AdditionalAssignment<T, ItemViewType> = {
	key: string,
	value: T,
	itemViewType: ItemViewType,
	identity: PinnedIdentity,
}

export type Plan<T, ItemViewType> = {
	retainedItems: { RetainedItem },
	additionalAssignments: { AdditionalAssignment<T, ItemViewType> },
	placements: { [string]: ItemPlacement },
	hasViewportRelativePlacements: boolean,
}

export type Context<T> = {
	dataSource: DataSource.DataSource<T>,
	layout: Layout.Runtime,
	scrollOffset: number,
	viewportLength: number,
	contentStartOffset: number,
}

return table.freeze({
	IdentityKind = IdentityKind,
	ITEM_PLACEMENT_KEYS = table.freeze({ "mainAxisOffset", "mainAxisLength", "zIndex" }),
	PinnedPosition = PinnedPosition,
})
