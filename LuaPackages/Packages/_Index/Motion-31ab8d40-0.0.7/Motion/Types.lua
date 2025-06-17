--[[
	This file centralizes common types used throughout the library.
--]]

export type TransitionConfig = {
	duration: number?,
	easingStyle: ({ number } | Enum.EasingStyle)?,
	delay: number?,
	onComplete: (() -> ())?,
}

export type MotionTransition = {
	[string]: TransitionConfig,
}

export type MotionState = {
	[string]: any,
	transition: {
		default: TransitionConfig,
		[string]: TransitionConfig?,
	}?,
}

return nil
