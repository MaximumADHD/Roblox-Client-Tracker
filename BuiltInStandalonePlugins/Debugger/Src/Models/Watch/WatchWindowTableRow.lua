type Path = string

export type WatchWindowTableRow = {
	pathColumn: string,
	scopeColumn: string,
	valueColumn: string,
	dataTypeColumn: string,
	childPaths: { Path },
	expanded: boolean,
	textFilteredOut: boolean,
	scopeFilteredOut: boolean,
}

return {}
