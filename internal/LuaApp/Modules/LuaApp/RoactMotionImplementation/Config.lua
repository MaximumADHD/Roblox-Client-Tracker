return {
	-- Update rate in seconds for all animations
	UPDATE_RATE = 1 / 120,

	-- Percentage of normal speed to run animations at.
	-- Less than 1 makes animations run more slowly.
	-- More than 1 makes animations run more quickly.
	TIME_FACTOR = 1,

	-- Max update in seconds that will be processed in one frame
	-- This tries to prevent the classic 'spiral of death'
	MAX_ACCUMULATION = 0.2,

	-- Default values for springs created with spring()
	DEFAULT_STIFFNESS = 170,
	DEFAULT_DAMPING = 26,

	-- Used to configure the spring resting mechanism
	-- The spring will rest all of these are true:
	-- * Velocity is less than SPRING_PRECISION
	-- * Position is within SPRING_PRECISION of the target
	SPRING_PRECISION = 0.01,
}