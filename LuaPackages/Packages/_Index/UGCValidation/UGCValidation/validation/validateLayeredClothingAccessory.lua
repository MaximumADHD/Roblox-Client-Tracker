--!nonstrict
local root = script.Parent.Parent

local Constants = require(root.Constants)

local validateInstanceTree = require(root.validation.validateInstanceTree)
local validateMeshTriangles = require(root.validation.validateMeshTriangles)
local validateModeration = require(root.validation.validateModeration)
local validateMaterials = require(root.validation.validateMaterials)
local validateTags = require(root.validation.validateTags)
local validateMeshBounds = require(root.validation.validateMeshBounds)
local validateTextureSize = require(root.validation.validateTextureSize)
local validateHandleSize = require(root.validation.validateHandleSize)
local validateProperties = require(root.validation.validateProperties)
local validateAttributes = require(root.validation.validateAttributes)
local validateMeshVertColors = require(root.validation.validateMeshVertColors)
local validateSingleInstance = require(root.validation.validateSingleInstance)
local validateHSR = require(root.validation.validateHSR)
local validateUVSpace = require(root.validation.validateUVSpace)
local validateCanLoad = require(root.validation.validateCanLoad)

local validateOverlappingVertices = require(root.validation.validateOverlappingVertices)
local validateMisMatchUV = require(root.validation.validateMisMatchUV)
local validateCageMeshIntersection = require(root.validation.validateCageMeshIntersection)
local validateCageNonManifoldAndHoles = require(root.validation.validateCageNonManifoldAndHoles)
local validateFullBodyCageDeletion = require(root.validation.validateFullBodyCageDeletion)

local createLayeredClothingSchema = require(root.util.createLayeredClothingSchema)
local getAttachment = require(root.util.getAttachment)
local getMeshSize = require(root.util.getMeshSize)

local getFFlagUGCValidateBodyParts = require(root.flags.getFFlagUGCValidateBodyParts)

local function buildAllowedAssetTypeIdSet()
	local allowedAssetTypeIdSet = {}
	for match in string.gmatch(game:GetFastString("UGCLCAllowedAssetTypeIds"), "[^,]+") do
		local value: number? = tonumber(match)
		if value ~= nil then
			allowedAssetTypeIdSet[value] = true
		end
	end
	return allowedAssetTypeIdSet
end

