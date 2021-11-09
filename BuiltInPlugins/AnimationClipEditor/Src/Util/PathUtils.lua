--[[
	Utility functions for paths.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local PathUtils = {}

function PathUtils.getRelativePath(path)
	local relPath = {}
	for i, part in ipairs(path) do
		if i > 1 then
			table.insert(relPath, part)
		end
	end
	return relPath
end

-- Returns a number value based on the path that can be used to compare tracks.
-- This value typically is added to the track index to get a unique value for each
-- component track
function PathUtils.getPathValue(path)
	local scale = 0.1  -- Change this to 0.01 if any value of Constants.COMPONENT_PATH_VALUE is greater than 9

	local value = 0
	for _, pathPart in ipairs(path) do
		local componentPathValue = Constants.COMPONENT_PATH_VALUE[pathPart]
		-- Ignore path parts that are not found (if the path is absolute, and not relative to a track)
		if componentPathValue then
			value = value + scale * componentPathValue
			scale = scale * scale
		end
	end
	return value
end

return PathUtils
