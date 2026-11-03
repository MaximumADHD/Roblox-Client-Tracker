--[[
	Orbit a camera around a look-at on a looping 0..1 playhead.

	Keys are yaw/pitch in degrees relative to a +Z frontal shot. Segments are
	Catmull-Rom splined (not linearly interpolated).

	Sign convention: positive yaw orbits to the subject's left, positive pitch
	lifts the camera above the subject so the shot looks down. Negative pitch
	is the low hero angle. Every preset here uses non-negative pitch.
]]

export type Key = {
	alpha: number,
	yawDegrees: number,
	pitchDegrees: number,
}

export type PathName = "static" | "subtle" | "closeup" | "fullOrbit"
export type Framing = "standing" | "face"

local function wrap01(alpha: number): number
	if alpha < 0 then
		return 0
	end
	if alpha > 1 then
		return alpha - math.floor(alpha)
	end
	return alpha
end

local function catmull(p0: number, p1: number, p2: number, p3: number, t: number): number
	local t2 = t * t
	local t3 = t2 * t
	return 0.5 * ((2 * p1) + (-p0 + p2) * t + (2 * p0 - 5 * p1 + 4 * p2 - p3) * t2 + (-p0 + 3 * p1 - 3 * p2 + p3) * t3)
end

local function wrappedKey(keys: { Key }, index: number): Key
	local n = #keys
	return keys[((index - 1) % n) + 1]
end

local function sampleSegment(keys: { Key }, fromIndex: number, toIndex: number, u: number): (number, number)
	local n = #keys
	local p0 = if n >= 3 then wrappedKey(keys, fromIndex - 1) else keys[fromIndex]
	local p1 = keys[fromIndex]
	local p2 = keys[toIndex]
	local p3 = if n >= 3 then wrappedKey(keys, toIndex + 1) else keys[toIndex]
	return catmull(p0.yawDegrees, p1.yawDegrees, p2.yawDegrees, p3.yawDegrees, u),
		catmull(p0.pitchDegrees, p1.pitchDegrees, p2.pitchDegrees, p3.pitchDegrees, u)
end

local function sampleKeys(keys: { Key }, alpha: number): (number, number)
	if #keys == 0 then
		return 0, 0
	end
	if #keys == 1 then
		return keys[1].yawDegrees, keys[1].pitchDegrees
	end
	local t = wrap01(alpha)
	local first = keys[1]
	local last = keys[#keys]
	if t <= first.alpha then
		return first.yawDegrees, first.pitchDegrees
	end
	if t >= last.alpha then
		local span = 1 - last.alpha
		if span <= 0 then
			return last.yawDegrees, last.pitchDegrees
		end
		return sampleSegment(keys, #keys, 1, (t - last.alpha) / span)
	end
	for i = 1, #keys - 1 do
		local a = keys[i]
		local b = keys[i + 1]
		if t <= b.alpha then
			local span = b.alpha - a.alpha
			local u = if span > 0 then (t - a.alpha) / span else 0
			return sampleSegment(keys, i, i + 1, u)
		end
	end
	return last.yawDegrees, last.pitchDegrees
end

local function cframeAroundLookAt(lookAt: Vector3, distance: number, yawDegrees: number, pitchDegrees: number): CFrame
	-- Pitch is negated because a right-handed rotation about +X sends
	-- (0, 0, distance) to (0, -sin, cos) — positive pitch would put the camera
	-- below the subject. Negating makes positive mean "above, looking down",
	-- which is the sign every preset and frameCamera.emptyFit assume.
	local offset = (CFrame.Angles(0, math.rad(yawDegrees), 0) * CFrame.Angles(-math.rad(pitchDegrees), 0, 0)):VectorToWorldSpace(
		Vector3.new(0, 0, distance)
	)
	return CFrame.lookAt(lookAt + offset, lookAt)
end

local function eval(lookAt: Vector3, distance: number, keys: { Key }, alpha: number): CFrame
	local yaw, pitch = sampleKeys(keys, alpha)
	return cframeAroundLookAt(lookAt, distance, yaw, pitch)
end

local EMOTE_ORBIT: { Key } = {
	{ alpha = 0, yawDegrees = 0, pitchDegrees = 0 },
	{ alpha = 0.35, yawDegrees = 8, pitchDegrees = 4 },
	{ alpha = 0.7, yawDegrees = -6, pitchDegrees = 2 },
	{ alpha = 1, yawDegrees = 0, pitchDegrees = 0 },
}

local FULL_ORBIT: { Key } = {
	{ alpha = 0, yawDegrees = 0, pitchDegrees = 12 },
	{ alpha = 1, yawDegrees = 360, pitchDegrees = 12 },
}

local STATIC: { Key } = {
	{ alpha = 0, yawDegrees = 0, pitchDegrees = 0 },
}

local PATHS: { [PathName]: { Key } } = {
	static = STATIC,
	subtle = EMOTE_ORBIT,
	closeup = EMOTE_ORBIT,
	fullOrbit = FULL_ORBIT,
}

local function resolve(name: string?): { Key }
	if name == "static" or name == "subtle" or name == "closeup" or name == "fullOrbit" then
		return PATHS[name]
	end
	-- Default is subtle, which is EMOTE_ORBIT. PATHS has an indexer type, so a
	-- dotted lookup here would not typecheck.
	return EMOTE_ORBIT
end

-- closeup reuses the subtle orbit; AvatarMoment seeds a face-sized look-at / distance.
local function framingFor(name: string?): Framing
	if name == "closeup" then
		return "face"
	end
	return "standing"
end

return {
	eval = eval,
	cframeAroundLookAt = cframeAroundLookAt,
	sampleKeys = sampleKeys,
	resolve = resolve,
	framingFor = framingFor,
	EMOTE_ORBIT = EMOTE_ORBIT,
	FULL_ORBIT = FULL_ORBIT,
	STATIC = STATIC,
}
