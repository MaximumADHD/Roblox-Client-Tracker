local Plugin = script.Parent.Parent.Parent.Parent
local KeyframeUtils = require(Plugin.Src.Util.KeyframeUtils)
local Constants = require(Plugin.Src.Util.Constants)

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

-- Return the maximum tick available and the names of the tracks (sorted)
local function getTrackInfo(track)
    local maxTick = 0
    local trackNames = {}

    traverseComponents(track, function(t, trackName)
        for tick, _ in pairs(t.Data) do
            if tick > maxTick then
                maxTick = tick
            end
		end
		if t.Type == Constants.TRACK_TYPES.Facs then
			trackName = "FACS"
		end
        table.insert(trackNames, trackName)
    end)
    table.sort(trackNames)

    return maxTick, trackNames
end

-- Creates a header with the column (track) names
local function makeHeader(trackNames)
    return "Timestamp," .. table.concat(trackNames, ",") .. "\n"
end

-- Creates a map of values (as strings so that they can be concatenated later)
local function getValues(track, timestamp)
	local values = {}
	if track.Type == Constants.TRACK_TYPES.Facs then
		values["FACS"] = tostring(KeyframeUtils.getValue(track, timestamp))
	else
	    traverseComponents(track, function(tr, name)
	        values[name] = tostring(KeyframeUtils.getValue(tr, timestamp))
	    end)
	end
    return values
end

local function makeRow(tick, trackNames, values)
    local s = tostring(tick / Constants.TICK_FREQUENCY)
    for _, trackName in pairs(trackNames) do
        s = s .. "," .. values[trackName]
    end
    return s .. "\n"
end

-- Dumps the value of a track as CSV by sampling the curve every 10 ticks
local function dump(track)
    -- Find the max tick across all components, and the track names
    local maxTick, trackNames = getTrackInfo(track)

    local s = makeHeader(trackNames)

    for t = 0, maxTick, 10 do
        local values = getValues(track, t)
        s = s .. makeRow(t, trackNames, values)
    end

    print(s)
end

return dump