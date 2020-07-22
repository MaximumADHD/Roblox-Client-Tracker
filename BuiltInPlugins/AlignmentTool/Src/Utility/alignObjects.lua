local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent
local plugin = Plugin.Parent

local DraggerFramework = Plugin.Packages.DraggerFramework
local JointMaker = require(DraggerFramework.Utility.JointMaker)

local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)
local getAlignableObjects = require(Plugin.Src.Utility.getAlignableObjects)
local getBoundingBoxes = require(Plugin.Src.Utility.getBoundingBoxes)

local function getAxesMask(axes)
	return Vector3.new(
		axes.WorldX and 1 or 0,
		axes.WorldY and 1 or 0,
		axes.WorldZ and 1 or 0
	)
end

local function areJointsEnabled()
	return plugin:GetJoinMode() ~= Enum.JointCreationMode.None
end

--[[
	Align multiple objects on the specified axes.

	Axes are passed as a table with booleans WorldX, WorldY, and WorldZ.
	Omitting an axis from the table and setting it to false are equivalent.

	The mode determines whether objects are aligned on their centers, or on the
	minimum/maximum sides of their respective bounding boxes. The mode also
	determines the edge of the selection bounds to use as the alignment target.
]]
return function(objects, axes, mode, target)
	if #objects == 0 then
		return
	end

	local boundingBoxOffset, boundingBoxSize, objectBoundingBoxMap = getBoundingBoxes(objects)
	local axesMask = getAxesMask(axes)

	local function translateObject(object, offset)
		local translation = offset * axesMask
		if object:IsA("BasePart") then
			object.CFrame = object.CFrame + translation
		elseif object:IsA("Model") then
			object:TranslateBy(translation)
		end
	end

	local function adjustOffset(offset, size)
		if mode == AlignmentMode.Center then
			return offset
		elseif mode == AlignmentMode.Min then
			return offset - size / 2
		elseif mode == AlignmentMode.Max then
			return offset + size / 2
		end
	end

	local targetOffset

	if target ~= nil then
		local targetBoundingBox = objectBoundingBoxMap[target]
		assert(targetBoundingBox, "Should have bounding box for target")
		if targetBoundingBox ~= nil then
			targetOffset = adjustOffset(targetBoundingBox.offset, targetBoundingBox.size)
		end

		-- Remove the target from the list of objects, since it serves as a
		-- reference only and should not be transformed or modified.
		local targetIndex = table.find(objects, target)
		if targetIndex then
			table.remove(objects, targetIndex)
		end
	else
		targetOffset = adjustOffset(boundingBoxOffset, boundingBoxSize)
	end

	for _, object in ipairs(objects) do
		local _, allParts = getAlignableObjects({object})
		assert(#allParts, "Missing parts for alignable object")

		local jointMaker = JointMaker.new()
		jointMaker:pickUpParts(allParts)
		jointMaker:breakJointsToOutsiders()

		local objectBoundingBox = objectBoundingBoxMap[object]
		assert(objectBoundingBox, "Missing bounding box for object")

		local objectOffset = adjustOffset(objectBoundingBox.offset, objectBoundingBox.size)
		local offset = targetOffset - objectOffset
		translateObject(object, offset)

		if areJointsEnabled() then
			local jointPairs = jointMaker:computeJointPairs()
			jointPairs:createJoints()
		end
		jointMaker:putDownParts()
	end
end
