local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent
local plugin = Plugin.Parent

local getFFlagFixAlignToolMissingTargetObject = require(Plugin.Src.Flags.getFFlagFixAlignToolMissingTargetObject)
local getFFlagBoundingBoxRefactor = require(Plugin.Src.Flags.getFFlagBoundingBoxRefactor)
local getFFlagAlignInLocalSpace = require(Plugin.Src.Flags.getFFlagAlignInLocalSpace)

local DraggerFramework = Plugin.Packages.DraggerFramework
local BoundingBox = require(DraggerFramework.Utility.BoundingBox)
local JointMaker = require(DraggerFramework.Utility.JointMaker)

local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)
local AlignmentSpace = require(Plugin.Src.Utility.AlignmentSpace)
local getAlignableObjects = require(Plugin.Src.Utility.getAlignableObjects)
local getBoundingBoxes = require(Plugin.Src.Utility.getBoundingBoxes) -- TODO: remove when removing FFlagBoundingBoxRefactor
local getDefaultBasisForObjects = require(Plugin.Src.Utility.getDefaultBasisForObjects)

local getAxesMask
if getFFlagAlignInLocalSpace() then
	function getAxesMask(axes)
		return Vector3.new(
			axes.X and 1 or 0,
			axes.Y and 1 or 0,
			axes.Z and 1 or 0
		)
	end
else
	function getAxesMask(axes)
		return Vector3.new(
			axes.WorldX and 1 or 0,
			axes.WorldY and 1 or 0,
			axes.WorldZ and 1 or 0
		)
	end
end

local function areJointsEnabled()
	return plugin:GetJoinMode() ~= Enum.JointCreationMode.None
end

if getFFlagAlignInLocalSpace() then
	--[[
		Align BaseParts and Models in global or local coordinates, on one or more axes.

		The mode determines whether each object is aligned with respect to its center,
		minimum, or maximum extent. It also determines the side of the target bounding
		box to align relative to.

		Params:
			table objects: Array of BasePart and Model instances.
			string space: Coordinate frame to align in (World or Local).
			table axes: Axes to align in. Map of string (X, Y, Z) -> boolean.
			string mode: Side to align to (Min, Center, or Max).
			Instance target: Optional. Part or Model to align relative to. If nil, the
				bounding box for all the objects is used.
	]]
	return function(objects, space, axes, mode, target)
		if #objects == 0 then
			return
		end

		local basisCFrame
		if space == AlignmentSpace.Local then
			basisCFrame = getDefaultBasisForObjects(target and {target} or objects)
		else
			basisCFrame = CFrame.new()
		end

		local boundingBoxOffset, boundingBoxSize, objectBoundingBoxes =
			BoundingBox.fromObjectsComputeAll(objects, basisCFrame)

		local targetCenter, targetSize

		if target then
			local targetBoundingBox = objectBoundingBoxes[target]
			assert(targetBoundingBox, "Missing bounding box for target")
			targetCenter = basisCFrame:VectorToWorldSpace(targetBoundingBox.offset)
			targetSize = targetBoundingBox.size
		else
			targetCenter = basisCFrame:VectorToWorldSpace(boundingBoxOffset)
			targetSize = boundingBoxSize
		end

		for _, object in ipairs(objects) do
			if object == target then
				continue
			end

			local _, allParts = getAlignableObjects({object})
			assert(#allParts, "Missing parts for alignable object")

			local jointMaker = JointMaker.new()
			jointMaker:pickUpParts(allParts)
			jointMaker:breakJointsToOutsiders()

			local objectBoundingBox = objectBoundingBoxes[object]
			assert(objectBoundingBox, "Missing bounding box for object")

			local objectCenter = basisCFrame:VectorToWorldSpace(objectBoundingBox.offset)
			local localOffset = basisCFrame:VectorToObjectSpace(targetCenter - objectCenter)

			if mode == AlignmentMode.Min then
				localOffset = localOffset - (targetSize - objectBoundingBox.size) / 2
			elseif mode == AlignmentMode.Max then
				localOffset = localOffset + (targetSize - objectBoundingBox.size) / 2
			end

			local alignmentOffset = basisCFrame:VectorToWorldSpace(localOffset * getAxesMask(axes))
			if object:IsA("BasePart") then
				object.CFrame = object.CFrame + alignmentOffset
			elseif object:IsA("Model") then
				object:TranslateBy(alignmentOffset)
			end

			if areJointsEnabled() then
				local jointPairs = jointMaker:computeJointPairs()
				jointPairs:createJoints()
			end
			jointMaker:putDownParts()
		end
	end
else
	return function(objects, axes, mode, target)
		if #objects == 0 then
			return
		end

		local boundingBoxOffset, boundingBoxSize, objectBoundingBoxMap
		if getFFlagBoundingBoxRefactor() then
			boundingBoxOffset, boundingBoxSize, objectBoundingBoxMap =
				BoundingBox.fromObjectsComputeAll(objects)
		else
			boundingBoxOffset, boundingBoxSize, objectBoundingBoxMap = getBoundingBoxes(objects)
		end
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

			if not getFFlagFixAlignToolMissingTargetObject() then
				-- Remove the target from the list of objects, since it serves as a
				-- reference only and should not be transformed or modified.
				local targetIndex = table.find(objects, target)
				if targetIndex then
					table.remove(objects, targetIndex)
				end
			end
		else
			targetOffset = adjustOffset(boundingBoxOffset, boundingBoxSize)
		end

		for _, object in ipairs(objects) do
			if getFFlagFixAlignToolMissingTargetObject() then
				if object == target then
					continue
				end
			end

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
end