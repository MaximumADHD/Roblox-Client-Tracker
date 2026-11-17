local Foundation = script:FindFirstAncestor("Foundation")

local DragIntent = require(Foundation.Enums.DragIntent)
local InternalDrawerSide = require(Foundation.Enums.InternalDrawerSide)
type DragIntent = DragIntent.DragIntent
type InternalDrawerSide = InternalDrawerSide.InternalDrawerSide

local DEFAULT_DISTANCE_FRACTION = 0.3
local DEFAULT_VELOCITY_THRESHOLD = 400
-- A stopped pointer sends no further move events, so a sample older than this is not the release speed.
local VELOCITY_SAMPLE_WINDOW = 0.1

local function openSign(side: InternalDrawerSide): number
	return if side == InternalDrawerSide.Start then 1 else -1
end

local function closeSign(side: InternalDrawerSide): number
	return -openSign(side)
end

local function distanceAlong(sign: number, startX: number, currentX: number): number
	return math.max(0, (currentX - startX) * sign)
end

local function velocityAlong(sign: number, velocityX: number): number
	return velocityX * sign
end

-- With a requiredSign, horizontal movement the other way ignores the gesture instead of claiming it.
local function classifyDrag(dx: number, dy: number, slop: number, requiredSign: number?): DragIntent
	local absX = math.abs(dx)
	local absY = math.abs(dy)
	if absY > slop and absY >= absX then
		return DragIntent.Ignore
	end
	if absX <= slop then
		return DragIntent.Pending
	end
	if requiredSign ~= nil and dx * requiredSign <= 0 then
		return DragIntent.Ignore
	end
	return DragIntent.Claim
end

local function freshVelocity(velocityX: number, lastSampleTime: number, now: number): number
	if now - lastSampleTime > VELOCITY_SAMPLE_WINDOW then
		return 0
	end
	return velocityX
end

local function progress(distance: number, travel: number): number
	if travel <= 0 then
		return 0
	end
	return math.clamp(distance / travel, 0, 1)
end

local function passedThreshold(
	distance: number,
	travel: number,
	velocity: number,
	distanceFraction: number,
	velocityThreshold: number
): boolean
	if travel <= 0 then
		return false
	end
	if velocity >= velocityThreshold then
		return true
	end
	return distance > 0 and distance >= distanceFraction * travel
end

local function resolveThreshold(value: number?, defaultValue: number): number
	if value == nil then
		return defaultValue
	end
	return value
end

local function resolveThresholds(config: {
	distanceFraction: number?,
	velocityThreshold: number?,
}): (number, number)
	return resolveThreshold(config.distanceFraction, DEFAULT_DISTANCE_FRACTION),
		resolveThreshold(config.velocityThreshold, DEFAULT_VELOCITY_THRESHOLD)
end

type GestureLike = {
	startX: number,
	lastX: number,
	lastTime: number,
	velocityX: number,
}

local function shouldCommit(
	gesture: GestureLike,
	sign: number,
	travel: number,
	distanceFraction: number,
	velocityThreshold: number,
	now: number
): boolean
	local distance = distanceAlong(sign, gesture.startX, gesture.lastX)
	local velocityX = freshVelocity(gesture.velocityX, gesture.lastTime, now)
	local velocity = velocityAlong(sign, velocityX)
	return passedThreshold(distance, travel, velocity, distanceFraction, velocityThreshold)
end

return {
	DEFAULT_DISTANCE_FRACTION = DEFAULT_DISTANCE_FRACTION,
	DEFAULT_VELOCITY_THRESHOLD = DEFAULT_VELOCITY_THRESHOLD,
	classifyDrag = classifyDrag,
	closeSign = closeSign,
	distanceAlong = distanceAlong,
	freshVelocity = freshVelocity,
	openSign = openSign,
	passedThreshold = passedThreshold,
	progress = progress,
	resolveThresholds = resolveThresholds,
	shouldCommit = shouldCommit,
	velocityAlong = velocityAlong,
}
