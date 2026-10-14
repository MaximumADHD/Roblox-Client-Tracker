local PlacementKind = table.freeze({
	List = "list" :: "list",
	Composition = "composition" :: "composition",
})

export type PlacementKind = typeof(PlacementKind.List) | typeof(PlacementKind.Composition)

return PlacementKind
