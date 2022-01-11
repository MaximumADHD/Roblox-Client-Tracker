--[[
	Utility functions for paths.
]]

local Plugin = script.Parent.Parent.Parent
local Constants = require(Plugin.Src.Util.Constants)

local FFlagFixPathEvaluation = game:DefineFastFlag("ACEFixPathEvaluation", false)

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
	local scale = FFlagFixPathEvaluation and Constants.COMPONENT_PATH_BASE_SCALE or 0.1

	local value = 0
	for _, pathPart in ipairs(path) do
		local componentPathValue = Constants.COMPONENT_PATH_VALUE[pathPart]
		-- Ignore path parts that are not found (if the path is absolute, and not relative to a track)
		if componentPathValue then
			value = value + scale * componentPathValue
			scale = scale * (FFlagFixPathEvaluation and Constants.COMPONENT_PATH_BASE_SCALE or scale)
		end
	end
	return value
end

return PathUtils
