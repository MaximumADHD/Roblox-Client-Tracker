--!strict
export type MotorCallback<T> = (T) -> ()
export type Unsubscribe = () -> ()

-- Animation values need to be continuous and interpolatable; for now, that's
-- probably just numbers, but one could imagine something more sophisticated
export type AnimationValue = number

export type DefaultGoalOptions = {
	startingValue: AnimationValue?,
}

type Empty = {}

export type EaseState = {
	elapsed: AnimationValue?,
	goal: AnimationValue?,
	initialValue: AnimationValue?,
}

export type SpringState = {
	velocity: AnimationValue?,
}

export type State = {
	value: AnimationValue,
	complete: boolean,
}

export type Goal<T = Empty> = {
	step: (state: State & T, dt: number) -> State & T,
	startingValue: AnimationValue?,
}

export type Motor<T, U> = {
	start: (self: Motor<T, U>) -> (),
	stop: (self: Motor<T, U>) -> (),
	step: (self: Motor<T, U>, dt: number) -> (),
	setGoal: (self: Motor<T, U>, goal: T) -> (),
	onStep: (self: Motor<T, U>, callback: MotorCallback<U>) -> Unsubscribe,
	onComplete: (self: Motor<T, U>, callback: MotorCallback<U>) -> Unsubscribe,
	destroy: (self: Motor<T, U>) -> (),
}

return nil
