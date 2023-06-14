--!strict

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local ParseContentIds = require(root.util.ParseContentIds)

local function getVerts(id: string): (boolean, { string }?, any?)
	local success, verts = pcall(function()
		return UGCValidationService:GetMeshVerts(id)
	end)

	if (not success) or not verts or (0 == #verts) then
		return false, { "Failed to read mesh: " .. tostring(id) }
	end
	return true, nil, verts
end

local function calculateMinMax(currMin, currMax, candidateMin, candidateMax)
	local function compare(a, b, func)
		if a and b then
			return Vector3.new(func(b.X, a.X), func(b.Y, a.Y), func(b.Z, a.Z))
		end
		return a or b
	end
	return compare(currMin, candidateMin, math.min), compare(currMax, candidateMax, math.max)
end

local function getBoundsInfo(verts: any, scale: Vector3)
	assert(verts and #verts > 0)

	local min = nil
	local max = nil

	for _, vertPos in pairs(verts) do
		local scaledVert = vertPos * scale
		min, max = calculateMinMax(min, max, scaledVert, scaledVert)
	end
	return min, max
end

-- mesh and otherMesh are both {id: string, scale: Vector3, errorContext: string}
--
-- for all axis extents, (mesh extents - otherMesh extents) must be no larger than upperTol and no smaller than lowerTol
-- e.g upperTol=3, lowerTol=-1,
-- mesh max x = 4, other mesh max x = 2 -> diff is 2 -> true as 2 is between -1 and 3
-- mesh max x = 4, other mesh max x = 6 -> diff is -2 -> false as -2 is not between -1 and 3

-- on the negative extent axis the boundaries are negated e.g
-- mesh min x = -4, other mesh min x = -2 -> diff is -2 -> true as -2 is between 1 and -3
-- mesh min x = -4, other mesh min x = -6 -> diff is 2 -> false as 2 is not between 1 and -3

type MeshInputData = { id: string, scale: Vector3, context: string }
local function validateMeshComparison(
	mesh: MeshInputData,
	otherMesh: MeshInputData,
	lowerTol: number,
	upperTol: number
): (boolean, { string }?)
	local success, failureReasons, resultMesh = getVerts(mesh.id)
	if (not success) or not resultMesh then
		return success, failureReasons
	end

	local successOther, failureReasonsOther, resultOtherMesh = getVerts(otherMesh.id)
	if (not successOther) or not resultOtherMesh then
		return successOther, failureReasonsOther
	end

	local meshMin, meshMax = getBoundsInfo(resultMesh, mesh.scale)
	local otherMeshMin, otherMeshMax = getBoundsInfo(resultOtherMesh, otherMesh.scale)

	for _, dimension in pairs({ "X", "Y", "Z" }) do
		local function format()
			local function getContext(data: MeshInputData)
				local result = (data.context and (data.context .. " mesh ") or "mesh ")
				result = result .. ParseContentIds.tryGetAssetIdFromContentId(data.id)
				return result
			end

			local context = getContext(mesh)
			local otherContext = getContext(otherMesh)

			return string.format("%s is different in size to %s", context, otherContext),
				string.format("%s max/min extent on any axis cannot be more than %.2f larger", context, upperTol),
				string.format("%s max/min extent on any axis cannot be more than %.2f smaller", context, -lowerTol)
		end

		local function check(diff: number, greaterThan: number, lessThan: number): boolean
			return diff >= greaterThan and diff <= lessThan
		end

		if
			not check((meshMin :: any)[dimension] - (otherMeshMin :: any)[dimension], -upperTol, -lowerTol)
			or not check((meshMax :: any)[dimension] - (otherMeshMax :: any)[dimension], lowerTol, upperTol)
		then
			return false, { format() }
		end
	end
	return true
end

return validateMeshComparison
