--[[
	check that the modified area of the outer cage is within the expected region according to the asset type being validated e.g a left shoe should be on the left leg/foot
]]

local UGCValidationService = game:GetService("UGCValidationService")

local root = script.Parent.Parent

local Analytics = require(root.Analytics)
local WrapTargetCageUVReferenceValues = require(root.WrapTargetCageUVReferenceValues)

local Types = require(root.util.Types)
local pcallDeferred = require(root.util.pcallDeferred)
local FailureReasonsAccumulator = require(root.util.FailureReasonsAccumulator)
local getMeshVerts = require(root.util.getMeshVerts)
local CollisionTestUtil = require(root.util.CollisionTestUtil)
local StringUtil = require(root.util.StringUtil)

local FIntUGCValidateExcludedUVModifyRequirements = game:DefineFastInt("UGCValidateExcludedUVModifyRequirements", 14)
local FIntUGCValidatePartUVModifyRequirements = game:DefineFastInt("UGCValidatePartUVModifyRequirements", 45)
local FIntUGCValidateRenderMeshInsideModifiedArea = game:DefineFastInt("UGCValidateRenderMeshInsideModifiedArea", 70)
local FStringUGCValidateModifiedAreaPaddingModifier =
	game:DefineFastString("UGCValidateModifiedAreaPaddingModifier", "1.1")

local modifiedAreaPadding = tonumber(FStringUGCValidateModifiedAreaPaddingModifier)

local ValidateModifiedCageArea = {}

type BodyArea = {
	allowedParts: { [string]: boolean? },
	mainParts: { [string]: boolean? },
}

local AllBodyAreas: { [Enum.AssetType]: BodyArea } = {
	[Enum.AssetType.LeftShoeAccessory] = {
		allowedParts = { -- the accessory should only have modified UVs for these body parts
			LeftFoot = true,
			LeftLowerLeg = true,
			LeftUpperLeg = true,
		},
		mainParts = { -- the accessory must modify most of the UVs of these body parts
			LeftFoot = true,
		},
	},

	[Enum.AssetType.RightShoeAccessory] = {
		allowedParts = {
			RightFoot = true,
			RightLowerLeg = true,
			RightUpperLeg = true,
		},
		mainParts = {
			RightFoot = true,
		},
	},
}

