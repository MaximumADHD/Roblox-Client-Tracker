local Workspace = game:GetService("Workspace")

local Plugin = script.Parent.Parent.Parent

local AlignmentMode = require(Plugin.Src.Utility.AlignmentMode)
local getBoundingBoxes = require(Plugin.Src.Utility.getBoundingBoxes)

local function getAxesMask(axes)
	return Vector3.new(
		axes.WorldX and 1 or 0,
		axes.WorldY and 1 or 0,
		axes.WorldZ and 1 or 0
	)
end

--[[
	Align multiple objects on the specified axes.

	Axes are passed as a table with booleans WorldX, WorldY, and WorldZ.
	Omitting an axis from the table and setting it to false are equivalent.

	The mode determines whether objects are aligned on their centers, or on the
	minimum/maximum sides of their respective bounding boxes.
]]
return function(objects, axes, mode)
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

	for _, object in ipairs(objects) do
		local objectBoundingBox = objectBoundingBoxMap[object]
		assert(objectBoundingBox, "Missing bounding box for object")

		local offset = boundingBoxOffset - objectBoundingBox.offset
		if mode ~= AlignmentMode.Center then
			local extent = objectBoundingBox.size / 2
			if mode == AlignmentMode.Max then
				extent = -extent
			end
			offset = offset + extent
		end

		translateObject(object, offset)
	end
end
