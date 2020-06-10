local Workspace = game:GetService("Workspace")

--[[
	Compute the AABB for each object, and for the entire group of objects.

	Supported objects are BaseParts, Models, and Attachments.
]]
return function(objects)
	local objectBoundingBoxMap = {}

	local xmin, xmax = math.huge, -math.huge
	local ymin, ymax = math.huge, -math.huge
	local zmin, zmax = math.huge, -math.huge

	local function updateBoundingBox(cframe, size, object)
		local localCFrame = cframe
		local at = cframe.Position
		local inverse = cframe:Inverse()
		local x = size * inverse.RightVector
		local y = size * inverse.UpVector
		local z = size * inverse.LookVector
		local sx = math.abs(x.x) + math.abs(x.y) + math.abs(x.z)
		local sy = math.abs(y.x) + math.abs(y.y) + math.abs(y.z)
		local sz = math.abs(z.x) + math.abs(z.y) + math.abs(z.z)

		local xmin2 = at.x - 0.5 * sx
		local xmax2 = at.x + 0.5 * sx
		local ymin2 = at.y - 0.5 * sy
		local ymax2 = at.y + 0.5 * sy
		local zmin2 = at.z - 0.5 * sz
		local zmax2 = at.z + 0.5 * sz

		xmin = math.min(xmin, xmin2)
		xmax = math.max(xmax, xmax2)
		ymin = math.min(ymin, ymin2)
		ymax = math.max(ymax, ymax2)
		zmin = math.min(zmin, zmin2)
		zmax = math.max(zmax, zmax2)

		local offset = Vector3.new(
			0.5 * (xmin2 + xmax2),
			0.5 * (ymin2 + ymax2),
			0.5 * (zmin2 + zmax2)
		)
		local size = Vector3.new(
			xmax2 - xmin2,
			ymax2 - ymin2,
			zmax2 - zmin2
		)

		objectBoundingBoxMap[object] = {
			offset = offset,
			size = size,
		}
	end

	local terrain = Workspace.Terrain

	for _, object in ipairs(objects) do
		if object:IsA("BasePart") and object ~= terrain then
			updateBoundingBox(object.CFrame, object.Size, object)
		elseif object:IsA("Model") then
			local orientation, size = object:GetBoundingBox()
			updateBoundingBox(orientation, size, object)
		end
	end

	local boundingBoxOffset = Vector3.new(
		0.5 * (xmin + xmax),
		0.5 * (ymin + ymax),
		0.5 * (zmin + zmax)
	)

	local boundingBoxSize = Vector3.new(
		xmax - xmin,
		ymax - ymin,
		zmax - zmin
	)

	return boundingBoxOffset, boundingBoxSize, objectBoundingBoxMap
end
