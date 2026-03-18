--[[
	returns the in-game scale of the MeshPart's MeshId based on the value of the MeshPart's Size property
]]

local root = script.Parent.Parent
local Constants = require(root.Constants)
local Types = require(root.util.Types)
local getMeshInfo = require(root.util.getMeshInfo)
local getMeshMinMax = require(root.util.getMeshMinMax)
local getExpectedPartSize = require(root.util.getExpectedPartSize)

local function getRenderMeshScale(
	meshPart: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?, Vector3?)
	local success, failureReasons, meshInfoOpt
	success, failureReasons, meshInfoOpt =
		getMeshInfo(meshPart, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)

	if not success then
		return success, failureReasons
	end
	local meshInfo = meshInfoOpt :: Types.MeshInfo

	local meshMinOpt, meshMaxOpt
	success, failureReasons, meshMinOpt, meshMaxOpt = getMeshMinMax(meshInfo, validationContext)
	if not success then
		return success, failureReasons
	end
	local meshBounds = (meshMaxOpt :: Vector3) - (meshMinOpt :: Vector3)
	local partSize = getExpectedPartSize(meshPart, validationContext)
	local scale = partSize / meshBounds

	return true, nil, scale
end

return getRenderMeshScale
