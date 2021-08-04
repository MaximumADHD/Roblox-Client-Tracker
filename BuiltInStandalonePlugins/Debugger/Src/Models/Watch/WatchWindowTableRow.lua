export type WatchWindowTableRow = {
	path: string,
	scope: string,
	value: string,
	dataType: string,
	children : {Path},
	expanded: bool,
	textFilteredOut: bool,
	scopeFilteredOut : bool,
}

return {}