local function reportTestFailedToExecute(
	errorString: string,
	errorType: string,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	if nil ~= validationContext.isServer and validationContext.isServer then
		-- there could be many reasons that an error occurred, the asset is not necessarilly incorrect, we just didn't get as
		-- far as testing it, so we throw an error which means the RCC will try testing the asset again, rather than returning false
		-- which would mean the asset failed validation
		error(errorString)
	end
	Analytics.reportFailure(errorType, nil, validationContext)
	return false, { errorString }
end

local function gatherUVs(namedBodyParts: { [string]: boolean }): { Vector2 }
	local allUVsForBodyArea = {}
	for bodyPartName in namedBodyParts do
		local uVsForBodyPart =
			assert(WrapTargetCageUVReferenceValues[bodyPartName], "Body area not found in UV reference values")

		for _, uv in uVsForBodyPart do
			table.insert(allUVsForBodyArea, uv)
		end
	end
	return allUVsForBodyArea
end

-- we want the UVs for everything NOT in the bodyArea's allowedParts array
local function lazyGetUVsExcludedForAssetType(bodyArea: any): { Vector2 }
	if not bodyArea.uVsDisallowedForAssetType then
		local namedBodyParts: { [string]: boolean } = {}
		for bodyPartName in WrapTargetCageUVReferenceValues do
			if bodyArea.allowedParts[bodyPartName] then
				continue
			end
			namedBodyParts[bodyPartName :: string] = true
		end
		bodyArea.uVsDisallowedForAssetType = gatherUVs(namedBodyParts)
	end
	return bodyArea.uVsDisallowedForAssetType
end

-- we want the UVs for everything IN the bodyArea's allowedParts array
local function lazyGetUVsForAssetType(bodyArea: any): { Vector2 }
	if not bodyArea.uVsForAssetType then
		bodyArea.uVsForAssetType = gatherUVs(bodyArea.allowedParts)
	end
	return bodyArea.uVsForAssetType
end

-- we want the UVs for everything IN the bodyArea's mainParts array
local function lazyGetMainUVsForAssetType(bodyArea: any): { Vector2 }
	if not bodyArea.mainUVsForAssetType then
		bodyArea.mainUVsForAssetType = gatherUVs(bodyArea.mainParts)
	end
	return bodyArea.mainUVsForAssetType
end

--[[
	for shoes, this function calls a UGCValidationService function where it's calculated how many modified cage UVs are from body
	parts that we don't want this asset type to modify
]]
function ValidateModifiedCageArea.validateExcludedModifiedUVs(
	innerCageMeshInfo: Types.MeshInfo,
	innerCFrame: CFrame,
	outerCageMeshInfo: Types.MeshInfo,
	outerCFrame: CFrame,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local bodyArea =
		assert(AllBodyAreas[validationContext.assetTypeEnum :: Enum.AssetType], "bodyArea should be defined")

	local allExcludedUVsForBodyArea = lazyGetUVsExcludedForAssetType(bodyArea)
	if #allExcludedUVsForBodyArea == 0 then
		return true
	end

	local successfullyExecuted, numUniqueUVsInSet, totalModifiedUVs, numModifiedUVsInSet = pcallDeferred(function()
		return (UGCValidationService :: any):CalculateEditableMeshNumModifiedCageUVsInSet(
			allExcludedUVsForBodyArea,
			innerCageMeshInfo.editableMesh,
			innerCFrame,
			outerCageMeshInfo.editableMesh,
			outerCFrame
		)
	end, validationContext)

	if not successfullyExecuted then
		return reportTestFailedToExecute(
			"Failed to execute excluded modified cage UV check. Make sure both cage meshes exists and try again.",
			Analytics.ErrorType.validateExcludedModifiedCageUVs_FailedToExecute,
			validationContext
		)
	end

	assert(
		numUniqueUVsInSet == #allExcludedUVsForBodyArea,
		"all the UVs in allExcludedUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"
	)

	if totalModifiedUVs == 0 then
		return true -- other tests will catch this
	end

	local modifiedPercent = (numModifiedUVsInSet / totalModifiedUVs) * 100
	local areTooManyUVsModified = modifiedPercent > FIntUGCValidateExcludedUVModifyRequirements
	if areTooManyUVsModified then
		Analytics.reportFailure(
			Analytics.ErrorType.validateExcludedModifiedCageUVs_UnexpectedUVValue,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"%d%% of modified cage UVs in WrapLayer CageMesh (outer mesh) are outside the expected region of the body. For a %s no more than %d%% of the modified UVs can be outside the %s area. Move your asset to the correct area of the body.",
					math.floor(modifiedPercent),
					(validationContext.assetTypeEnum :: Enum.AssetType).Name,
					FIntUGCValidateExcludedUVModifyRequirements,
					StringUtil.keysToString(bodyArea.allowedParts, "/")
				),
			}
	end
	return true
end

--[[
	for shoes, this function calls a UGCValidationService function where it's calculated how many modified cage UVs are from the main
	area of the body that this asset type should modify
]]

function ValidateModifiedCageArea.validateMainModifiedUVs(
	innerCageMeshInfo: Types.MeshInfo,
	innerCFrame: CFrame,
	outerCageMeshInfo: Types.MeshInfo,
	outerCFrame: CFrame,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local bodyArea =
		assert(AllBodyAreas[validationContext.assetTypeEnum :: Enum.AssetType], "bodyArea should be defined")

	local allUVsForBodyArea = lazyGetMainUVsForAssetType(bodyArea)
	if #allUVsForBodyArea == 0 then
		return true
	end

	local successfullyExecuted, numUniqueUVsInSet, _, numModifiedUVsInSet = pcallDeferred(function()
		return (UGCValidationService :: any):CalculateEditableMeshNumModifiedCageUVsInSet(
			allUVsForBodyArea,
			innerCageMeshInfo.editableMesh,
			innerCFrame,
			outerCageMeshInfo.editableMesh,
			outerCFrame
		)
	end, validationContext)

	if not successfullyExecuted then
		return reportTestFailedToExecute(
			"Failed to execute main modified cage UV check. Make sure both cage meshes exists and try again.",
			Analytics.ErrorType.validateMainModifiedCageUVs_FailedToExecute,
			validationContext
		)
	end

	assert(
		numUniqueUVsInSet == #allUVsForBodyArea,
		"all the UVs in allUVsForBodyArea sent in to CalculateEditableMeshNumModifiedCageUVsInSet should be unique"
	)

	local modifiedPercent = (numModifiedUVsInSet / numUniqueUVsInSet) * 100
	local areEnoughUVsModified = modifiedPercent >= FIntUGCValidatePartUVModifyRequirements
	if not areEnoughUVsModified then
		Analytics.reportFailure(
			Analytics.ErrorType.validateMainModifiedCageUVs_TooFewModifiedUVsFound,
			nil,
			validationContext
		)
		return false,
			{
				string.format(
					"The WrapLayer CageMesh (outer mesh) for a %s must modify %d%% of the cage UVs in the %s area. Currently only %d%% are modified. Move your asset to the correct area of the body.",
					(validationContext.assetTypeEnum :: Enum.AssetType).Name,
					FIntUGCValidatePartUVModifyRequirements,
					StringUtil.keysToString(bodyArea.mainParts, "/"),
					math.floor(modifiedPercent)
				),
			}
	end
	return true
end

--get the bounding box of the modified area of the outer cage, then check that the render mesh is inside that bounding box
function ValidateModifiedCageArea.validateRenderMeshInsideModifiedOuterCageArea(
	renderMeshInfo: Types.MeshInfo,
	innerCageMeshInfo: Types.MeshInfo,
	innerCFrame: CFrame,
	outerCageMeshInfo: Types.MeshInfo,
	outerCFrame: CFrame,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local bodyArea =
		assert(AllBodyAreas[validationContext.assetTypeEnum :: Enum.AssetType], "bodyArea should be defined")

	local allUVsForBodyArea = lazyGetUVsForAssetType(bodyArea)
	if #allUVsForBodyArea == 0 then
		return true
	end

	local successfullyExecuted, modifiedAreaPosition, modifiedAreaSize = pcallDeferred(function()
		return (UGCValidationService :: any):CalculateEditableMeshModifiedCageBoundingBox(
			allUVsForBodyArea,
			innerCageMeshInfo.editableMesh,
			innerCFrame,
			outerCageMeshInfo.editableMesh,
			outerCFrame
		)
	end, validationContext)

	local renderMeshVerts = nil
	if successfullyExecuted then
		local _, vertsOpt
		successfullyExecuted, _, vertsOpt = getMeshVerts(renderMeshInfo, validationContext)
		if successfullyExecuted then
			if vertsOpt and #(vertsOpt :: { Vector3 }) > 0 then
				renderMeshVerts = vertsOpt :: { Vector3 }
			else
				successfullyExecuted = false
			end
		end
	end

	if not successfullyExecuted then
		return reportTestFailedToExecute(
			"Failed to execute testing render mesh inside bounding box of outer cage modified area. Make sure both cage meshes and render mesh exist and try again.",
			Analytics.ErrorType.validateRenderMeshInsideModifiedOuterCageArea_FailedToExecute,
			validationContext
		)
	end

	modifiedAreaSize = modifiedAreaSize * modifiedAreaPadding

	local numVertsInModifiedArea = 0
	for _, vertPos in renderMeshVerts do
		if CollisionTestUtil.pointInAxisAlignedBounds(vertPos, modifiedAreaPosition, modifiedAreaSize) then
			numVertsInModifiedArea = numVertsInModifiedArea + 1
		end
	end

	local inAreaPercent = (numVertsInModifiedArea / #renderMeshVerts) * 100
	local areEnoughVertsInTheModifiedArea = inAreaPercent >= FIntUGCValidateRenderMeshInsideModifiedArea
	if not areEnoughVertsInTheModifiedArea then
		Analytics.reportFailure(
			Analytics.ErrorType.validateRenderMeshInsideModifiedOuterCageArea_RenderMeshNotPositionedCorrectly,
			nil,
			validationContext
		)
		local allowedPartsAsString = StringUtil.keysToString(bodyArea.allowedParts, "/")
		return false,
			{
				string.format(
					"Only %d%% of the render mesh verts are situated in the modified %s area of the WrapLayer CageMesh (outer mesh). %d%% is required. Move the render mesh to be within the modified %s area of the WrapLayer CageMesh (outer mesh).",
					math.floor(inAreaPercent),
					allowedPartsAsString,
					FIntUGCValidateRenderMeshInsideModifiedArea,
					allowedPartsAsString
				),
			}
	end
	return true
end

function ValidateModifiedCageArea.validate(
	innerCageMeshInfo: Types.MeshInfo,
	innerCFrame: CFrame,
	outerCageMeshInfo: Types.MeshInfo,
	outerCFrame: CFrame,
	renderMeshInfo: Types.MeshInfo,
	validationContext: Types.ValidationContext
): (boolean, { string }?)
	local bodyArea = if validationContext.assetTypeEnum
		then AllBodyAreas[validationContext.assetTypeEnum :: Enum.AssetType]
		else nil
	if not bodyArea then
		return true
	end
	assert(bodyArea.allowedParts, "bodyArea.allowedParts should be defined")
	assert(bodyArea.mainParts, "bodyArea.mainParts should be defined")

	local reasonsAccumulator = FailureReasonsAccumulator.new()
	reasonsAccumulator:updateReasons(
		ValidateModifiedCageArea.validateExcludedModifiedUVs(
			innerCageMeshInfo,
			innerCFrame,
			outerCageMeshInfo,
			outerCFrame,
			validationContext
		)
	)
	reasonsAccumulator:updateReasons(
		ValidateModifiedCageArea.validateMainModifiedUVs(
			innerCageMeshInfo,
			innerCFrame,
			outerCageMeshInfo,
			outerCFrame,
			validationContext
		)
	)
	reasonsAccumulator:updateReasons(
		ValidateModifiedCageArea.validateRenderMeshInsideModifiedOuterCageArea(
			renderMeshInfo,
			innerCageMeshInfo,
			innerCFrame,
			outerCageMeshInfo,
			outerCFrame,
			validationContext
		)
	)
	return reasonsAccumulator:getFinalResults()
end

return ValidateModifiedCageArea
