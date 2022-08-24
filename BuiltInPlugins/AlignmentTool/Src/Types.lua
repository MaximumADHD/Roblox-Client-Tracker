-- TODO: SBT-49: Add types to Align Tool
export type Array<Value> = {[number]: Value}
export type Map<Key, Value> = {[Key]: Value}

export type AlignSettings = {
	Mode: string,
	Axes: Map<string, boolean>,
	CoordinateSpace: string,
	RelativeTo: string,
}

return {}
