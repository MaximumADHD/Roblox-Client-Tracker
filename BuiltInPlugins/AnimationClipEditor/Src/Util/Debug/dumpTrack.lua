local Plugin = script.Parent.Parent.Parent.Parent
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local Constants = require(Plugin.Src.Util.Constants)
local GetFFlagCurveEditor = require(Plugin.LuaFlags.GetFFlagCurveEditor)

-- Traverses a track, calling a func on each of its leaf components
local function traverseComponents(track, func)
	local function traverseComponentsRec(track, name, func)
		if track.Components then
			for componentName, component in pairs(track.Components) do
				traverseComponentsRec(component, (name ~= "" and (name .. ".") or "") .. componentName, func)
			end
		else
			func(track, name)
		end
	end

	traverseComponentsRec(track, "", func)
end

-- Return the maximum tick available
local function getTrackExtents(track)
	local maxTick = 0

	traverseComponents(track, function(t, trackName)
		if t.Keyframes and #t.Keyframes > 0 then
			maxTick = math.max(maxTick, t.Keyframes[#t.Keyframes])
		end
	end)

	return maxTick
end

local function format(v)
	return tostring(math.round(v * 10000) / 10000)
end

-- Creates a map of values (as strings so that they can be concatenated later)
local function getValues(track, timestamp, defaultEAO)
	local values = {}
	if track.Type == Constants.TRACK_TYPES.Facs then
		values = {format(KeyframeUtils.getValue(track, timestamp, defaultEAO))}
	elseif track.Type == Constants.TRACK_TYPES.CFrame then
		local cFrame = KeyframeUtils.getValue(track, timestamp, defaultEAO)
		local rX, rY, rZ
		if not GetFFlagCurveEditor() then
			rX, rY, rZ = cFrame:ToEulerAngles(defaultEAO)
		else
			rX, rY, rZ = cFrame:ToEulerAnglesXYZ()
		end
		values = {format(cFrame.X), format(cFrame.Y), format(cFrame.Z),
			format(math.deg(rX)), format(math.deg(rY)), format(math.deg(rZ))}
	end
	return values
end

local function makeRow(tick, values)
	local s = (format(tick / Constants.TICK_FREQUENCY) .. ",")
	return s .. table.concat(values, ",") .. "\n"
end

-- Dumps the value of a track as CSV by sampling the curve
local function dump(track, trackName, defaultEulerAnglesOrder)
	local samplingRate = 20
	local maxTick = getTrackExtents(track)

	local headers
	if track.Type == Constants.TRACK_TYPES.Facs then
		headers = {trackName or "FACS", "Value"}
	else
		headers = {trackName or "CFrame", "Px1", "Py1", "Pz1", "Rx1", "Ry1", "Rz1"}
	end

	local s = "\n" .. table.concat(headers, ",") .. "\n"

	for t = 0, maxTick, samplingRate do
		local values = getValues(track, t, defaultEulerAnglesOrder)
		s = s .. makeRow(t, values)
	end

	print(s)
end

return dump
