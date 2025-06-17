--[[
	ValidateBodyPartCage.lua iterates over all the render and wrap meshes for body parts and checks that no verts on the
	cage are too far in front of the render mesh
]]

local root = script.Parent.Parent

local UGCValidationService = game:GetService("UGCValidationService")

local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local util = root.util
local Types = require(util.Types)
local pcallDeferred = require(util.pcallDeferred)
local getEditableMeshFromContext = require(util.getEditableMeshFromContext)
local FailureReasonsAccumulator = require(util.FailureReasonsAccumulator)
local getExpectedPartSize = require(util.getExpectedPartSize)
local getMeshInfo = require(util.getMeshInfo)
local AssetCalculator = require(util.AssetCalculator)

local flags = root.flags
local GetFStringUGCValidationMaxCageDistance = require(flags.GetFStringUGCValidationMaxCageDistance)
local getFFlagUGCValidationConsolidateGetMeshInfos = require(root.flags.getFFlagUGCValidationConsolidateGetMeshInfos)
local getFFlagUGCValidationHyperlinksInCageQuality = require(root.flags.getFFlagUGCValidationHyperlinksInCageQuality)

local ValidateAssetBodyPartCages = {}

-- TODO: Remove with FFlagConsolidateGetMeshInfos
local function DEPRECATED_getMeshInfo(
	inst: Instance,
	fieldName: string,
	contentId: string,
	contextName: string,
	validationContext: Types.ValidationContext
): (boolean, Types.MeshInfo)
	local meshInfo = {
		fullName = inst:GetFullName(),
		contentId = contentId,
		fieldName = fieldName,
		context = contextName,
	} :: Types.MeshInfo

	local success, editableMesh = getEditableMeshFromContext(inst, fieldName, validationContext)
	if not success then
		return false, meshInfo
	end

	meshInfo.editableMesh = editableMesh :: EditableMesh

	return true, meshInfo
end

local function validateInternal(
	meshHandle: MeshPart,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local getMeshInfoSuccess, meshInfoErrors, meshInfo
	if getFFlagUGCValidationConsolidateGetMeshInfos() then
		getMeshInfoSuccess, meshInfoErrors, meshInfo =
			getMeshInfo(meshHandle, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)
	else
		getMeshInfoSuccess, meshInfo =
			DEPRECATED_getMeshInfo(meshHandle, "MeshId", meshHandle.MeshId, meshHandle.Name, validationContext)
	end

	if not getMeshInfoSuccess then
		if getFFlagUGCValidationConsolidateGetMeshInfos() then
			return false, meshInfoErrors
		else
			return false, { "Failed to load " .. meshHandle.Name .. "'s render mesh data" }
		end
	end

	local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
	assert(wrapTarget, "Missing WrapTarget child for " .. meshHandle.Name)
	local getWrapTargetCageInfoSuccess, cageInfoErrors, cageInfo
	if getFFlagUGCValidationConsolidateGetMeshInfos() then
		getWrapTargetCageInfoSuccess, cageInfoErrors, cageInfo =
			getMeshInfo(wrapTarget, Constants.MESH_CONTENT_TYPE.OUTER_CAGE, validationContext)
	else
		getWrapTargetCageInfoSuccess, cageInfo = DEPRECATED_getMeshInfo(
			wrapTarget,
			"CageMeshId",
			wrapTarget.CageMeshId,
			wrapTarget.ClassName,
			validationContext
		)
	end

	if not getWrapTargetCageInfoSuccess then
		if getFFlagUGCValidationConsolidateGetMeshInfos() then
			return false, cageInfoErrors
		else
			return false, { "Failed to load " .. meshHandle.Name .. "'s WrapTarget's cage mesh data" }
		end
	end

	local scale = getExpectedPartSize(meshHandle, validationContext)
		/ getExpectedPartSize(meshHandle, validationContext, true)
	local successfullyExecuted, maxCageDistance = pcallDeferred(function()
		return (UGCValidationService :: any):CalculateBodyPartMaxCageDistance(
			(cageInfo :: Types.MeshInfo).editableMesh :: EditableMesh,
			(meshInfo :: Types.MeshInfo).editableMesh :: EditableMesh,
			wrapTarget.CageOrigin,
			scale
		)
	end, validationContext)

	if not successfullyExecuted then
		local errorString =
			`Failed to execute body part max cage distance check. Make sure {meshHandle.Name}'s render mesh and its WrapTarget's cage mesh exist, and try again.`
		if nil ~= validationContext.isServer and validationContext.isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorString)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateBodyPartCage_FailedToExecute, nil, validationContext)
		return false, { errorString }
	end

	if maxCageDistance > GetFStringUGCValidationMaxCageDistance.asNumber() then
		Analytics.reportFailure(
			Analytics.ErrorType.validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"Cage mesh verts referenced in %s.%s.CageMeshId were found that are %.2f studs outside the %s render mesh. %s studs is the maximum. Reduce the size of your cage mesh.",
					meshHandle.Name,
					wrapTarget.Name,
					maxCageDistance,
					meshHandle.Name,
					GetFStringUGCValidationMaxCageDistance.asString()
				),
			}
	end
	return true
end

