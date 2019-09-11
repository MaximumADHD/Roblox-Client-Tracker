--[[
	A set of utilities for interfacing between skeletons and the AnimationClip editor.
]]

local Plugin = script.Parent.Parent.Parent
local buildHierarchy = require(Plugin.Src.Util.buildHierarchy)
local SkeletonUtils = {}

-- Builds a table hierarchy from a set of bone names and parents.
function SkeletonUtils.buildSkeletonHierarchy(names, parents)
	local children = {}
	for index, bone in ipairs(names) do
		local parent = parents[index]
		local parentName
		if parent == 0 then
			children[bone] = {}
		else
			parentName = names[parent]
			if children[parentName] then
				table.insert(children[parentName], bone)
			else
				children[parentName] = {bone}
			end
		end
	end
	local root = names[1]
	return {
		[root] = buildHierarchy(root, function(bone)
			return children[bone]
		end)
	}
end

-- Given a set of bone names and tracks, returns the bone names
-- which are not associated with a track.
function SkeletonUtils.getUnusedSkeletonTracks(names, tracks)
	local unusedTracks = {}
	for _, bone in ipairs(names) do
		local unused = true
		for _, track in ipairs(tracks) do
			if track.Name == bone then
				unused = false
				break
			end
		end
		if unused then
			table.insert(unusedTracks, {
				Name = bone,
				Instance = "Root",
			})
		end
	end

	table.sort(unusedTracks, function(first, second)
		return first.Name < second.Name
	end)
	return unusedTracks
end

return SkeletonUtils