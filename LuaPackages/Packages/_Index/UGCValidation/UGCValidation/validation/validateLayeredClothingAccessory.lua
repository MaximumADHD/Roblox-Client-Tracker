--!nonstrict
local root = script.Parent.Parent

local Types = require(root.util.Types)
local Analytics = require(root.Analytics)
local Constants = require(root.Constants)

local validateLCCageQuality = require(root.validation.validateLCCageQuality)
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

local validateTotalSurfaceArea = require(root.validation.validateTotalSurfaceArea)
local validateCoplanarIntersection = require(root.validation.validateCoplanarIntersection)
local validateMaxCubeDensity = require(root.validation.validateMaxCubeDensity)

local RigidOrLayeredAllowed = require(root.util.RigidOrLayeredAllowed)
local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)
local getEditableMeshFromContext = require(root.util.getEditableMeshFromContext)
local getEditableImageFromContext = require(root.util.getEditableImageFromContext)
local getExpectedPartSize = require(root.util.getExpectedPartSize)
local pcallDeferred = require(root.util.pcallDeferred)

local getFFlagUGCValidateCoplanarTriTestAccessory = require(root.flags.getFFlagUGCValidateCoplanarTriTestAccessory)
local getFFlagUGCLCQualityReplaceLua = require(root.flags.getFFlagUGCLCQualityReplaceLua)
local getFFlagUGCValidateMeshVertColors = require(root.flags.getFFlagUGCValidateMeshVertColors)
local getFFlagUGCValidateThumbnailConfiguration = require(root.flags.getFFlagUGCValidateThumbnailConfiguration)
local getFFlagUGCValidateLCCagesQuality = require(root.flags.getFFlagUGCValidateLCCagesQuality)
local getFFlagUGCValidationNameCheck = require(root.flags.getFFlagUGCValidationNameCheck)
local getFFlagUGCValidationShouldYield = require(root.flags.getFFlagUGCValidationShouldYield)
local getEngineFeatureUGCValidateEditableMeshAndImage =
	require(root.flags.getEngineFeatureUGCValidateEditableMeshAndImage)
local getEngineFeatureEngineUGCValidationMaxVerticesCollision =
	require(root.flags.getEngineFeatureEngineUGCValidationMaxVerticesCollision)
local getEngineFeatureEngineUGCValidationEnableGetValidationRules =
	require(root.flags.getEngineFeatureEngineUGCValidationEnableGetValidationRules)

local getFFlagUGCValidateTotalSurfaceAreaTestAccessory =
	require(root.flags.getFFlagUGCValidateTotalSurfaceAreaTestAccessory)
local getFFlagUGCValidateCageOrigin = require(root.flags.getFFlagUGCValidateCageOrigin)
local getFIntUGCValidateAccessoryMaxCageOrigin = require(root.flags.getFIntUGCValidateAccessoryMaxCageOrigin)

local maxAccessoryCageOrigin = if getFFlagUGCValidateCageOrigin()
	then getFIntUGCValidateAccessoryMaxCageOrigin() / 100
	else nil

