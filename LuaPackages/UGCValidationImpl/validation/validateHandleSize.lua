local root = script.Parent.Parent
local valueToString = require(root.util.valueToString)
local getMeshSize = require(root.util.getMeshSize)

local MARGIN_OF_ERROR = 0.1

local function validateHandleSize(handle: BasePart, meshId: string, meshScale: Vector3): (boolean, {string}?)
	local success, meshSize = pcall(getMeshSize, meshId)

	if not success then
		return false, { "Failed to read mesh" }
	end

	local scaledMeshSize = meshSize * meshScale

	-- allow handle.Size to be within MARGIN_OF_ERROR of meshSize or larger
	-- this is necessary since we're comparing floats
	-- the size only needs to be a rough equivalent for thumbnailing
	if handle.Size.X + MARGIN_OF_ERROR < scaledMeshSize.X
	or handle.Size.Y + MARGIN_OF_ERROR < scaledMeshSize.Y
	or handle.Size.Z + MARGIN_OF_ERROR < scaledMeshSize.Z then
		return false, {
			string.format("Accessory Handle size should be at least the size of the mesh ( %s )", valueToString(scaledMeshSize))
		}
	end

	return true
end

return validateHandleSize