local function validateLayeredClothingAccessory(instances: {Instance}, assetTypeEnum: Enum.AssetType, isServer: boolean, allowUnreviewedAssets: boolean): (boolean, {string}?)
	local allowedAssetTypeIdSet = buildAllowedAssetTypeIdSet()
	if not allowedAssetTypeIdSet[assetTypeEnum.Value] then
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

	local handle = instance:FindFirstChild("Handle") :: MeshPart
	local meshId = handle.MeshId
	local meshSizeSuccess, meshSize = pcall(getMeshSize, meshId)
	if not meshSizeSuccess then
		return false, { "Failed to read mesh" }
	end

	local meshScale = handle.Size / meshSize
	local textureId = handle.TextureID
	local attachment = getAttachment(handle, assetInfo.attachmentNames)

	if game:GetFastFlag("UGCCheckCanLoadAssets") and game:GetEngineFeature("EnableCanLoadAssetFunction") and isServer then
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

	if game:GetFastFlag("UGCReturnAllValidations") then
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

		success, failedReason = validateTextureSize(textureId, true)
		if not success then
			table.insert(reasons, table.concat(failedReason, "\n"))
			validationResult = false
		end

		if game:GetFastFlag("UGCValidateHSR") then
			local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
			success, failedReason = validateHSR(wrapLayer)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		local checkModeration = not isServer
		if game:GetFastFlag("UGCCheckCanLoadAssets") and allowUnreviewedAssets then
			checkModeration = false
		end
		if checkModeration then
			success, failedReason = validateModeration(instance, {})
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end
		end

		if meshId == "" then
			table.insert(reasons, "Mesh must contain valid MeshId")
			validationResult = false
		else
			success, failedReason = validateMeshBounds(
				handle,
				attachment,
				meshId,
				meshScale,
				assetTypeEnum,
				Constants.LC_BOUNDS,
				(getFFlagUGCValidateBodyParts() and assetTypeEnum.Name or "")
			)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			if game:GetFastFlag("UGCValidateHandleSize") then
				success, failedReason = validateHandleSize(handle, meshId, meshScale)
				if not success then
					table.insert(reasons, table.concat(failedReason, "\n"))
					validationResult = false
				end
			end

			success, failedReason = validateMeshTriangles(meshId)
			if not success then
				table.insert(reasons, table.concat(failedReason, "\n"))
				validationResult = false
			end

			if game:GetFastFlag("UGCValidateMeshVertColors") then
				success, failedReason = validateMeshVertColors(meshId)
				if not success then
					table.insert(reasons, table.concat(failedReason, "\n"))
					validationResult = false
				end
			end

			if game:GetFastFlag("UGCLCQualityReplaceLua") then
				success, failedReason = validateUVSpace(meshId)
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

			if innerCageId == ""  then
				table.insert(reasons, "InnerCages must contain valid MeshId.")
				validationResult = false
			elseif outerCageId == "" then
				table.insert(reasons, "OuterCages must contain valid MeshId.")
				validationResult = false
			else
				success, failedReason = validateOverlappingVertices(innerCageId, "InnerCage")
				if not success then
					table.insert(reasons, table.concat(failedReason, "\n"))
					validationResult = false
				end

				success, failedReason = validateOverlappingVertices(outerCageId, "OuterCage")
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
					table.insert(reasons, ""..table.concat(failedReason, "\n\n")) -- extra line to split the potential multiple reaons
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

				success, failedReason = validateFullBodyCageDeletion(innerCageId, "InnerCage")
				if not success then
					table.insert(reasons, table.concat(failedReason, "\n"))
					validationResult = false
				end

				success, failedReason = validateFullBodyCageDeletion(outerCageId, "OuterCage")
				if not success then
					table.insert(reasons, table.concat(failedReason, "\n"))
					validationResult = false
				end
			end
		end

		return validationResult, reasons
	else
		success, reasons = validateMaterials(instance)
		if not success then
			return false, reasons
		end

		success, reasons = validateProperties(instance)
		if not success then
			return false, reasons
		end

		success, reasons = validateTags(instance)
		if not success then
			return false, reasons
		end

		success, reasons = validateAttributes(instance)
		if not success then
			return false, reasons
		end

		success, reasons = validateMeshBounds(
			handle,
			attachment,
			meshId,
			meshScale,
			assetTypeEnum,
			Constants.LC_BOUNDS,
			(getFFlagUGCValidateBodyParts() and assetTypeEnum.Name or "")
		)
		if not success then
			return false, reasons
		end

		success, reasons = validateTextureSize(textureId, true)
		if not success then
			return false, reasons
		end

		if game:GetFastFlag("UGCValidateHandleSize") then
			success, reasons = validateHandleSize(handle, meshId, meshScale)
			if not success then
				return false, reasons
			end
		end

		success, reasons = validateMeshTriangles(meshId)
		if not success then
			return false, reasons
		end

		if game:GetFastFlag("UGCValidateMeshVertColors") then
			success, reasons = validateMeshVertColors(meshId)
			if not success then
				return false, reasons
			end
		end

		if game:GetFastFlag("UGCValidateHSR") then
			local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
			success, reasons = validateHSR(wrapLayer)
			if not success then
				return false, reasons
			end
		end

		if not isServer then
			success, reasons = validateModeration(instance, {})
			if not success then
				return false, reasons
			end
		end

		if game:GetFastFlag("UGCLCQualityReplaceLua") then
			success, reasons = validateUVSpace(meshId)
			if not success then
				return false, reasons
			end
		end

		if game:GetFastFlag("UGCLCQualityValidation") then
			local wrapLayer = handle:FindFirstChildOfClass("WrapLayer")
			local innerCageId = wrapLayer.ReferenceMeshId
			local outerCageId = wrapLayer.CageMeshId
			success, reasons = validateOverlappingVertices(innerCageId, "InnerCage")
			if not success then
				return false, reasons
			end

			success, reasons = validateOverlappingVertices(outerCageId, "OuterCage")
			if not success then
				return false, reasons
			end

			success, reasons = validateMisMatchUV(innerCageId, outerCageId)
			if not success then
				return false, reasons
			end

			success, reasons = validateCageMeshIntersection(innerCageId, outerCageId, meshId)
			if not success then
				return false, reasons
			end

			success, reasons = validateCageNonManifoldAndHoles(innerCageId, "InnerCage")
			if not success then
				return false, reasons
			end

			success, reasons = validateCageNonManifoldAndHoles(outerCageId, "OuterCage")
			if not success then
				return false, reasons
			end

			success, reasons = validateFullBodyCageDeletion(innerCageId, "InnerCage")
			if not success then
				return false, reasons
			end

			success, reasons = validateFullBodyCageDeletion(outerCageId, "OuterCage")
			if not success then
				return false, reasons
			end
		end

		return true
	end

end

return validateLayeredClothingAccessory
