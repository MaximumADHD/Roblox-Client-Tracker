export type WatchWindowTableRow = {
	pathColumn: string,
	scopeColumn: string,
	valueColumn: string,
	dataTypeColumn: string,
	children : {Path},
	expanded: bool,
	textFilteredOut: bool,
	scopeFilteredOut : bool,
}

return {}