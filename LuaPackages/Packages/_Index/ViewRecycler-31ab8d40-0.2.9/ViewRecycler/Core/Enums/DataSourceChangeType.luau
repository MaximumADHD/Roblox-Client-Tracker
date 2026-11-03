local DataSourceChangeType = table.freeze({
	Reset = "reset" :: "reset",
	Update = "update" :: "update",
	Insert = "insert" :: "insert",
	Remove = "remove" :: "remove",
	Move = "move" :: "move",
	Reorder = "reorder" :: "reorder",
})

export type DataSourceChangeType =
	typeof(DataSourceChangeType.Reset)
	| typeof(DataSourceChangeType.Update)
	| typeof(DataSourceChangeType.Insert)
	| typeof(DataSourceChangeType.Remove)
	| typeof(DataSourceChangeType.Move)
	| typeof(DataSourceChangeType.Reorder)

return DataSourceChangeType
