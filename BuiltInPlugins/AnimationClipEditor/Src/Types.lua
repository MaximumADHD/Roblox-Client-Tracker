export type Store = {[string]: any}

export type Events = {[string]: string}

export type AnimationEvents = {
	Data: {[number]: Events}
}

export type Keyframe = {
	Value: (CFrame | Vector3 | number),
}

export type Track = {
	Components: {[string]: Track}?,
	Data: {Keyframe}?,
	Instance: string,
	IsCurveTrack: boolean?,
	Keyframes: {number}?,
	Name: string?,
	Type: string?,
}

export type Marker = {Time: number, Value: string}

export type AnimationData = {[string]: any}

return nil