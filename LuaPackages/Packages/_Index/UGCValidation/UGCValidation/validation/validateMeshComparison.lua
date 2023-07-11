--!strict

local root = script.Parent.Parent

local ParseContentIds = require(root.util.ParseContentIds)
local getMeshMinMax = require(root.util.getMeshMinMax)

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
	upperTol: number,
	isServer: boolean
): (boolean, { string }?)
	local success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(mesh.id, isServer, mesh.scale)
	if not success then
		return success, failureReasons
	end
	local meshMin = meshMinOpt :: Vector3
	local meshMax = meshMaxOpt :: Vector3

	local successOther, failureReasonsOther, meshMinOptOther, meshMaxOptOther =
		getMeshMinMax(otherMesh.id, isServer, otherMesh.scale)
	if not successOther then
		return successOther, failureReasonsOther
	end
	local otherMeshMin = meshMinOptOther :: Vector3
	local otherMeshMax = meshMaxOptOther :: Vector3

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
