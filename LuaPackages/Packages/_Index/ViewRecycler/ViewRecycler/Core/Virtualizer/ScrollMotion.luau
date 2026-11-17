-- The motion of one Animated scroll. A critically damped spring lands on the
-- target, so it takes about as long at any distance. A motion may set a jump
-- distance beyond which it first approaches at speed, then jumps close so the
-- spring lands from the remaining distance. Each motion keeps the profile it
-- starts with.
-- Callers pass the current position every step, so corrections between steps
-- carry the motion with them.
local RESTING_DISTANCE = 0.5
local RESTING_SPEED = 10

-- Distances are in viewport lengths.
export type Profile = {
	-- Viewport lengths beyond which the motion first approaches, then jumps.
	jumpDistance: number,
	-- Hz of the spring that lands every motion; the approach speeds up at
	-- twice this rate.
	frequency: number,
	-- The distance the approach covers before it jumps.
	approachDistance: number,
	-- Viewport lengths per second the approach speeds up toward.
	cruiseSpeed: number,
	-- The least distance left after the jump. The spring needs at least
	-- speed / (2 pi frequency) to slow without passing the target.
	landingDistance: number,
}

-- Each field a call or list may set; an unset field falls back.
export type Options = {
	jumpDistance: number?,
	frequency: number?,
	cruiseSpeed: number?,
	approachDistance: number?,
	landingDistance: number?,
}

local DEFAULT_FREQUENCY = 2.5

-- An unset cruiseSpeed is 2 pi frequency, the speed the spring lands from
-- in one landing distance.
local DEFAULTS: Options = table.freeze({
	jumpDistance = math.huge,
	frequency = DEFAULT_FREQUENCY,
	approachDistance = 1,
	landingDistance = 1,
})

export type Phase = "approach" | "land"

export type ScrollMotion = {
	phase: Phase,
	velocity: number,
	approached: number,
	profile: Profile,
	angularFrequency: number,
}

local ScrollMotion = {}

ScrollMotion.defaults = DEFAULTS

function ScrollMotion.isAtRest(position: number, target: number, velocity: number): boolean
	return math.abs(target - position) < RESTING_DISTANCE and math.abs(velocity) < RESTING_SPEED
end

local function isFar(jumpDistance: number, distance: number, viewportLength: number): boolean
	return math.abs(distance) > jumpDistance * viewportLength
end

local function assertPositive(value: number?, name: string, label: string, allowHuge: boolean?)
	assert(
		value == nil or (type(value) == "number" and value > 0 and (allowHuge or value < math.huge)),
		`{label}: {name} must be a positive number`
	)
end

local function assertNonNegative(value: number?, name: string, label: string)
	assert(
		value == nil or (type(value) == "number" and value >= 0 and value < math.huge),
		`{label}: {name} must be a finite non-negative number`
	)
end

-- Rejects invalid fields, naming them after `label`. Other keys are ignored.
function ScrollMotion.validate(options: Options?, label: string)
	if options == nil then
		return
	end
	assertPositive(options.jumpDistance, "jumpDistance", label, true)
	assertPositive(options.frequency, "frequency", label)
	assertPositive(options.cruiseSpeed, "cruiseSpeed", label)
	assertNonNegative(options.approachDistance, "approachDistance", label)
	assertNonNegative(options.landingDistance, "landingDistance", label)
end

-- Each field from the call, else the list's default, else the library's.
function ScrollMotion.resolve(call: Options?, default: Options?): Profile
	local callFields: Options = call or {}
	local defaultFields: Options = default or {}
	local frequency = callFields.frequency or defaultFields.frequency or DEFAULT_FREQUENCY
	return table.freeze({
		jumpDistance = callFields.jumpDistance or defaultFields.jumpDistance or DEFAULTS.jumpDistance,
		frequency = frequency,
		approachDistance = callFields.approachDistance or defaultFields.approachDistance or DEFAULTS.approachDistance,
		cruiseSpeed = callFields.cruiseSpeed or defaultFields.cruiseSpeed or 2 * math.pi * frequency,
		landingDistance = callFields.landingDistance or defaultFields.landingDistance or DEFAULTS.landingDistance,
	}) :: any
end

-- `velocity` continues a motion this one replaces.
function ScrollMotion.start(
	position: number,
	target: number,
	viewportLength: number,
	velocity: number,
	profile: Profile
): ScrollMotion
	return {
		phase = if isFar(profile.jumpDistance, target - position, viewportLength) then "approach" else "land",
		velocity = velocity,
		approached = 0,
		profile = profile,
		angularFrequency = 2 * math.pi * profile.frequency,
	}
end

-- Advances the critically damped spring `x(t) = (e + (v + w e) t) e^(-w t)`,
-- where `e` is the distance past the target, exactly for any `dt`.
local function land(motion: ScrollMotion, position: number, target: number, dt: number): number
	local omega = motion.angularFrequency
	local error = position - target
	local velocity = motion.velocity
	local coefficient = velocity + omega * error
	local decay = math.exp(-omega * dt)
	motion.velocity = (velocity - omega * coefficient * dt) * decay
	return target + (error + coefficient * dt) * decay
end

-- Accelerates toward the cruise speed, exactly for any `dt`.
local function approach(
	motion: ScrollMotion,
	position: number,
	direction: number,
	viewportLength: number,
	dt: number
): number
	local omega = motion.angularFrequency
	local terminal = direction * motion.profile.cruiseSpeed * viewportLength
	local velocity = motion.velocity
	local decay = math.exp(-2 * omega * dt)
	motion.velocity = terminal + (velocity - terminal) * decay
	local moved = terminal * dt + (velocity - terminal) * (1 - decay) / (2 * omega)
	motion.approached += math.abs(moved)
	return position + moved
end

-- Returns the next position, and whether the motion rests on `target`.
function ScrollMotion.step(
	motion: ScrollMotion,
	position: number,
	target: number,
	viewportLength: number,
	dt: number
): (number, boolean)
	assert(dt >= 0 and dt < math.huge, "ScrollMotion: dt must be a finite non-negative number")
	local remaining = target - position
	local profile = motion.profile
	if motion.phase == "approach" then
		if not isFar(profile.jumpDistance, remaining, viewportLength) then
			motion.phase = "land"
		elseif motion.approached >= profile.approachDistance * viewportLength then
			-- From this distance the spring slows to rest without overshooting
			-- the target.
			local direction = math.sign(remaining)
			local landingDistance = math.min(
				math.abs(remaining),
				math.max(profile.landingDistance * viewportLength, math.abs(motion.velocity) / motion.angularFrequency)
			)
			position = target - direction * landingDistance
			motion.phase = "land"
		else
			return approach(motion, position, math.sign(remaining), viewportLength, dt), false
		end
	end
	local nextPosition = land(motion, position, target, dt)
	if ScrollMotion.isAtRest(nextPosition, target, motion.velocity) then
		motion.velocity = 0
		return target, true
	end
	return nextPosition, false
end

return table.freeze(ScrollMotion)
