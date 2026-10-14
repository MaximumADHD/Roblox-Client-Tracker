export type PinnedItem<T, ItemViewType> = {
	key: string,
	value: T,
	itemViewType: ItemViewType,
}

export type Options<T, ItemViewType> = {
	isItemStickyHeader: ((key: string) -> boolean)?,
	pinnedStartItem: PinnedItem<T, ItemViewType>?,
	pinnedEndItem: PinnedItem<T, ItemViewType>?,
}

return {}
