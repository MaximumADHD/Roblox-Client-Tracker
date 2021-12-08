export type PluginState = string

export type RecordingMetadata = {
	resolution: {number},
	deviceId: string,
	orientation: string,
}

export type RecordingObject = {
	events: {any},
	additionalMetadata: RecordingMetadata,
	resolution: {number},
	duration: number,
	deviceId: string,
	orientation: string,
	additionalLuaState: any,
}

return {}