local function validateLayeredClothingAccessory(validationContext: Types.ValidationContext): (boolean, { string }?)
	local instances = validationContext.instances
	local assetTypeEnum = validationContext.assetTypeEnum
	local isServer = validationContext.isServer
	local allowUnreviewedAssets = validationContext.allowUnreviewedAssets

	if not RigidOrLayeredAllowed.isLayeredClothingAllowed(assetTypeEnum) then
		Analytics.reportFailure(
			Analytics.ErrorType.validateLayeredClothingAccessory_AssetTypeNotAllowedAsLayeredClothing
		)
		return false,
			{
				string.format(
					"Asset type '%s' is not a layered clothing category. It can only be used with rigid accessories.",
					assetTypeEnum.Name
				),
			}
	end

	local assetInfo = Constants.ASSET_TYPE_INFO[assetTypeEnum]

	local success: boolean, reasons: any

	success, reasons = validateSingleInstance(instances, validationContext)
	if not success then
		return false, reasons
	end

	local instance = instances[1]

	local schema = createLayeredClothingSchema(assetInfo.attachmentNames)

	success, reasons = validateInstanceTree(schema, instance, validationContext)
	if not success then
		return false, reasons
	end

	if getFFlagUGCValidationNameCheck() and isServer then
		success, reasons = validateAccessoryName(instance)
		if not success then
			return false, reasons
		end
	end

	local validationResult = true
	reasons = {}

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshInfo = {
		fullName = handle:GetFullName(),
		fieldName = "MeshId",
		contentId = handle.MeshId,
		context = instance.Name,
	} :: Types.MeshInfo

	local hasMeshContent = meshInfo.contentId ~= nil and meshInfo.contentId ~= ""
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableMeshSuccess, editableMesh = getEditableMeshFromContext(handle, "MeshId", validationContext)
		if not getEditableMeshSuccess then
			if not meshInfo.contentId then
				hasMeshContent = false
				Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_NoMeshId)
				validationResult = false
				table.insert(reasons, {
					string.format(
						"Missing meshId on layered clothing accessory '%s'. Make sure you are using a valid meshId and try again.\n",
						instance.Name
					),
				})
			else
				Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh)
				return false,
					{
						string.format(
							"Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again.",
							instance.Name
						),
					}
			end
		end

		meshInfo.editableMesh = editableMesh
		hasMeshContent = true
	end

	local textureId = handle.TextureID
	local textureInfo = {
		fullName = handle:GetFullName(),
		fieldName = "TextureID",
		contentId = textureId,
	} :: Types.TextureInfo

	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		local getEditableImageSuccess, editableImage
		if textureId ~= "" then
			getEditableImageSuccess, editableImage = getEditableImageFromContext(handle, "TextureID", validationContext)
			if not getEditableImageSuccess then
				return false,
					{
						string.format(
							"Failed to load texture for layered clothing accessory '%s'. Make sure texture exists and try again.",
							instance.Name
						),
					}
			end

			textureInfo.editableImage = editableImage
		end
	else
		if isServer then
			local textureSuccess = true
			local meshSuccess
			local _canLoadFailedReason: any = {}
			if textureId ~= "" then
				textureSuccess, _canLoadFailedReason = validateCanLoad(textureId)
			end
			meshSuccess, _canLoadFailedReason = validateCanLoad(handle.MeshId)
			if not textureSuccess or not meshSuccess then
				-- Failure to load assets should be treated as "inconclusive".
				-- Validation didn't succeed or fail, we simply couldn't run validation because the assets couldn't be loaded.
				error(
					string.format(
						"Failed to load children assets (Meshes, Textures, etc.) for '%s'. Make sure the assets exist and try again.",
						instance.Name
					)
				)
			end
		end
	end

	local meshSizeSuccess, meshSize
	if getFFlagUGCValidationShouldYield() then
		meshSizeSuccess, meshSize = pcallDeferred(function()
			return getMeshSize(meshInfo)
		end, validationContext)
	else
		meshSizeSuccess, meshSize = pcall(getMeshSize, meshInfo)
	end

	if not meshSizeSuccess then
		Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_FailedToLoadMesh)
		return false,
			{
				string.format(
					"Failed to load mesh for layered clothing accessory '%s'. Make sure mesh exists and try again.",
					instance.Name
				),
			}
	end

	local meshScale
	if getEngineFeatureUGCValidateEditableMeshAndImage() then
		meshScale = getExpectedPartSize(handle, validationContext) / meshSize
	else
		meshScale = handle.Size / meshSize
	end

	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	local boundsInfo
	if getEngineFeatureEngineUGCValidationEnableGetValidationRules() then
		boundsInfo = assetInfo.bounds[attachment.Name]
	else
		boundsInfo = Constants.LC_BOUNDS
		if assetInfo.layeredClothingBounds and assetInfo.layeredClothingBounds[attachment.Name] then
			boundsInfo = assetInfo.layeredClothingBounds[attachment.Name]
		end
	end

	local failedReason: any = {}
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

	success, failedReason = validateAttributes(instance, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	success, failedReason = validateTextureSize(textureInfo, true, validationContext)
	if not success then
		table.insert(reasons, table.concat(failedReason, "\n"))
		validationResult = false
	end

	local partScaleType = handle:FindFirstChild("AvatarPartScaleType")
	if partScaleType and partScaleType:IsA("StringValue") then
		success, failedReason = validateScaleType(partScaleType)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
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
			table.insert(
				reasons,
				string.format(
					"Missing WrapLayer on layered clothing accessory %s. You need to create a child WrapLayer and try again.",
					instance.Name
				)
			)
			validationResult = false
		else
			success, failedReason = validateHSR(wrapLayer, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			if getFFlagUGCValidateCageOrigin() then
				Analytics.reportFailure(Analytics.ErrorType.validateLayeredClothingAccessory_CageOriginOutOfBounds)
				-- for layered clothing accessories there is no reason not to have the CageOrigin of the WrapLayer at 0,0,0 as the item should get
				-- fitted to the character's WrapTarget mesh regardless of the CageOrigin position. There is an exploit that if you have identical
				-- CageMesh and ReferenceMesh in the WrapLayer then your Accessory will not deform to the character's WrapTarget, then you can
				-- have a large CageOrigin Position to put Accessories far above the character. This check protects against that
				if wrapLayer.CageOrigin.Position.Magnitude > maxAccessoryCageOrigin then
					table.insert(
						reasons,
						string.format(
							"WrapLayer %s found under %s.%s has a CageOrigin position greater than %.2f. You need to set CageOrigin.Position to 0,0,0.",
							wrapLayer.Name,
							instance.Name,
							handle.Name,
							maxAccessoryCageOrigin
						)
					)
					validationResult = false
				end
			end
		end
	end

	local checkModeration = not isServer
	if allowUnreviewedAssets then
		checkModeration = false
	end
	if checkModeration then
		success, failedReason = validateModeration(instance, {}, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if hasMeshContent then
		if getFFlagUGCValidateTotalSurfaceAreaTestAccessory() then
			success, failedReason = validateTotalSurfaceArea(meshInfo, meshScale, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		success, failedReason = validateMeshBounds(
			handle,
			attachment,
			meshInfo,
			meshScale,
			boundsInfo,
			assetTypeEnum.Name,
			validationContext
		)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		success, failedReason = validateMeshTriangles(meshInfo, nil, validationContext)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		if getFFlagUGCValidateMeshVertColors() then
			success, failedReason = validateMeshVertColors(meshInfo, false, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		if getFFlagUGCValidateCoplanarTriTestAccessory() then
			success, failedReason = validateCoplanarIntersection(meshInfo, meshScale, validationContext)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		if getFFlagUGCLCQualityReplaceLua() then
			success, failedReason = validateUVSpace(meshInfo)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end
	end

	if getEngineFeatureEngineUGCValidationMaxVerticesCollision() then
		success, failedReason = validateMaxCubeDensity(meshInfo, validationContext, meshScale)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end
	end

	if getFFlagUGCValidateLCCagesQuality() then
		success, failedReason = validateLCCageQuality(instance, meshInfo, validationContext)
		if not success then
			for _, issue in failedReason do
				table.insert(reasons, issue)
			end
			validationResult = false
		end
	end

	return validationResult, reasons
end

return validateLayeredClothingAccessory
