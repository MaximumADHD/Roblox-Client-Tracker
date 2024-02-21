--!nonstrict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateHSR = require(root.validation.validateHSR)
local validateUVSpace = require(root.validation.validateUVSpace)
local validateCanLoad = require(root.validation.validateCanLoad)
local validateThumbnailConfiguration = require(root.validation.validateThumbnailConfiguration)
local validateAccessoryName = require(root.validation.validateAccessoryName)
local validateScaleType = require(root.validation.validateScaleType)

local validateOverlappingVertices = require(root.validation.validateOverlappingVertices)
local validateMisMatchUV = require(root.validation.validateMisMatchUV)
local validateCageMeshIntersection = require(root.validation.validateCageMeshIntersection)
local validateCageNonManifoldAndHoles = require(root.validation.validateCageNonManifoldAndHoles)
local validateFullBodyCageDeletion = require(root.validation.validateFullBodyCageDeletion)

local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)

local getFFlagUseUGCValidationContext = require(root.flags.getFFlagUseUGCValidationContext)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getFFlagUGCValidateAccessoriesScaleType = require(root.flags.getFFlagUGCValidateAccessoriesScaleType)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)

local function validateLayeredClothingAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	if not RigidOrLayeredAllowed.isLayeredClothingAllowed(assetTypeEnum) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing
		)
		return false, { "Asset type cannot be validated as Layered Clothing" }
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createLayeredClothingSchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
	} :: Types.MeshInfo

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
		if not getEditableMeshSuccess then
			return false, { "Failed to load mesh data" }
		end

		meshInfo.editableMesh = editableMesh
	end

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo
	local getEditableImageSuccess, editableImage

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		if textureId ~= "" then
			getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
			if not getEditableImageSuccess then
				return false, { "Failed to load texture data" }
			end

			textureInfo.editableImage = editableImage
		end
	end

	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshInfo)
	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh)
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = Constants.LC_BOUNDS
	if assetInfo.layeredClothingBounds and assetInfo.layeredClothingBounds[attachment.Name] then
		boundsInfo = assetInfo.layeredClothingBounds[attachment.Name]
	end

	local failedReason: any = {}
	local validationResult = true
	reasons = {}
	success, failedReason = validateMaterials(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateProperties(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTags(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateAttributes(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTextureSize(textureInfo, true, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	if getFFlagUGCValidateAccessoriesScaleType() then
		local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
		if partScaleType and partScaleType:IsA("StringValue") then
			success, failedReason = validateScaleType(partScaleType)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	if getFFlagUGCValidateThumbnailConfiguration() then
		success, failedReason = validateThumbnailConfiguration(instance, handle, meshInfo, meshScale)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	do
		local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")

		if wrapLayer == nil then
			Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoWrapLayer)
			table.insert(reasons, "Could not find WrapLayer!")
			validationResult = false
		else
			success, failedReason = validateHSR(wrapLayer, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		success, failedReason = validateModeration(instance, {})
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	success, failedReason =
		validateMeshBounds(handle, attachment, meshInfo, meshScale, boundsInfo, assetTypeEnum.Name, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateMeshTriangles(meshInfo, nil, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	if game:GetFastFlag("UGCValidateMeshVertColors") then
		success, failedReason = validateMeshVertColors(meshInfo, false, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if game:GetFastFlag("UGCLCQualityReplaceLua") then
		success, failedReason = validateUVSpace(meshInfo)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if game:GetFastFlag("UGCLCQualityValidation") then
		local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
		local innerCageId = wrapLayer.ReferenceMeshId
		local outerCageId = wrapLayer.CageMeshId

		local innerCageMeshInfo = {
			fullName = wrapLayer:GetFullName(),
			fieldName = "ReferenceMeshId",
			contentId = wrapLayer.ReferenceMeshId,
		} :: Types.MeshInfo

		local outerCageMeshInfo = {
			fullName = wrapLayer:GetFullName(),
			fieldName = "CageMeshId",
			contentId = wrapLayer.CageMeshId,
		} :: Types.MeshInfo

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			local getInnerCageSuccess, innerCageEditableMesh =
				getEditableMeshFromContext(wrapLayer, "ReferenceMeshId", validationContext)
			if not getInnerCageSuccess then
				return false, { "Failed to load mesh data" }
			end

			innerCageMeshInfo.editableMesh = innerCageEditableMesh
		end

		if getEngineFeatureUGCValidateEditableMeshAndImage() then
			local getOuterCageSuccess, outerCageEditableMesh =
				getEditableMeshFromContext(wrapLayer, "CageMeshId", validationContext)
			if not getOuterCageSuccess then
				return false, { "Failed to load mesh data" }
			end

			outerCageMeshInfo.editableMesh = outerCageEditableMesh
		end

		if innerCageId == "" then
			Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoInnerCageId)
			table.insert(reasons, "InnerCages must contain valid MeshId.")
			validationResult = false
		elseif outerCageId == "" then
			Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoOuterCageId)
			table.insert(reasons, "OuterCages must contain valid MeshId.")
			validationResult = false
		else
			success, failedReason = validateOverlappingVertices(innerCageMeshInfo, "InnerCage", validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = validateOverlappingVertices(outerCageMeshInfo, "OuterCage", validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = validateMisMatchUV(innerCageMeshInfo, outerCageMeshInfo)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = validateCageMeshIntersection(innerCageMeshInfo, outerCageMeshInfo, meshInfo)
			if not success then
				table.insert(reasons, "" .. table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
				validationResult = false
			end

			success, failedReason = validateCageNonManifoldAndHoles(innerCageMeshInfo, "InnerCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
				validationResult = false
			end

			success, failedReason = validateCageNonManifoldAndHoles(outerCageMeshInfo, "OuterCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
				validationResult = false
			end

			success, failedReason = validateFullBodyCageDeletion(innerCageMeshInfo, "InnerCage", validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = validateFullBodyCageDeletion(outerCageMeshInfo, "OuterCage", validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	return validationResult, reasons
end

local function DEPRECATED_validateLayeredClothingAccessory(
	instances: { Instance },
	assetTypeEnum: Enum.AssetType,
	isServer: boolean?,
	allowUnreviewedAssets: boolean?
): (boolean, { string }?)
	if not RigidOrLayeredAllowed.isLayeredClothingAllowed(assetTypeEnum) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing
		)
		return false, { "Asset type cannot be validated as Layered Clothing" }
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createLayeredClothingSchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance)
		if not success then
			return false, reasons
		end
	end

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshId = handle.MeshId
	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshId)
	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh)
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local textureId = handle.TextureID
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo = Constants.LC_BOUNDS
	if assetInfo.layeredClothingBounds and assetInfo.layeredClothingBounds[attachment.Name] then
		boundsInfo = assetInfo.layeredClothingBounds[attachment.Name]
	end

	if isServer then
		local textureSuccess = true
		local meshSuccess
		local _canLoadFailedReason: any = {}
		if textureId ~= "" then
			textureSuccess, _canLoadFailedReason = validateCanLoad(textureId)
		end
		meshSuccess, _canLoadFailedReason = validateCanLoad(meshId)
		if not textureSuccess or not meshSuccess then
			-- Failure to load assets should be treated as "inconclusive".
			-- Validation didn't succeed or fail, we simply couldn't run validation because the assets couldn't be loaded.
			error("Failed to load asset")
		end
	end

	local failedReason: any = {}
	local validationResult = true
	reasons = {}
	success, failedReason = validateMaterials(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateProperties(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTags(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateAttributes(instance)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = (validateTextureSize :: any)(textureId, true)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	if getFFlagUGCValidateAccessoriesScaleType() then
		local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
		if partScaleType and partScaleType:IsA("StringValue") then
			success, failedReason = validateScaleType(partScaleType)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	if getFFlagUGCValidateThumbnailConfiguration() then
		success, failedReason = validateThumbnailConfiguration(instance, handle, meshId, meshScale)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	do
		local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")

		if wrapLayer == nil then
			Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoWrapLayer)
			table.insert(reasons, "Could not find WrapLayer!")
			validationResult = false
		else
			success, failedReason = (validateHSR :: any)(wrapLayer)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		success, failedReason = (validateModeration :: any)(instance, {})
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if meshId == "" then
		Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoMeshId)
		table.insert(reasons, "Mesh must contain valid MeshId")
		validationResult = false
	else
		success, failedReason = (validateMeshBounds :: any)(
			handle,
			attachment,
			meshId,
			meshScale,
			boundsInfo,
			assetTypeEnum.Name
		)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		success, failedReason = (validateMeshTriangles :: any)(meshId)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		if game:GetFastFlag("UGCValidateMeshVertColors") then
			success, failedReason = (validateMeshVertColors :: any)(meshId, false)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		if game:GetFastFlag("UGCLCQualityReplaceLua") then
			success, failedReason = (validateUVSpace :: any)(meshId)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	if game:GetFastFlag("UGCLCQualityValidation") then
		local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
		local innerCageId = wrapLayer.ReferenceMeshId
		local outerCageId = wrapLayer.CageMeshId

		if innerCageId == "" then
			Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoInnerCageId)
			table.insert(reasons, "InnerCages must contain valid MeshId.")
			validationResult = false
		elseif outerCageId == "" then
			Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoOuterCageId)
			table.insert(reasons, "OuterCages must contain valid MeshId.")
			validationResult = false
		else
			success, failedReason = (validateOverlappingVertices :: any)(innerCageId, "InnerCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = (validateOverlappingVertices :: any)(outerCageId, "OuterCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = validateMisMatchUV(innerCageId, outerCageId)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = validateCageMeshIntersection(innerCageId, outerCageId, meshId)
			if not success then
				table.insert(reasons, "" .. table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
				validationResult = false
			end

			success, failedReason = validateCageNonManifoldAndHoles(innerCageId, "InnerCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
				validationResult = false
			end

			success, failedReason = validateCageNonManifoldAndHoles(outerCageId, "OuterCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
				validationResult = false
			end

			success, failedReason = (validateFullBodyCageDeletion :: any)(innerCageId, "InnerCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			success, failedReason = (validateFullBodyCageDeletion :: any)(outerCageId, "OuterCage")
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	return validationResult, reasons
end

return if getFFlagUseUGCValidationContext()
	then validateLayeredClothingAccessory
	else DEPRECATED_validateLayeredClothingAccessory :: never