function ValidateAssetBodyPartCages.validateSingleBodyPart(
	inst: Instance,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local assetInfo = Constants.ASSET_TYPE_INFO[validationContext.assetTypeEnum]

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	if Enum.AssetType.DynamicHead == validationContext.assetTypeEnum then
		return validateInternal(inst :: MeshPart, validationContext)
	else
		for subPartName in pairs(assetInfo.subParts) do
			local meshHandle: MeshPart? = inst:FindFirstChild(subPartName) :: MeshPart
			assert(meshHandle, "expected parts have been checked for existance before calling this function")

			reasonsAccumulator:updateReasons(validateInternal(meshHandle :: MeshPart, validationContext))
		end
	end
	Analytics.recordScriptTime(script.Name, startTime, validationContext)
	return reasonsAccumulator:getFinalResults()
end

function ValidateAssetBodyPartCages.validateFullBody(
	fullBodyAssets: Types.AllBodyParts,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local startTime = tick()

	local partsCFrames = AssetCalculator.calculateAllTransformsForFullBody(fullBodyAssets)

	local testInputInfo = {}
	for _, meshHandle in fullBodyAssets do
		local getMeshInfoSuccess, meshInfoErrors, meshInfo
		if getFFlagUGCValidationConsolidateGetMeshInfos() then
			getMeshInfoSuccess, meshInfoErrors, meshInfo =
				getMeshInfo(meshHandle, Constants.MESH_CONTENT_TYPE.RENDER_MESH, validationContext)
		else
			getMeshInfoSuccess, meshInfo = DEPRECATED_getMeshInfo(
				meshHandle,
				"MeshId",
				(meshHandle :: MeshPart).MeshId,
				meshHandle.Name,
				validationContext
			)
		end

		if not getMeshInfoSuccess then
			if getFFlagUGCValidationConsolidateGetMeshInfos() then
				return false, meshInfoErrors
			else
				return false, { "Failed to load " .. meshHandle.Name .. "'s render mesh data" }
			end
		end

		local wrapTarget = meshHandle:FindFirstChildWhichIsA("WrapTarget")
		assert(wrapTarget, "Missing WrapTarget child for " .. meshHandle.Name)
		local getWrapTargetCageInfoSuccess, cageInfoErrors, cageInfo
		if getFFlagUGCValidationConsolidateGetMeshInfos() then
			getWrapTargetCageInfoSuccess, cageInfoErrors, cageInfo =
				getMeshInfo(wrapTarget, Constants.MESH_CONTENT_TYPE.OUTER_CAGE, validationContext)
		else
			getWrapTargetCageInfoSuccess, cageInfo = DEPRECATED_getMeshInfo(
				wrapTarget,
				"CageMeshId",
				wrapTarget.CageMeshId,
				wrapTarget.ClassName,
				validationContext
			)
		end

		if not getWrapTargetCageInfoSuccess then
			if getFFlagUGCValidationConsolidateGetMeshInfos() then
				return false, cageInfoErrors
			else
				return false, { "Failed to load " .. meshHandle.Name .. "'s WrapTarget's cage mesh data" }
			end
		end

		local scale = getExpectedPartSize(meshHandle :: MeshPart, validationContext)
			/ getExpectedPartSize(meshHandle :: MeshPart, validationContext, true)

		table.insert(testInputInfo, {
			renderMesh = (meshInfo :: Types.MeshInfo).editableMesh,
			outerCage = (cageInfo :: Types.MeshInfo).editableMesh,
			renderMeshTransform = partsCFrames[meshHandle.Name],
			-- outerCageLocalTransform is an offset from the render mesh transform, so if it's identity then the cage has the same world space transform as the render mesh
			outerCageLocalTransform = wrapTarget.CageOrigin,
			scale = scale,
			name = meshHandle.Name,
		})
	end

	local successfullyExecuted, maxCageDistance, partCageWithMaxCageDistance = pcallDeferred(function()
		return (UGCValidationService :: any):CalculateBodyMaxCageDistance(testInputInfo)
	end, validationContext)

	Analytics.recordScriptTime(script.Name, startTime, validationContext)

	if not successfullyExecuted then
		local errorString =
			`Failed to execute body max cage distance check. Make sure all render meshes and their WrapTarget cage meshes exist, and try again.`
		if nil ~= validationContext.isServer and validationContext.isServer then
			-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
			-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
			-- which would mean the asset failed validation
			error(errorString)
		end
		Analytics.reportFailure(Analytics.ErrorType.validateBodyPartCage_FailedToExecute, nil, validationContext)
		return false, { errorString }
	end

	if maxCageDistance > GetFStringUGCValidationMaxCageDistance.asNumber() then
		Analytics.reportFailure(
			Analytics.ErrorType.validateBodyPartCage_VertsAreTooFarInFrontOfRenderMesh,
			nil,
			validationContext
		)

		local errorString = string.format(
			"A vertex was found on the %s's cage mesh that is %.2f studs away from the closest render mesh. %s studs is the maximum. Make the cage mesh more closely match the shape and size of the render mesh.",
			partCageWithMaxCageDistance,
			maxCageDistance,
			GetFStringUGCValidationMaxCageDistance.asString()
		)
		if getFFlagUGCValidationHyperlinksInCageQuality() then
			errorString = errorString
				.. "[Read more](https://create.roblox.com/docs/art/validation-errors#bodyCageMaxSize)"
		end

		return false, {
			errorString,
		}
	end
	return true
end

return ValidateAssetBodyPartCages
