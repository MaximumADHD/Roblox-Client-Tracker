--[[
	Utility functions for paths.
]]

local Plugin = script.Parent.Parent.Parent
local Cryo = require(Plugin.Packages.Cryo)
local Constants = require(Plugin.Src.Util.Constants)

export type Path = { string }

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
	local scale = Constants.COMPONENT_PATH_BASE_SCALE

	local value = 0
	for _, pathPart in ipairs(path) do
		local componentPathValue = Constants.COMPONENT_PATH_VALUE[pathPart]
		-- Ignore path parts that are not found (if the path is absolute, and not relative to a track)
		if componentPathValue then
			value = value + scale * componentPathValue
			scale = scale * Constants.COMPONENT_PATH_BASE_SCALE
		end
	end
	return value
end

function PathUtils.equals(pathA, pathB)
	if not pathA or not pathB or #pathA ~= #pathB then
		return false
	end

	for i, part in ipairs(pathA) do
		if part ~= pathB[i] then
			return false
		end
	end

	return true
end

-- Returns the index of path if is in the list of paths, nil if not.
function PathUtils.findPath(paths, path)
	if not paths or not path then
		return nil
	end

	for i, p in ipairs(paths) do
		if PathUtils.equals(p, path) then
			return i
		end
	end

	return nil
end

-- Returns the index of path if is in the list of paths, nil if not.
function PathUtils.removePath(paths, path)
	local index = PathUtils.findPath(paths, path)

	if index then
		return Cryo.List.removeIndex(paths, index)
	end

	return paths
end

return PathUtils
