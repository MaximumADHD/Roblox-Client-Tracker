local Motion = require(script.Motion)
local useMotion = require(script.Utility.useMotion)
local AnimatePresence = require(script.AnimatePresence.AnimatePresence)
local usePresence = require(script.AnimatePresence.usePresence)
local Types = require(script.Types)

export type TransitionConfig = Types.TransitionConfig
export type MotionTransition = Types.MotionTransition
export type MotionState = Types.MotionState

return {
	-- Core functionality
	createState = Motion.createState,
	animate = Motion.animate,
	transition = Motion.transition,

	-- React hooks
	useMotion = useMotion,
	usePresence = usePresence,

	-- Components
	AnimatePresence = AnimatePresence,

	-- Enums
	TransitionPreset = require(script.Enums.TransitionPreset),
}
