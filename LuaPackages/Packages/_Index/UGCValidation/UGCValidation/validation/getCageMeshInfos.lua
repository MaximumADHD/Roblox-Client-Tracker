--!strict

local UGCValidateCageMeshInfosFix = game:DefineFastFlag("UGCValidateCageMeshInfosFix", false)

local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local CAGE_NAMES: { string } = { "InnerCage", "OuterCage" }
local CAGE_MESH_NAMES: { string } = { "ReferenceMeshId", "CageMeshId" }
local MISSING_CAGES_ERRORS: { string } = {
	Analytics.ErrorType.validateLayeredClothingAccessory_NoInnerCageId,
	Analytics.ErrorType.validateLayeredClothingAccessory_NoOuterCageId,
}
local MESSAGE_MISSING_MESH =
	"Missing %s (i.e. invalid %s) on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n"
local MESSAGE_FAILED_MESH = "Failed to %s for layered clothing accessory '%s'. Make sure mesh exists and try again."

local function getCageMeshInfos(
	instance: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?, { Types.MeshInfo }?)
	-- returns success, issues, cageinfos

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
	local results = {}
	local issues = {}

	if not wrapLayer then
		return false, { "Missing wraplayer" }, nil
	end

	-- Preemtively get the contentIDs since dynamic property access using CAGE_MESH_NAMES is unsafe
	local meshContentIDs: { string } = { wrapLayer.ReferenceMeshId, wrapLayer.CageMeshId }

	for ind, cageMeshName in CAGE_MESH_NAMES do
		local cageMeshInfo = {
			fullName = string.format("%s %s", wrapLayer:GetFullName(), CAGE_NAMES[ind]),
			fieldName = cageMeshName,
			contentId = meshContentIDs[ind],
			context = instance.Name,
		} :: Types.MeshInfo

		local hasCageMeshContent: boolean = cageMeshInfo.contentId ~= "" and cageMeshInfo.contentId ~= nil
		if not hasCageMeshContent then
			Analytics.reportFailure(MISSING_CAGES_ERRORS[ind])
			table.insert(issues, string.format(MESSAGE_MISSING_MESH, CAGE_NAMES[ind], cageMeshName, instance.Name))
			continue
		end

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			local getMeshSuccess, cageEditableMesh = getEditableMeshFromContext(
				if UGCValidateCageMeshInfosFix then wrapLayer else handle,
				cageMeshName,
				validationContext
			)

			if not getMeshSuccess then
				table.insert(issues, string.format(MESSAGE_FAILED_MESH, CAGE_NAMES[ind], instance.Name))
				continue
			else
				cageMeshInfo.editableMesh = cageEditableMesh
			end
		end

		table.insert(results, cageMeshInfo)
	end

	if #issues > 0 then
		return false, issues, nil
	end

	return true, nil, results
end

return getCageMeshInfos
