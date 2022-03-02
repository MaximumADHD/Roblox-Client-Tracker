-- TODO #luau: support these internally
export type Array<T> = {[number]: T}
-- TODO #luau: support tuples
export type Pair<A, B> = {[number]: A | B}
export type Record<K, V> = {[K]: V}
export type AnyRecord = Record<any, any>

-- TODO #lua-foundation: types for Roact
export type Roact = any
export type RoactTree = any
export type RoactComponent = any
export type RoactInstance = any
export type RoactNode = any

export type EventName = string

export type BridgeMessage = {
	eventName: EventName,
	fromBridgeId: string?,
	fromTargetId: string?,
	toBridgeId: string?,
	toTargetId: string?,
}

export type BridgeListener = {
	eventName: EventName?,
	bridgeId: string?,
	targetId: string?,
	onEvent: (BridgeMessage) -> (),
}

export type TableSort = {
	columns: Array<string>,
	sortIndex: number,
}

export type ProfileComponentRow = {
	instanceId: number,
	count: number,
	depth: number,
	path: Array<string>,
	pathString: string,
	instanceName: string,
	time: number,
	renderTime: number,
}

export type ProfileEvent = {
	instance: RoactInstance,
	depth: number,
	renderTime: number,
	startTime: number,
	endTime: number,
	updateTrace: string,
	isPure: boolean,
	oldState: AnyRecord,
	newState: AnyRecord,
	oldProps: AnyRecord,
	newProps: AnyRecord,
	isMount: boolean,
}

export type ProfileEventInfo = {
	startTime: number,
	renderTime: number,
	time: number,
	cause: string,
	updateTrace: string,
	details: string,
	detailsTip: string,
}

export type ProfileData = {
	componentRows: Array<ProfileComponentRow>,
	eventRows: Array<ProfileEventInfo>,
	rowCount: number,
	eventCount: number,
	instanceEventCount: number,
}

export type Slices = {
	componentSliceStart: number,
	componentSliceEnd: number,
	eventSliceStart: number,
	eventSliceEnd: number
}

return nil
